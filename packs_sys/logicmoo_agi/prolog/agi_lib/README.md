

The logicmoo "scaling" system

We define scaling as the ability to 

In a very detailed verbose world that contains lots of data that (at least in the moment) is irrealivant towards solving some particular problem 
and still being able to detect to some level of detail the exact facts needed towards solving some problem.

In AI, this is related to problems of detecting realivancy.

In LOGICMOO we propose a special solution.  This solution, before even _fully_ tried, had been rejected by most projects due to 
due to technical truths, technical myths and some philosophical grounds.  
Because of the rejections will mankind even know if it would work or not?

In the above, I qualified my statment with "fully" due to there has been some lightwight tire kicking of solution that had failed.
Between the philosophic arguments and publically narrated failures that have become "sound bytes", 
So it unlikey anyone else will "go there" build off of or to even try out our hypothesis!

Worse even, is current philosophical rejection there is an implied "there must be a better hypothetical solution".
There has been a handfull of very popular alternate solutions.. however so far they have not panned out depsite millions of scientific hours on them.
(These alternate solutions are popular in machine leanring and neural nets,  The include Propositional Attitute adjustments and attention based theories)

We do not "not use these theories" but we offer what I think is the best implementation of those theories

In a very detailed verbose world that contains lots of data that (at least in the moment) is irrealivant towards solving some particular problem 
and are still being able to detect to some level of detail the exact facts needed towards solving some problem.

In LOGICMOO, we imagine for the moment there is world that contains the exact level of detail needed.
By this I mean our AGI system works from that world, for that moment.
It is able to compare that imagined world (which is built top down) with the real world which seems built from the bottom up.

The example we will use is tic-tac-toe being played in PrologMUD:

In order to play the game the robotic agent has must move colored stones on and off a table with 3 x 3 regions
The robot has 5 blue stones in its inventory
The human has 5 red stones in its inventory
The way the game is played is each player takes turns placing stones on one of the nine regions on the table
Neighter player may remove stones one placed on the table
Whomever is the first player to have 3 stones in any combination of up/down left/right or diagonally in any dirrection wins
The robots goal is to be the winner
There can only be one winner
the robot knows the rules
the robot already knows how to put it's stones on the table
the player gets to go first

We have purposely made this easy as possible except for:

the robot sees the world thru a noisey precepton based protocal
there are other objects in the room that may move arround and the human may try to distract the robot by doing things like talking
the human may try to cheat and not folow the rules
the robot must wait for the other player to place a stone before it does
the robot may place its stones anywhere but the player has to wait for the robot's stone to be placed on the table
the robot must be in the same room that the table is in to place stones on the table


More Features of the Test / Implementation:

the robot may take advice about where to place the stone
the robot knows the rules
The robot knows the that winning and losing are different
it has to recognise that it and the human are players in the game
The robot has to hypothesize about what the other player will do during their turn and knows if the other player has the chance to win the robot will not lose the robot must model this in some mental structures
For instance it must imagine spatially the concepts of diagonal, horizontal and vertical and how that will change over time
The robot must keep a model in its mind of the the tic-tac-toe game and relate it to the table it is looking at

There are many ways to code this:

We could have code this in several ways but first we wanted to see what would be done 
 if the robot already instinctually was able to play the game
 vs the robot had to learn the game:
     by listening to the player
     by watching others
 What if things changed and the robot goal was to be the loser?











_by_users
re_enumerate_agent_goals
expand_to_other_implicit_goals

observe_objectively
observe_subjectively

paraphrase objectively
paraphrase subjectively

rationalize objectively
rationalize subjectively

accomidate subjectively
accomidate objectively


Self-reaction - Reactions to one�s performance can be motivating.
If progress is deemed acceptable, then one will have a feeling of self-efficacy with regards to continuing, and will be motivated towards the achievement of their goal.
A negative self evaluation may also be motivating in that one may desire to work harder providing that they consider the goal as valuable.
Self reaction also allows a person to re-evaluate their goals in conjunction with their attainments (Bandura, 1989).
If a person has achieved a goal, they are likely to re-evaluate and raise the standard (goal); whereas, if a person has not achieved the goal they are likely to re-evaluate and lower the standard (goal) to an achievable goal.
Self-efficacy - One�s belief in the likelihood of goal completion can be motivating in itself.
The idea of self-efficacy has received the most attention from scholars and researchers and thus will be the primary topic of this wiki page and will be discussed in more detail in the section.
rationalize: attempt to explain or justify (one's own or another's behavior or attitude) with logical, plausible reasons, even if these are not true or appropriate.
observe accomidate One contribution of rationalization theory is that it implies additional logical restrictions on psychological constraints.
We show that rationalization theory implies that if an alternative is psychologically feasible in a superset then it must also be feasible in any subset that contains it.
Moreover, any specification of psychological constraints that satisfies this property can be generated as the consequence off some appropriately selected set of rationales that are asymmetric and transitive.
As a result, rationalization theory allows conclusive inferences about preferences even when psychological constraints are entirely unobservable.
Basic rationalization theory allows a conclusive inference of preference follows only from a violation of WARP.
It is precisely when standard theory leads to a contradictory inference of preferences that rationalization theory leads to a conclusive inference of preference.
Further inferences are possible if preferences are assumed to be orders.
In that case it is sometimes possible to uniquely determine a preference order even in the presence of multiple violations of WARP.
In the appendix we provide a list of observed anomalies which may be consistent with rationalization theory.
Returning to the example of Synder�s discrimination study, we show that rationalization theory alone is insufficient to permit the inference of handicapped aversion.
We show that the inference of handicapped aversion requires not only the assumption that decision makers have preference orders but also some specific ad hoc assumptions about what choices Dee can rationalize.
Specifically, it requires the ad-hoc (but natural) assumption that Dee can rationalize watching movie 1 with a person in a wheelchair rather than watching movie 2 alone.
Hence, even partial knowledge of rationales can provide additional insight into preferences.
We fully characterize the inferences of preferences that must follow from rationalization theory aided by ad-hoc provisos on psychological constraints.
In a discussion section following the presentation of formal results we discuss potential methods for ascertaining information about agent�s rationales 


