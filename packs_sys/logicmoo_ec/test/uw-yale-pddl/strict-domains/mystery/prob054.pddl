(DEFINE (PROBLEM STRIPS-MYSTY-13)
   (:DOMAIN MYSTERY-STRIPS)
   (:OBJECTS OKRA TOFU HAM SCALLOP SHRIMP HAMBURGER PAPAYA HOTDOG
             TUNA ENTERTAINMENT STIMULATION TRIUMPH LEARNING
             EXCITEMENT CURIOSITY INTOXICATION HANGOVER GRIEF ANGINA ANXIETY
             LACERATION JEALOUSY ANGER SCIATICA PROSTATITIS BOILS DEPRESSION
             DREAD ABRASION ALSACE QUEBEC MORAVIA MANITOBA MERCURY PLUTO
             URANUS EARTH)
   (:INIT (FOOD OKRA)
          (FOOD TOFU)
          (FOOD HAM)
          (FOOD SCALLOP)
          (FOOD SHRIMP)
          (FOOD HAMBURGER)
          (FOOD PAPAYA)
          (FOOD HOTDOG)
          (FOOD TUNA)
          (PLEASURE ENTERTAINMENT)
          (PLEASURE STIMULATION)
          (PLEASURE TRIUMPH)
          (PLEASURE LEARNING)
          (PLEASURE EXCITEMENT)
          (PLEASURE CURIOSITY)
          (PLEASURE INTOXICATION)
          (PAIN HANGOVER)
          (PAIN GRIEF)
          (PAIN ANGINA)
          (PAIN ANXIETY)
          (PAIN LACERATION)
          (PAIN JEALOUSY)
          (PAIN ANGER)
          (PAIN SCIATICA)
          (PAIN PROSTATITIS)
          (PAIN BOILS)
          (PAIN DEPRESSION)
          (PAIN DREAD)
          (PAIN ABRASION)
          (PROVINCE ALSACE)
          (PROVINCE QUEBEC)
          (PROVINCE MORAVIA)
          (PROVINCE MANITOBA)
          (PLANET MERCURY)
          (PLANET PLUTO)
          (PLANET URANUS)
          (PLANET EARTH)
          (HARMONY INTOXICATION URANUS)
          (EATS SCALLOP TOFU)
          (CRAVES DEPRESSION HOTDOG)
          (CRAVES TRIUMPH HAM)
          (CRAVES BOILS PAPAYA)
          (HARMONY STIMULATION PLUTO)
          (LOCALE TOFU QUEBEC)
          (HARMONY EXCITEMENT EARTH)
          (CRAVES ANXIETY SCALLOP)
          (LOCALE TUNA MANITOBA)
          (LOCALE SHRIMP MORAVIA)
          (CRAVES JEALOUSY SHRIMP)
          (CRAVES CURIOSITY HOTDOG)
          (EATS PAPAYA OKRA)
          (EATS HAM TUNA)
          (EATS TUNA HAM)
          (CRAVES ANGER SHRIMP)
          (HARMONY ENTERTAINMENT URANUS)
          (CRAVES ANGINA HAM)
          (CRAVES GRIEF TOFU)
          (LOCALE SCALLOP MORAVIA)
          (EATS TOFU HAMBURGER)
          (CRAVES STIMULATION TOFU)
          (EATS HOTDOG PAPAYA)
          (LOCALE HOTDOG ALSACE)
          (CRAVES EXCITEMENT PAPAYA)
          (EATS PAPAYA HOTDOG)
          (EATS HOTDOG HAM)
          (CRAVES PROSTATITIS HAMBURGER)
          (HARMONY TRIUMPH URANUS)
          (CRAVES DREAD TUNA)
          (HARMONY LEARNING PLUTO)
          (EATS HOTDOG SHRIMP)
          (EATS TOFU SCALLOP)
          (CRAVES SCIATICA HAMBURGER)
          (CRAVES INTOXICATION TUNA)
          (ATTACKS QUEBEC MORAVIA)
          (EATS SHRIMP SCALLOP)
          (ORBITS MERCURY PLUTO)
          (CRAVES LEARNING HAMBURGER)
          (ATTACKS ALSACE QUEBEC)
          (ORBITS URANUS EARTH)
          (CRAVES HANGOVER OKRA)
          (EATS TUNA SHRIMP)
          (LOCALE OKRA ALSACE)
          (CRAVES ABRASION TUNA)
          (LOCALE PAPAYA ALSACE)
          (EATS HAMBURGER TOFU)
          (EATS HAM HOTDOG)
          (EATS OKRA PAPAYA)
          (EATS SHRIMP TUNA)
          (EATS SCALLOP SHRIMP)
          (LOCALE HAM ALSACE)
          (CRAVES ENTERTAINMENT OKRA)
          (LOCALE HAMBURGER QUEBEC)
          (EATS OKRA HAMBURGER)
          (ATTACKS MORAVIA MANITOBA)
          (EATS HAMBURGER OKRA)
          (CRAVES LACERATION SCALLOP)
          (ORBITS PLUTO URANUS)
          (EATS SHRIMP HOTDOG)
          (HARMONY CURIOSITY EARTH))
   (:GOAL (AND (CRAVES ANXIETY HAM))))