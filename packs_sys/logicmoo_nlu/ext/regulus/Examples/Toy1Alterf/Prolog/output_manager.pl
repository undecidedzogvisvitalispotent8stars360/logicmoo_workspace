
:- module(output_manager,
	[abstract_action_to_action/2]
    ).

%======================================================================

:- use_module(library(lists)).

:- use_module('$REGULUS/PrologLib/utilities').

%======================================================================

% OUTPUT MANAGEMENT: ABSTRACT ACTION TO CONCRETE ACTION

abstract_action_to_action(say(AbstractResponse), say_string(String)) :-
	perform_output_generation(AbstractResponse, String),
	!.

perform_output_generation(AbstractAbstractAction, OutputString) :-
	generation_grammar(AbstractAbstractAction, OutputWords, []),
	join_with_spaces(OutputWords, OutputAtom),
	atom_chars(OutputAtom, OutputString),
	!.
perform_output_generation(_AbstractAbstractAction, _OutputString) :-
	format('~N~nUnable to formulate concrete response.~n', []),
	fail.

generation_grammar(no) --> ['no'].
generation_grammar(unable_to_interpret) --> ['sorry that doesn\'t make sense'].
generation_grammar(ambiguous) --> ['sorry, that\'s ambiguous'].

generation_grammar(device(Device, Location, _OnOff, Intensity)) -->
	generation_grammar(device(Device)),
	['in'],
	generation_grammar(location(Location)),
	['is'],
	generation_grammar(intensity(Intensity)).

generation_grammar(device(light)) --> ['the light'].
generation_grammar(device(fan)) --> ['the fan'].

generation_grammar(location(kitchen)) --> ['the kitchen'].
generation_grammar(location(living_room)) --> ['the living room'].

generation_grammar(intensity(0)) --> ['off'].
generation_grammar(intensity(100)) --> ['on'].
generation_grammar(intensity(Other)) -->
	{ number(Other), 0 < Other, Other < 100 },
	['dimmed'].
