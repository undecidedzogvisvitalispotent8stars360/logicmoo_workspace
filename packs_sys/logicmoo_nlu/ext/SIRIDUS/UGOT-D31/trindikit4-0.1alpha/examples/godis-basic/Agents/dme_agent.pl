% Trindikit DME agent for use with godis-basic
% contains TIS and modules interpret,update,select and generate
% David Hjelm 0507

:-use_module('../../../core/prolog/trindikit').
:-ensure_loaded(app_search_paths).


resources([ lexicon_travel_english, domain_travel, database_travel ]).

%datatypes, including resource interfaces
datatypes([ participant, string, move, atom, integer, bool, record, set,
	    stack, stackset, assocset, program_state, godis_datatypes,
	    
	    %resource interfaces:
	    lexicon, domain, database ] ).

%the modules used
modules([ interpret : interpret_simple,
	  update : update,
	  select : select,
	  generate : generate_simple ] ).

%load file containing IS type definition infostate_variable_of_type/2
:-ensure_loaded(library(is_def)).

%the module interface variable definitions:
mivs( [ input : string,
	output : string,
	latest_speaker : participant,
	latest_moves : set(move),
	next_moves : set(move),
	program_state : program_state ] ).

%the resource interface variable definitions:
rivs( [ lexicon : lexicon,
	domain : domain,
	database : database ] ).

reset_ops(Domain,Lang, [ set( program_state, run),
			set( lexicon, $$dash2underscore(lexicon-Domain-Lang) ),
			set( database, $$dash2underscore(database-Domain) ),
			set( domain, $$dash2underscore(domain-Domain) ),
			push(/private/agenda,greet) ]).



run:-

	resources( Rs ),
	datatypes( Ds ),
	modules( Ms ),
	mivs( MIVs ),
	rivs( RIVs ),
	infostate_variable_of_type( ISVar, ISType ),
	reset_ops( travel, english, ResetOps ),

	setprop( resources, Rs ),
	setprop( modules, Ms),
	setprop( tis, yes ),
	setprop( tis-datatype_files, Ds ),
	setprop( tis-mivs, MIVs ),
	setprop( tis-rivs, RIVs ),
	setprop( tis-infostate, ISVar:ISType ),
	setprop( tis-reset_ops, ResetOps ),

	setprop(oaa-libdir,'$OAA_HOME/src/oaalib/prolog'),
	setprop(oaa-name, dme),
	setprop(oaa,yes),
	
	oaa_slave.