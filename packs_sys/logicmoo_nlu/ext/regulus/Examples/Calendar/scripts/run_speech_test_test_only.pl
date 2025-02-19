
% Compile the main Regulus code
:- compile('$REGULUS/Prolog/load').

% Load stuff, split corpus, run batch speech test on in-coverage data
:- regulus_batch('$REGULUS/Examples/Calendar/scripts/calendar.cfg',
		 ["EBL_LOAD",
		  "LOAD_DIALOGUE",
		  "SPLIT_SPEECH_CORPUS .MAIN test in_coverage_test out_of_coverage_test",
		  "BATCH_DIALOGUE_SPEECH in_coverage_test"]).

:- halt.


