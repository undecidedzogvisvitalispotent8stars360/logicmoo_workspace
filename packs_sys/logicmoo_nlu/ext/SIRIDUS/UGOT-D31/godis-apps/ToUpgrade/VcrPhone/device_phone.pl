%%% telephone: Ericsson DECT 260
%%% by Alexander Berman, July 2001

%:- module( telephone, [ var_set/2,
%			consult_tp/2,
%			issue_command/2 ] ).
:- module( device_phone, [ dev_set/2,
			dev_get/2,
			dev_do/2,
			dev_query/2] ).

:- use_module( library(lists), [ member/2, select/3 ] ).
:- use_module( library(system), [ datime/1 ] ).
:- use_module( library(charsio), [ format_to_chars/3 ] ).

:- dynamic variable_value/2.

%%% Environment mode (simulation or real)

environment_mode(simulation).

%%% Actions (action(+Name,+Parameters))

action( 'SetBaseStationLanguage', [ base_station_language ] ).
action( 'SetHandsetLanguage', [ handset_language ] ).
action( 'AnsweringMachineOn', [] ).
action( 'AnsweringMachineOff', [] ).
action( 'AutoAnswerOn', [] ).
action( 'AutoAnswerOff', [] ).
action( 'SetRingerToneOrMelody', [ signal_type, tone_or_melody ] ).
action( 'SetHandsetRingVolume', [ ring_volume ] ).
action( 'SetEarpieceVolume', [ earpiece_volume ] ).
action( 'IncreaseEarpieceVolume', [] ).
action( 'DecreaseEarpieceVolume', [] ).
action( 'IncreaseHandsetRingVolume', [] ).
action( 'DecreaseHandsetRingVolume', [] ).
action( 'AddPhonebookEntry', [ phonebook_name_to_add,
			       phonebook_number_to_add ] ).
action( 'DeletePhonebookEntry', [ phonebook_entry_to_delete ] ).
action( 'CallByPhonebookName', [ phonebook_name_to_find ] ).

%%% Variable default values

default_value( base_station_language, english ).
default_value( handset_language, english ).
default_value( answering_machine_onoff, on ).
default_value( autoanswer_onoff, off ).
default_value( ring_volume, '4' ).
default_value( earpiece_volume, '4' ).
default_value( tone_or_melody(_), mixed ).
default_value( phonebook_entries, [] ).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

init_tp :-
	environment_mode(simulation),
	user:flag( visualize_devices, yes ),
	!,
	use_module(library(visualization)),
	gfx_set_initial_values(device_phone,tp).

init_tp.


%consult_tp( phonebook_entry(Name), found(Number) ) :-
%	dev_get( phonebook_entries, Entries ),
%	member( Name:Number, Entries ),
%	!.
dev_query( phonebook_entry(Name), found(Number) ) :-
	dev_get( phonebook_entries, Entries ),
	member( Name:Number, Entries ),
	!.

%consult_tp( phonebook_entry(_), not_found ).
dev_query( phonebook_entry(_), not_found ).


%consult_tp( val(Var), Val ) :-
%	dev_get( Var, Val ).

dev_set(ID,Value1) :-
	environment_mode(simulation),
	interpret_pragmatically(ID,Value1,Value),
	try(retract(variable_value(ID,_))),
	assert(variable_value(ID,Value)),
	%format(' *** ~a <- ~w\n',[ID,Value]),
	( user:flag(visualize_devices,yes) ->
	    gfx_set_node_value(tp,ID,Value) ;
	    true ).

dev_get(ID,Value) :-
	environment_mode(simulation),
	( variable_value(ID,CurrentValue) ->
	    Value = CurrentValue
	;
	    default_value(ID,Value)
	)
	%,format(' *** ~a -> ~w\n',[ID,Value])
	.

dev_do(Command,Commitments) :-
	action(Command,Vars),
	set_command_variables(Vars,Commitments,Values),
	( environment_mode(simulation) ->
	    output_upnp(Command,Values) ;
	    true ),
	perform_command(Command).

set_command_variables([],_,[]).
set_command_variables([Var|Vars],Commitments,[Val|Vals]) :-
	Com =.. [ Var, Val ],
	member(Com,Commitments),
	dev_set(Var,Val),
	set_command_variables(Vars,Commitments,Vals).

perform_command( 'IncreaseEarpieceVolume' ) :-
	!,
	dev_get( earpiece_volume, V ),
	( V == '7' ->
	    V1 = '7' ;
	    add(V,1,V1) ),
	dev_set( earpiece_volume, V1 ).

perform_command( 'DecreaseEarpieceVolume' ) :-
	!,
	dev_get( earpiece_volume, V ),
	( V == '0' ->
	    V1 = '0' ;
	    add(V,-1,V1) ),
	dev_set( earpiece_volume, V1 ).

perform_command( 'IncreaseHandsetRingVolume' ) :-
	!,
	dev_get( ring_volume, V ),
	( V == '7' ->
	    V1 = '7' ;
	    add(V,1,V1) ),
	dev_set( ring_volume, V1 ).

perform_command( 'DecreaseHandsetRingVolume' ) :-
	!,
	dev_get( ring_volume, V ),
	( V == '0' ->
	    V1 = '0' ;
	    add(V,-1,V1) ),
	dev_set( ring_volume, V1 ).

perform_command( 'SetRingerToneOrMelody' ) :-
	!,
	dev_get( signal_type, SignalType ),
	dev_get( tone_or_melody, ToneOrMelody ),
	dev_set( tone_or_melody(SignalType), ToneOrMelody ).

perform_command( 'AddPhonebookEntry' ) :-
	!,
	dev_get( phonebook_entries, EntriesOld ),
	dev_get( phonebook_name_to_add, Name ),
	dev_get( phonebook_number_to_add, Number ),
	dev_set( phonebook_entries, [Name:Number|EntriesOld] ).

perform_command( 'DeletePhonebookEntry' ) :-
	!,
	dev_get( phonebook_entries, EntriesOld ),
	dev_get( phonebook_entry_to_delete, Name ),
	select( Name:_, EntriesOld, EntriesNew ),
	dev_set( phonebook_entries, EntriesNew ).

perform_command( 'AutoAnswerOn' ) :-
	!,
	dev_set( autoanswer_onoff, on ).
perform_command( 'AutoAnswerOff' ) :-
	!,
	dev_set( autoanswer_onoff, off ).


perform_command( _ ) :- true.

add(A,D,B) :-
	atom_chars(A,AC),
	number_chars(AN,AC),
	BN is AN + D,
	number_chars(BN,BC),
	atom_chars(B,BC).

try(G) :-
	( G -> true ; true ).

to_number(Atom,Number) :-
	number_atom(Atom),
	atom_chars(Atom,Cs),
	number_chars(Number,Cs).

number_atom(A) :-
	atomic(A),
	\+ number(A).

interpret_pragmatically(_,V,V).

date_field(N,[0'0,C]) :-
	N < 10,
	!,
	format_to_chars('~d',[N],[C]).

date_field(N,Cs) :-
	format_to_chars('~d',[N],Cs).

output_upnp(Command,Parameters) :-
	Term =.. [ Command | Parameters ],
	format('\n[UPnP] ~w\n\n',[Term]).

:- init_tp.