some(Action) - Contains - some(Action)
some(Action) - Contains - some(Goal)
some(Action) - Contains - some(Narrative)
some(Action) - Contains - some(Percept)
some(Action) - Contains - some(State)
some(Action) - Disables - some(Action)
some(Action) - Disables - some(Goal)
some(Action) - Disables - some(Narrative)
some(Action) - Disables - some(Percept)
some(Action) - Disables - some(State)
some(Action) - Enables - some(Action)
some(Action) - Enables - some(Goal)
some(Action) - Enables - some(Narrative)
some(Action) - Enables - some(Percept)
some(Action) - Enables - some(State)
some(Action) - SequencesTo - some(Action)
some(Action) - SequencesTo - some(Goal)
some(Action) - SequencesTo - some(Narrative)
some(Action) - SequencesTo - some(Percept)
some(Action) - SequencesTo - some(State)

some(Goal) - Contains - some(Action)
some(Goal) - Contains - some(Goal)
some(Goal) - Contains - some(Narrative)
some(Goal) - Contains - some(Percept)
some(Goal) - Contains - some(State)
some(Goal) - Disables - some(Action)
some(Goal) - Disables - some(Goal)
some(Goal) - Disables - some(Narrative)
some(Goal) - Disables - some(Percept)
some(Goal) - Disables - some(State)
some(Goal) - Enables - some(Action)
some(Goal) - Enables - some(Goal)
some(Goal) - Enables - some(Narrative)
some(Goal) - Enables - some(Percept)
some(Goal) - Enables - some(State)
some(Goal) - SequencesTo - some(Action) %
some(Goal) - SequencesTo - some(Goal)
some(Goal) - SequencesTo - some(Narrative) %
some(Goal) - SequencesTo - some(Percept)
some(Goal) - SequencesTo - some(State)

some(Narrative) - Contains - some(Action)
some(Narrative) - Contains - some(Goal)
some(Narrative) - Contains - some(Narrative)
some(Narrative) - Contains - some(Percept)
some(Narrative) - Contains - some(State)
some(Narrative) - Disables - some(Action)
some(Narrative) - Disables - some(Goal)
some(Narrative) - Disables - some(Narrative)
some(Narrative) - Disables - some(Percept)
some(Narrative) - Disables - some(State)
some(Narrative) - Enables - some(Action)
some(Narrative) - Enables - some(Goal)
some(Narrative) - Enables - some(Narrative)
some(Narrative) - Enables - some(Percept)
some(Narrative) - Enables - some(State)
some(Narrative) - SequencesTo - some(Action)
some(Narrative) - SequencesTo - some(Goal)
some(Narrative) - SequencesTo - some(Narrative)
some(Narrative) - SequencesTo - some(Percept)
some(Narrative) - SequencesTo - some(State)
some(Percept) - Contains - some(Action)
some(Percept) - Contains - some(Goal)
some(Percept) - Contains - some(Narrative)
some(Percept) - Contains - some(Percept)
some(Percept) - Contains - some(State)
some(Percept) - Disables - some(Action)
some(Percept) - Disables - some(Goal)
some(Percept) - Disables - some(Narrative)
some(Percept) - Disables - some(Percept)
some(Percept) - Disables - some(State)
some(Percept) - Enables - some(Action)
some(Percept) - Enables - some(Goal)
some(Percept) - Enables - some(Narrative)
some(Percept) - Enables - some(Percept)
some(Percept) - Enables - some(State)
some(Percept) - SequencesTo - some(Action)
some(Percept) - SequencesTo - some(Goal)
some(Percept) - SequencesTo - some(Narrative)
some(Percept) - SequencesTo - some(Percept)
some(Percept) - SequencesTo - some(State)
some(State) - Contains - some(Action)
some(State) - Contains - some(Goal)
some(State) - Contains - some(Narrative)
some(State) - Contains - some(Percept)
some(State) - Contains - some(State)
some(State) - Disables - some(Action)
some(State) - Disables - some(Goal)
some(State) - Disables - some(Narrative)
some(State) - Disables - some(Percept)
some(State) - Disables - some(State)
some(State) - Enables - some(Action)
some(State) - Enables - some(Goal)
some(State) - Enables - some(Narrative)
some(State) - Enables - some(Percept)
some(State) - Enables - some(State)
some(State) - SequencesTo - some(Action)
some(State) - SequencesTo - some(Goal)
some(State) - SequencesTo - some(Narrative)
some(State) - SequencesTo - some(Percept)
some(State) - SequencesTo - some(State)
