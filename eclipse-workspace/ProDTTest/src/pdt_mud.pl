:- module(pdt_mud,[

	]).

:- if(\+ exists_source(library(logicmoo_utils))).
:- attach_packs.
:- endif.


% ==============================================
% Add Pack Directories
% ==============================================
:- use_module(library(prolog_pack)).
:- multifile(user:file_search_path/2).
:-   dynamic(user:file_search_path/2).
dir_from0(Rel,Y):-
    ((getenv('LOGICMOO_WS',Dir);
      prolog_load_context(directory,Dir);
      'w:/opt/logicmoo_workspace/'=Dir; 
      '~/logicmoo_workspace'=Dir;
      '/opt/logicmoo_workspace/'=Dir;
      fail)),
    absolute_file_name(Rel,Y,[relative_to(Dir),file_type(directory),file_errors(fail)]),
    exists_directory(Y),!.
add_pack_path0(Rel):-
   dir_from0(Rel,Y),
   (( \+ user:file_search_path(pack,Y)) ->asserta(user:file_search_path(pack,Y));true).
:- add_pack_path0(packs_sys).
:- add_pack_path0(packs_usr).
:- add_pack_path0(packs_web).
:- add_pack_path0(packs_xtra).
:- add_pack_path0(packs_lib).
:- initialization(attach_packs,now).


% :- attach_packs.
:- pack_list_installed.

% :- use_module(library(logicmoo_utils)).
:- consult(library(prologmud_sample_games/run_mud_server)).
