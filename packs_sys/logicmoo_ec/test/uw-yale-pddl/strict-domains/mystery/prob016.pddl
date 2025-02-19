(DEFINE (PROBLEM MYSTY-16)
   (:DOMAIN MYSTERY-TYPED)
   (:OBJECTS ARUGULA WURST LAMB HAROSET ONION HAM BACON OKRA MUFFIN
             TOMATO FLOUNDER CHICKEN - FOOD
             SATISFACTION CURIOSITY ENTERTAINMENT LOVE UNDERSTANDING
             ACHIEVEMENT - PLEASURE
             HANGOVER ANGINA SCIATICA ANGER LACERATION JEALOUSY ANXIETY
             GRIEF BOILS DEPRESSION PROSTATITIS DREAD ABRASION
             LONELINESS SCIATICA-1 LACERATION-2 DREAD-3 ABRASION-4
             HANGOVER-8 BOILS-5 ANGINA-6 ANXIETY-7 LONELINESS-16 - PAIN
             ALSACE SURREY - PROVINCE
             NEPTUNE SATURN VULCAN VENUS - PLANET)
   (:INIT (EATS BACON MUFFIN)
          (EATS MUFFIN HAM)
          (CRAVES ENTERTAINMENT HAM)
          (EATS FLOUNDER HAROSET)
          (EATS HAROSET ONION)
          (LOCALE ARUGULA SURREY)
          (CRAVES ANGINA WURST)
          (ORBITS NEPTUNE SATURN)
          (CRAVES LONELINESS BACON)
          (LOCALE WURST ALSACE)
          (CRAVES PROSTATITIS HAM)
          (CRAVES JEALOUSY HAROSET)
          (CRAVES ANXIETY HAROSET)
          (EATS WURST HAROSET)
          (EATS HAM OKRA)
          (HARMONY LOVE SATURN)
          (ORBITS SATURN VULCAN)
          (EATS HAM ONION)
          (CRAVES HANGOVER ARUGULA)
          (EATS LAMB OKRA)
          (HARMONY UNDERSTANDING SATURN)
          (LOCALE HAROSET ALSACE)
          (LOCALE FLOUNDER ALSACE)
          (EATS LAMB TOMATO)
          (LOCALE CHICKEN SURREY)
          (CRAVES HANGOVER-8 TOMATO)
          (EATS ONION HAROSET)
          (EATS HAM TOMATO)
          (EATS HAM MUFFIN)
          (CRAVES LONELINESS-16 CHICKEN)
          (EATS CHICKEN FLOUNDER)
          (CRAVES ANGINA-6 FLOUNDER)
          (CRAVES ABRASION BACON)
          (EATS ONION HAM)
          (CRAVES BOILS-5 FLOUNDER)
          (EATS OKRA HAM)
          (EATS MUFFIN CHICKEN)
          (CRAVES BOILS ONION)
          (EATS TOMATO ARUGULA)
          (EATS OKRA BACON)
          (EATS CHICKEN WURST)
          (CRAVES SCIATICA LAMB)
          (EATS FLOUNDER TOMATO)
          (CRAVES LACERATION-2 OKRA)
          (LOCALE BACON SURREY)
          (CRAVES UNDERSTANDING TOMATO)
          (LOCALE MUFFIN ALSACE)
          (EATS ARUGULA ONION)
          (EATS FLOUNDER CHICKEN)
          (CRAVES ABRASION-4 MUFFIN)
          (LOCALE ONION SURREY)
          (ORBITS VULCAN VENUS)
          (LOCALE OKRA ALSACE)
          (CRAVES ANGER LAMB)
          (CRAVES SCIATICA-1 OKRA)
          (EATS WURST CHICKEN)
          (LOCALE TOMATO ALSACE)
          (EATS HAROSET WURST)
          (EATS CHICKEN HAM)
          (CRAVES ACHIEVEMENT FLOUNDER)
          (CRAVES DREAD-3 MUFFIN)
          (EATS TOMATO HAM)
          (CRAVES DEPRESSION HAM)
          (HARMONY SATISFACTION SATURN)
          (LOCALE LAMB ALSACE)
          (EATS ARUGULA TOMATO)
          (HARMONY ACHIEVEMENT VENUS)
          (CRAVES ANXIETY-7 FLOUNDER)
          (CRAVES LOVE BACON)
          (CRAVES CURIOSITY LAMB)
          (EATS BACON OKRA)
          (EATS MUFFIN BACON)
          (CRAVES SATISFACTION ARUGULA)
          (HARMONY CURIOSITY VENUS)
          (EATS CHICKEN MUFFIN)
          (EATS HAROSET FLOUNDER)
          (CRAVES LACERATION HAROSET)
          (EATS HAM CHICKEN)
          (EATS ONION ARUGULA)
          (CRAVES GRIEF ONION)
          (LOCALE HAM SURREY)
          (EATS OKRA LAMB)
          (CRAVES DREAD BACON)
          (HARMONY ENTERTAINMENT SATURN)
          (ATTACKS ALSACE SURREY)
          (EATS TOMATO LAMB)
          (EATS TOMATO FLOUNDER))
   (:GOAL (AND (CRAVES LONELINESS LAMB)
               (CRAVES DREAD ARUGULA)
               (CRAVES HANGOVER-8 ARUGULA))))