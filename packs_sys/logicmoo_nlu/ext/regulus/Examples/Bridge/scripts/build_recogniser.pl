
% Compile the main Regulus code
:- compile('$REGULUS/Prolog/load').

% Compile Regulus grammar to Nuance
:- regulus_batch('$REGULUS/Examples/Bridge/scripts/bridge.cfg',
		 ["EBL_GRAMMAR_PROBS", "NUANCE_COMPILE_WITH_PCFG"]).

:- halt.


