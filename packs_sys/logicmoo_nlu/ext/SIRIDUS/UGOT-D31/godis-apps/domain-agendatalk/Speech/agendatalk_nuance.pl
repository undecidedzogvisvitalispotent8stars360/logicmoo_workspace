/*************************************************************************

         name: agendatalk_nuance
      version: 
  description: GoDiS-AOD specification file
       author: Rebecca Jonson
 
*************************************************************************/

:- ensure_loaded( search_paths).

/*========================================================================
   Select datatypes

   Speficies a list of datatypes to be loaded. Each item DataType in the
   list corresponds to a file DataType.pl in the search path.
========================================================================*/

selected_datatypes([string, move, atom, integer, real, bool, record,
set, stack, stackset, queue, oqueue, pair, godis_datatypes]).


/*========================================================================
   Select modules

   Each module spec has the form Predicate:FileName, where Predicate is the
   unary predicate used to call the module, and FileName.pl is the a file
   in the search path containing the module specification
========================================================================*/

selected_modules([ %input : input_textscore,
		   input : input_nuance_score_oaa,
		   interpret: interpret_simple,
		   update : update,
		   select : select,
		   generate : generate_agendatalk,
		   output : output_nuance_basic_oaa
		   %output : output_simpletext
		   ]).

% dme_module/1 - spefifies which modules have unlimited access to TIS

dme_modules([ update, select]). 


/*========================================================================
   Select resources

   Speficies a list of resources to be loaded. Each item
   ResourceFile in the list corresponds to a  a file ResourceFile.pl
   in the search path. The file defines a resource object with the same
   name as the file.
========================================================================*/

selected_resources( [asrg_agenda_english,
		     oaag,
		     
		     lexicon_agenda_english,
		     domain_agenda,
		     device_agenda

		    ] ).

selected_macro_file( godis_macros ).

/*========================================================================
   operations to execute on TIS reset
========================================================================*/

reset_operations( [ set( program_state, run),
		    set( language, Lang ),
		    set( asr_grammar,$$dash2underscore(asrg-Domain-Lang) ),
		    set( lexicon, $$dash2underscore(lexicon-Domain-Lang) ),
		    set( devices,
			 record([agenda=device_agenda 
				 ]) ),
		    set( domain, $$dash2underscore(domain-Domain) ),
		    push(/private/agenda,greet),
		    push(/private/agenda,do(top)),
		    push( /shared/actions, top ) ]):-
	flag( language, Lang ),
	flag( domain, Domain ).
