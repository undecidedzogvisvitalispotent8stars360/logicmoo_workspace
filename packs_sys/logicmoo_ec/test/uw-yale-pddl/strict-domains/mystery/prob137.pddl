(DEFINE (PROBLEM STRIPS-MYSTY-A-25)
   (:DOMAIN MYSTERY-STRIPS)
   (:OBJECTS HAM YOGURT CHOCOLATE SCALLOP PORK CHERRY FLOUNDER
             CHICKEN ARUGULA ORANGE LEMON MARZIPAN LUBRICITY EXPECTATION
             HANGOVER GRIEF PROSTATITIS ANGINA ANXIETY SCIATICA DEPRESSION
             ANGER SURREY GOIAS KENTUCKY URANUS MERCURY JUPITER EARTH)
   (:INIT (FOOD HAM)
          (FOOD YOGURT)
          (FOOD CHOCOLATE)
          (FOOD SCALLOP)
          (FOOD PORK)
          (FOOD CHERRY)
          (FOOD FLOUNDER)
          (FOOD CHICKEN)
          (FOOD ARUGULA)
          (FOOD ORANGE)
          (FOOD LEMON)
          (FOOD MARZIPAN)
          (PLEASURE LUBRICITY)
          (PLEASURE EXPECTATION)
          (PAIN HANGOVER)
          (PAIN GRIEF)
          (PAIN PROSTATITIS)
          (PAIN ANGINA)
          (PAIN ANXIETY)
          (PAIN SCIATICA)
          (PAIN DEPRESSION)
          (PAIN ANGER)
          (PROVINCE SURREY)
          (PROVINCE GOIAS)
          (PROVINCE KENTUCKY)
          (PLANET URANUS)
          (PLANET MERCURY)
          (PLANET JUPITER)
          (PLANET EARTH)
          (EATS PORK YOGURT)
          (CRAVES LUBRICITY FLOUNDER)
          (LOCALE ORANGE SURREY)
          (CRAVES ANXIETY CHERRY)
          (EATS CHICKEN ARUGULA)
          (EATS SCALLOP YOGURT)
          (EATS CHERRY HAM)
          (EATS ARUGULA CHICKEN)
          (EATS ORANGE LEMON)
          (EATS FLOUNDER SCALLOP)
          (HARMONY LUBRICITY MERCURY)
          (LOCALE CHOCOLATE KENTUCKY)
          (EATS MARZIPAN LEMON)
          (EATS ORANGE CHICKEN)
          (EATS YOGURT SCALLOP)
          (ORBITS JUPITER EARTH)
          (EATS MARZIPAN ARUGULA)
          (EATS CHERRY PORK)
          (EATS FLOUNDER CHOCOLATE)
          (EATS HAM LEMON)
          (CRAVES EXPECTATION ORANGE)
          (LOCALE MARZIPAN KENTUCKY)
          (EATS LEMON ORANGE)
          (CRAVES PROSTATITIS SCALLOP)
          (LOCALE CHICKEN SURREY)
          (CRAVES ANGINA CHERRY)
          (LOCALE PORK GOIAS)
          (EATS HAM CHERRY)
          (ORBITS URANUS MERCURY)
          (EATS CHOCOLATE HAM)
          (LOCALE YOGURT GOIAS)
          (LOCALE HAM KENTUCKY)
          (LOCALE SCALLOP SURREY)
          (LOCALE CHERRY GOIAS)
          (ORBITS MERCURY JUPITER)
          (HARMONY EXPECTATION EARTH)
          (EATS ARUGULA MARZIPAN)
          (LOCALE LEMON KENTUCKY)
          (EATS LEMON YOGURT)
          (EATS YOGURT PORK)
          (EATS CHOCOLATE FLOUNDER)
          (EATS YOGURT LEMON)
          (LOCALE FLOUNDER GOIAS)
          (ATTACKS SURREY GOIAS)
          (EATS CHICKEN ORANGE)
          (CRAVES DEPRESSION ARUGULA)
          (LOCALE ARUGULA SURREY)
          (CRAVES GRIEF CHOCOLATE)
          (EATS PORK CHERRY)
          (ATTACKS GOIAS KENTUCKY)
          (EATS HAM CHOCOLATE)
          (EATS LEMON HAM)
          (CRAVES SCIATICA ARUGULA)
          (EATS LEMON MARZIPAN)
          (EATS SCALLOP FLOUNDER)
          (CRAVES HANGOVER CHOCOLATE)
          (CRAVES ANGER ORANGE))
   (:GOAL (AND (CRAVES SCIATICA ORANGE))))