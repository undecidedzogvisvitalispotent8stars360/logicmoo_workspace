%Resource interface file for GoDiS upnp devices

:- multifile is_resource_type/1,resource_relation/2, resource_relation_type/2,
	resource_operation/4, resource_operation_type/4.
:- discontiguous resource_relation/2, resource_relation_type/2,
	resource_operation/4, resource_operation_type/4.
/*----------------------------------------------------------------------
     device
----------------------------------------------------------------------*/
is_recource_type(upnp_dev).


resource_relation( dev_get, [ Dev, Var, VarVal ] ) :-
	Dev : dev_get( Var, Val ),
	VarVal =.. [ Var, Val ].
resource_relation_type( dev_get, [upnp_dev, _, _]).

% resource_relation( dev_query, [ Dev, Query, Answer ] ) :-
% 	Dev : dev_query( Query, Answer ).
% resource_relation_type( dev_query, [device, _, answer]).


%DH 21/3-2003 - to allow for parameters in device queries
resource_relation( dev_query, [Dev, Query, set(PropList), Answer ] ) :-
	Dev : dev_query( Query, PropList, Answer ).
resource_relation_type( dev_query, [upnp_dev, _ , set(prop), answer]).



resource_relation( valid_parameter, [ Dev, Prop] ) :-
	Dev : valid_parameter( Prop ).
resource_relation_type( valid_parameter, [upnp_dev, prop ]).


resource_operation( dev_set, Dev, [ Var, Val ], Dev ) :-
	Dev : dev_set( Var, Val ).
resource_operation_type( dev_set, upnp_dev, [ _, _], upnp_dev ).

resource_operation( dev_do, Dev, [ Action, set(PropList) ], Dev ) :-
	Dev : dev_do( Action, PropList ).
resource_operation_type( dev_do, upnp_dev, [ action, set(prop) ], upnp_dev ).
