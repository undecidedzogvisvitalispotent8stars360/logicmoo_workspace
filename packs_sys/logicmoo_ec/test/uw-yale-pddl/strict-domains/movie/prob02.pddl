(DEFINE (PROBLEM MOVIE-6)
   (:DOMAIN MOVIE-DOM)
   (:OBJECTS C1 C2 C3 C4 C5 C6 - CHIPS
             D1 D2 D3 D4 D5 D6 - DIP
             P1 P2 P3 P4 P5 P6 - POP
             Z1 Z2 Z3 Z4 Z5 Z6 - CHEESE
             K1 K2 K3 K4 K5 K6 - CRACKERS)
   (:INIT (NOT (MOVIE-REWOUND))
          (NOT (COUNTER-AT-TWO-HOURS))
          (NOT (COUNTER-AT-ZERO)))
   (:GOAL (AND (MOVIE-REWOUND)
               (COUNTER-AT-ZERO)
               (HAVE-CHIPS)
               (HAVE-DIP)
               (HAVE-POP)
               (HAVE-CHEESE)
               (HAVE-CRACKERS))))