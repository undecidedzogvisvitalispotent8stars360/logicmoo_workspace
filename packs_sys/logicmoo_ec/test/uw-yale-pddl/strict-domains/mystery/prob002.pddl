(DEFINE (PROBLEM MYSTY-2)
   (:DOMAIN MYSTERY-TYPED)
   (:OBJECTS POPOVER PISTACHIO PEAR PAPAYA POTATO - FOOD
             EXCITEMENT - PLEASURE
             LONELINESS GRIEF BOILS SCIATICA ANGER - PAIN
             ARIZONA - PROVINCE
             PLUTO MARS JUPITER VULCAN - PLANET)
   (:INIT (LOCALE PEAR ARIZONA)
          (CRAVES SCIATICA PAPAYA)
          (EATS POTATO PAPAYA)
          (EATS PEAR PISTACHIO)
          (EATS POPOVER PISTACHIO)
          (CRAVES LONELINESS POPOVER)
          (CRAVES GRIEF PISTACHIO)
          (CRAVES BOILS PEAR)
          (LOCALE POPOVER ARIZONA)
          (CRAVES ANGER POTATO)
          (ORBITS PLUTO MARS)
          (LOCALE PISTACHIO ARIZONA)
          (LOCALE POTATO ARIZONA)
          (EATS PAPAYA POTATO)
          (HARMONY EXCITEMENT VULCAN)
          (ORBITS MARS JUPITER)
          (EATS PISTACHIO POPOVER)
          (EATS POTATO PEAR)
          (EATS PISTACHIO PEAR)
          (ORBITS JUPITER VULCAN)
          (CRAVES EXCITEMENT PAPAYA)
          (EATS PEAR PAPAYA)
          (EATS POTATO POPOVER)
          (EATS PAPAYA PEAR)
          (EATS POPOVER POTATO)
          (LOCALE PAPAYA ARIZONA)
          (EATS PEAR POTATO))
   (:GOAL (AND (CRAVES LONELINESS POPOVER))))