:- module(config_swish_network, []).
:- use_module(library(settings)).
:- use_module(library(http/http_host)).
:- use_module(library(http/http_path)).

/* <module> Set HTTP access parameters

The settings below are needed  for   actions  that  require a publically
accessible URL for the SWISH server if   this address cannot be resolved
automatically.
*/

:- if(gethostname(gitlab)).
:- set_setting_default(http:public_host,   'logicmoo.org').
:- set_setting_default(http:public_port,   3020).
:- set_setting_default(http:public_scheme, http).
:- else.
%:- set_setting_default(http:public_host,   localhost).
%:- set_setting_default(http:public_port,   3050).
%:- set_setting_default(http:public_scheme, http)..
:- endif.

:- multifile http:location/3.
:- dynamic   http:location/3.

% Rebase the server, such that the  home  is   not  on  /,  but (in this
% example) on /swish/ This is needed  if   you  want to access the swish
% server under a specific location using a  proxy. It *does not work* to
% proxy /my-swish-app to http://machine.running.swish/

:- if(gethostname(gitlab)).
http:location(root, '/', []).
http:location(swish, '/swish', []).
%http:location(root, '/root-swish-mirror', []).
:- else.
http:location(root, '/', []).
http:location(swish, '/swish', []).
:- endif.
