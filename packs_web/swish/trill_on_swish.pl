/*  Part of SWISH

    Author:        Jan Wielemaker
    E-mail:        J.Wielemaker@vu.nl
    WWW:           http://www.swi-prolog.org
    Copyright (c)  2014-2017, VU University Amsterdam
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions
    are met:

    1. Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in
       the documentation and/or other materials provided with the
       distribution.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
    FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
    COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
    INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
    BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
    LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
    ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
    POSSIBILITY OF SUCH DAMAGE.

    Changes by:    Riccardo Zese
    E-mail:        riccardo.zese@unife.it
*/

:- module(swish_app,
	  [
	  ]).
:- use_module(library(pengines)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(option)).
:- use_module(library(apply)).
:- use_module(library(settings)).

:- use_module(lib/messages).
:- use_module(lib/paths).
:- use_module(lib/config, []).
:- use_module(lib/page, []).
:- use_module(lib/storage).
:- use_module(lib/include).
:- use_module(lib/swish_csv).
:- use_module(lib/examples).
:- use_module(lib/profiles).
:- use_module(lib/highlight).
:- use_module(lib/markdown).
:- use_module(lib/chat, []).
:- use_module(lib/template_hint, []).


		 /*******************************
		 *	       CORS		*
		 *******************************/

% By default, enable CORS

:- set_setting_default(http:cors, [*]).


		 /*******************************
		 *         LOCAL CONFIG		*
		 *******************************/

%!	load_config
%
%	Load files from config-enabled if  present. Currently loads from
%	a single config-enabled directory, either  found locally or from
%	the swish directory.

load_config :-
	absolute_file_name(config_enabled(.), Path,
			   [ file_type(directory),
			     access(read),
			     file_errors(fail)
			   ]), !,
	atom_concat(Path, '/*.pl', Pattern),
	expand_file_name(Pattern, Files),
	maplist(ensure_loaded, Files).
load_config.

:- initialization(load_config, now).


		 /*******************************
		 *	      CONFIG		*
		 *******************************/

:- multifile
	swish_config:config/2,
	swish_config:source_alias/2.

%%	swish_config:config(?Config, ?Value) is nondet.
%
%	All solutions of this predicate are  available in the JavaScript
%	object config.swish.config. Config must be an  atom that is also
%	a valid JavaScript identifier. Value  must   be  a value that is
%	valid for json_write_dict/2. Most configurations  are also saved
%	in the application preferences. These   are  marked [P]. Defined
%	config parameters:
%
%	  - show_beware
%	  [P] If `true`, show the *Beware* modal dialog on startup
%	  - tabled_results
%	  [P] If `true`, check the _table results_ checkbox by default.
%	  - application
%	  Name of the Pengine application.
%	  - csv_formats
%	  [P] CSV output formats offered. For example, ClioPatria
%	  defines this as [rdf,prolog]. The first element is default.
%	  - community_examples
%	  Allow marking saved programs as example.  If marked, the
%	  programs are added to the Examples menu.
%	  - public_access
%	  If lib/authenticate.pl is loaded and this flag is `true`,
%	  _all_ access to SWISH demands authentication.  If false,
%	  only running queries and saving files is restricted. Note
%	  that this flag has no effect if no authentication module is
%	  loaded.
%	  - include_alias
%	  Alias for searching files for `:- include(Alias(Name)).`
%	  - ping
%	  Ping pengine status every N seconds.  Updates sparkline
%	  chart with stack usage.
%	  - notebook
%	  Dict holding options for notebooks.
%	  - chat
%	  Activate the chat interface

% Allow other code to overrule the defaults from this file.
term_expansion(swish_config:config(Config, _Value), []) :-
	clause(swish_config:config(Config, _), _).

swish_config:config(show_beware,        false).
swish_config:config(tabled_results,     false).
swish_config:config(application,        swish).
swish_config:config(csv_formats,        [prolog]).
swish_config:config(community_examples, false).
swish_config:config(public_access,      false).
swish_config:config(include_alias,	example).
swish_config:config(ping,		10).
swish_config:config(notebook,		_{eval_script: true}).
swish_config:config(chat,		true).

%%	swish_config:source_alias(Alias, Options) is nondet.
%
%	Specify access for files below a given _alias_. Options define
%
%	  - access(Access)
%	  One of `read` or `both`.  Default is `read`.
%	  - if(Condition)
%	  Provide additional conditions.  Defined conditions are:
%	    - loaded
%	    Only provide access to the file if it is loaded.


% setup HTTP session management
:- use_module(lib/session).


                 /*******************************
                 *   CREATE SWISH APPLICATION   *
                 *******************************/

:- multifile
	pengines:prepare_module/3.

:- pengine_application(swish).
:- use_module(swish:lib/render).
:- use_module(swish:lib/trace).
:- use_module(swish:lib/projection).
:- use_module(swish:lib/jquery).
:- use_module(swish:lib/dashboard).
:- use_module(swish:lib/swish_debug).
:- use_module(swish:library(pengines_io)).
:- use_module(swish:library(solution_sequences)).
:- use_module(swish:library(aggregate)).
:- if(exists_source(library(tabling))).
:- use_module(swish:library(tabling)).
:- endif.

pengines:prepare_module(Module, swish, _Options) :-
	pengines_io:pengine_bind_io_to_html(Module).

% Additional sandboxing rules.
:- use_module(lib/flags).

% Libraries that are nice to have in SWISH, but cannot be loaded
% because they use directives that are considered unsafe.  We load
% them here, so they only need to be imported, which is just fine.

:- use_module(library(clpfd), []).
:- use_module(library(clpb), []).
:- use_module(lib/swish_chr, []).

% load rendering modules

:- use_module(swish(lib/render/sudoku),	  []).
:- use_module(swish(lib/render/chess),	  []).
:- use_module(swish(lib/render/table),	  []).
:- use_module(swish(lib/render/codes),	  []).
:- use_module(swish(lib/render/svgtree),  []).
:- use_module(swish(lib/render/graphviz), []).
:- use_module(swish(lib/render/c3),	  []).
:- use_module(swish(lib/render/url),	  []).
:- use_module(swish(lib/render/bdd),	  []).

:- use_module(library(trill)).
:- use_module(library(clpb)).

