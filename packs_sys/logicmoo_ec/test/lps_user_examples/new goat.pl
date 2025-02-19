:- expects_dialect(lps).

% wolf, goat, cabbage and farmer are objects and are located at the south margin.
% locations are north and south margins.
% 
maxTime(10).
actions transport(_,_,__).
fluents loc(_, _).

initially
loc(wolf,south),
loc(goat, south),
loc(cabbage, south),
loc(farmer, south).

% All objects on the south margin, except the farmer, must move to the north margin
if   loc(Object, south),
	Object \= farmer % Doesn't work without this condition
then   makeLoc(Object, north) from T2 to T3.

% to move an object to a location, other than the farmer, 
% first move the farmer to the other location, then ...

/* Doesn't work with this more general version:
makeLoc(Object, Location1) from T1 to T3  if
	Object \= farmer, 
    loc(Object, Location2) at T1, Location1 \= Location2,
	makeLoc(farmer, Location2) from T1 to T2,
    loc(Object, Location2) at T2,
	transport(Object, Location2, Location1) from T2 to T3.
*/

makeLoc(Object, north) from T1 to T3  if
	Object \= farmer, 
%  loc(Object, south) at T1, % goes into an infinite loop, transporting the goat back and forth
	makeLoc(farmer, south) from T1 to T2,
	loc(Object, south) at T2,
	transport(Object, south, north) from T2 to T3.

/* Doesn't work with this more general version:
makeLoc(Object, Location) from T to T if
	loc(Object, Location) at T.
*/
makeLoc(farmer, Location) from T to T if
	loc(farmer, Location) at T.

% farmer crosses with object.
makeLoc(farmer, Location1)   from T1 to T2 if
	loc(farmer, Location2) at T1, Location1 \= Location2,
	loc(Object,Location2) at T1,
	Object \= farmer,
	transport(Object, Location2, Location1) from T1 to T2.

% farmer crosses empty-handed
makeLoc(farmer, Location1)   from T1 to T2 if	
	loc(farmer, Location2) at T1, Location1 \= Location2,
	transport(farmer, Location2, Location1) from T1 to T2.

transport(Object, Location1, Location2) updates Location1 to Location2 in loc(Object, Location1).
transport(Object, Location1, Location2) updates Location1 to Location2 in loc(farmer, Location1).

false transport(Object1, Location1, Location2), 
transport(Object2, Location1, Location2) , Object1 \= Object2.

% Works with these "prosepective" contraints on fluents only.
false loc(goat,L), loc(wolf,L), not loc(farmer,L).  
false loc(goat,L), loc(cabbage,L), not loc(farmer,L).


/** <examples>
?- godfa(Graph).
?- go.
*/