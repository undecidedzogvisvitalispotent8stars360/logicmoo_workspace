(DEFINE (PROBLEM STRIPS-MYSTY-25)
   (:DOMAIN MYSTERY-STRIPS)
   (:OBJECTS LEMON-12 BEEF-13 YOGURT-14 SHRIMP-15 HAM-16 PAPAYA-5
             BACON-6 ENDIVE-7 FLOUNDER-8 ARUGULA-3 PEAR-4 SCALLION-1
             SNICKERS-2 MARZIPAN POTATO WURST TUNA KALE WONDERBREAD CHERRY TOFU
             FLOUNDER PORK APPLE TOMATO LEMON BEEF SCALLION PEAR PAPAYA
             BROCCOLI SCALLOP CANTELOPE LOBSTER SNICKERS BACON CUCUMBER OKRA
             HAMBURGER LETTUCE HAM HOTDOG MELON SWEETROLL YOGURT ORANGE GUAVA
             CHOCOLATE ARUGULA RICE LAMB GRAPEFRUIT ONION MUTTON CHICKEN
             SHRIMP PEPPER ENDIVE POPOVER PEA MUFFIN BAGUETTE HAROSET
             TURKEY PISTACHIO COD TRIUMPH LEARNING CURIOSITY
             UNDERSTANDING SATISFACTION EXCITEMENT ENTERTAINMENT REST SATIETY
             EMPATHY ACHIEVEMENT LOVE INTOXICATION STIMULATION ANGER
             ANGINA LONELINESS DEPRESSION ABRASION BOILS HANGOVER ANXIETY
             GRIEF PROSTATITIS DREAD JEALOUSY SCIATICA BOILS-32 GRIEF-9
             JEALOUSY-10 HANGOVER-11 LACERATION ANXIETY-27 ANGER-28 DREAD-29
             ANGINA-30 SCIATICA-31 PROSTATITIS-22 LONELINESS-23
             LACERATION-24 ABRASION-25 DEPRESSION-26 DEPRESSION-18 HANGOVER-19
             JEALOUSY-20 GRIEF-21 ANGINA-64 BOILS-17 DREAD-61 ANXIETY-62
             PROSTATITIS-63 LONELINESS-57 ANGER-58 LACERATION-59 ABRASION-60
             LACERATION-52 JEALOUSY-53 HANGOVER-54 PROSTATITIS-55 SCIATICA-56
             ANGER-49 BOILS-50 LONELINESS-51 ANGINA-48 ANXIETY-47 DREAD-43
             SCIATICA-44 DEPRESSION-45 GRIEF-46 PROSTATITIS-40 JEALOUSY-41
             ABRASION-42 ALSACE BOSNIA SURREY PENNSYLVANIA MORAVIA BAVARIA
             OREGON GOIAS URANUS VENUS NEPTUNE JUPITER)
   (:INIT (FOOD LEMON-12)
          (FOOD BEEF-13)
          (FOOD YOGURT-14)
          (FOOD SHRIMP-15)
          (FOOD HAM-16)
          (FOOD PAPAYA-5)
          (FOOD BACON-6)
          (FOOD ENDIVE-7)
          (FOOD FLOUNDER-8)
          (FOOD ARUGULA-3)
          (FOOD PEAR-4)
          (FOOD SCALLION-1)
          (FOOD SNICKERS-2)
          (FOOD MARZIPAN)
          (FOOD POTATO)
          (FOOD WURST)
          (FOOD TUNA)
          (FOOD KALE)
          (FOOD WONDERBREAD)
          (FOOD CHERRY)
          (FOOD TOFU)
          (FOOD FLOUNDER)
          (FOOD PORK)
          (FOOD APPLE)
          (FOOD TOMATO)
          (FOOD LEMON)
          (FOOD BEEF)
          (FOOD SCALLION)
          (FOOD PEAR)
          (FOOD PAPAYA)
          (FOOD BROCCOLI)
          (FOOD SCALLOP)
          (FOOD CANTELOPE)
          (FOOD LOBSTER)
          (FOOD SNICKERS)
          (FOOD BACON)
          (FOOD CUCUMBER)
          (FOOD OKRA)
          (FOOD HAMBURGER)
          (FOOD LETTUCE)
          (FOOD HAM)
          (FOOD HOTDOG)
          (FOOD MELON)
          (FOOD SWEETROLL)
          (FOOD YOGURT)
          (FOOD ORANGE)
          (FOOD GUAVA)
          (FOOD CHOCOLATE)
          (FOOD ARUGULA)
          (FOOD RICE)
          (FOOD LAMB)
          (FOOD GRAPEFRUIT)
          (FOOD ONION)
          (FOOD MUTTON)
          (FOOD CHICKEN)
          (FOOD SHRIMP)
          (FOOD PEPPER)
          (FOOD ENDIVE)
          (FOOD POPOVER)
          (FOOD PEA)
          (FOOD MUFFIN)
          (FOOD BAGUETTE)
          (FOOD HAROSET)
          (FOOD TURKEY)
          (FOOD PISTACHIO)
          (FOOD COD)
          (PLEASURE TRIUMPH)
          (PLEASURE LEARNING)
          (PLEASURE CURIOSITY)
          (PLEASURE UNDERSTANDING)
          (PLEASURE SATISFACTION)
          (PLEASURE EXCITEMENT)
          (PLEASURE ENTERTAINMENT)
          (PLEASURE REST)
          (PLEASURE SATIETY)
          (PLEASURE EMPATHY)
          (PLEASURE ACHIEVEMENT)
          (PLEASURE LOVE)
          (PLEASURE INTOXICATION)
          (PLEASURE STIMULATION)
          (PAIN ANGER)
          (PAIN ANGINA)
          (PAIN LONELINESS)
          (PAIN DEPRESSION)
          (PAIN ABRASION)
          (PAIN BOILS)
          (PAIN HANGOVER)
          (PAIN ANXIETY)
          (PAIN GRIEF)
          (PAIN PROSTATITIS)
          (PAIN DREAD)
          (PAIN JEALOUSY)
          (PAIN SCIATICA)
          (PAIN BOILS-32)
          (PAIN GRIEF-9)
          (PAIN JEALOUSY-10)
          (PAIN HANGOVER-11)
          (PAIN LACERATION)
          (PAIN ANXIETY-27)
          (PAIN ANGER-28)
          (PAIN DREAD-29)
          (PAIN ANGINA-30)
          (PAIN SCIATICA-31)
          (PAIN PROSTATITIS-22)
          (PAIN LONELINESS-23)
          (PAIN LACERATION-24)
          (PAIN ABRASION-25)
          (PAIN DEPRESSION-26)
          (PAIN DEPRESSION-18)
          (PAIN HANGOVER-19)
          (PAIN JEALOUSY-20)
          (PAIN GRIEF-21)
          (PAIN ANGINA-64)
          (PAIN BOILS-17)
          (PAIN DREAD-61)
          (PAIN ANXIETY-62)
          (PAIN PROSTATITIS-63)
          (PAIN LONELINESS-57)
          (PAIN ANGER-58)
          (PAIN LACERATION-59)
          (PAIN ABRASION-60)
          (PAIN LACERATION-52)
          (PAIN JEALOUSY-53)
          (PAIN HANGOVER-54)
          (PAIN PROSTATITIS-55)
          (PAIN SCIATICA-56)
          (PAIN ANGER-49)
          (PAIN BOILS-50)
          (PAIN LONELINESS-51)
          (PAIN ANGINA-48)
          (PAIN ANXIETY-47)
          (PAIN DREAD-43)
          (PAIN SCIATICA-44)
          (PAIN DEPRESSION-45)
          (PAIN GRIEF-46)
          (PAIN PROSTATITIS-40)
          (PAIN JEALOUSY-41)
          (PAIN ABRASION-42)
          (PROVINCE ALSACE)
          (PROVINCE BOSNIA)
          (PROVINCE SURREY)
          (PROVINCE PENNSYLVANIA)
          (PROVINCE MORAVIA)
          (PROVINCE BAVARIA)
          (PROVINCE OREGON)
          (PROVINCE GOIAS)
          (PLANET URANUS)
          (PLANET VENUS)
          (PLANET NEPTUNE)
          (PLANET JUPITER)
          (CRAVES PROSTATITIS-40 PISTACHIO)
          (EATS RICE COD)
          (EATS LEMON-12 CHERRY)
          (CRAVES GRIEF-46 HAROSET)
          (LOCALE BEEF ALSACE)
          (EATS SCALLION OKRA)
          (EATS LEMON PAPAYA)
          (CRAVES BOILS-17 ORANGE)
          (EATS GRAPEFRUIT SWEETROLL)
          (LOCALE WONDERBREAD PENNSYLVANIA)
          (LOCALE BEEF-13 MORAVIA)
          (EATS PAPAYA LEMON)
          (LOCALE HAM ALSACE)
          (EATS MELON PEPPER)
          (EATS POPOVER BACON)
          (HARMONY SATIETY VENUS)
          (EATS APPLE HAROSET)
          (EATS CANTELOPE MUFFIN)
          (LOCALE TURKEY SURREY)
          (CRAVES JEALOUSY-20 SWEETROLL)
          (EATS LAMB POPOVER)
          (EATS SCALLION-1 TOFU)
          (EATS ENDIVE-7 BEEF-13)
          (EATS BROCCOLI LETTUCE)
          (EATS TUNA SHRIMP-15)
          (CRAVES EXCITEMENT LEMON)
          (EATS PEAR SWEETROLL)
          (EATS OKRA CHICKEN)
          (EATS LETTUCE BROCCOLI)
          (EATS PEA BEEF)
          (LOCALE POTATO BOSNIA)
          (LOCALE SCALLION BOSNIA)
          (EATS TUNA WURST)
          (EATS SCALLION-1 SNICKERS-2)
          (EATS OKRA SCALLION)
          (CRAVES PROSTATITIS-55 GRAPEFRUIT)
          (HARMONY SATISFACTION JUPITER)
          (EATS CHERRY LEMON-12)
          (EATS HAM-16 TOFU)
          (ATTACKS BOSNIA SURREY)
          (EATS ONION ENDIVE)
          (LOCALE RICE PENNSYLVANIA)
          (EATS HAMBURGER COD)
          (EATS PAPAYA SCALLOP)
          (LOCALE TUNA MORAVIA)
          (EATS HOTDOG PEPPER)
          (CRAVES PROSTATITIS POTATO)
          (LOCALE BACON SURREY)
          (EATS CANTELOPE PISTACHIO)
          (EATS MUTTON PISTACHIO)
          (CRAVES STIMULATION PISTACHIO)
          (HARMONY LEARNING NEPTUNE)
          (EATS PISTACHIO MUTTON)
          (CRAVES DEPRESSION ENDIVE-7)
          (EATS TOFU PAPAYA-5)
          (LOCALE SHRIMP SURREY)
          (EATS FLOUNDER SNICKERS-2)
          (EATS SWEETROLL GRAPEFRUIT)
          (EATS SCALLION-1 BEEF-13)
          (EATS KALE PEAR-4)
          (LOCALE CUCUMBER SURREY)
          (LOCALE OKRA SURREY)
          (LOCALE MUTTON ALSACE)
          (ATTACKS BAVARIA OREGON)
          (EATS GRAPEFRUIT SCALLION)
          (EATS CHOCOLATE RICE)
          (EATS SCALLOP PEA)
          (LOCALE GRAPEFRUIT SURREY)
          (HARMONY LOVE JUPITER)
          (CRAVES SCIATICA-31 BACON)
          (CRAVES LONELINESS-51 ONION)
          (EATS PEA PEAR)
          (LOCALE YOGURT SURREY)
          (CRAVES SATISFACTION PORK)
          (LOCALE PEAR-4 OREGON)
          (EATS BEEF-13 SCALLION-1)
          (EATS GUAVA SNICKERS)
          (EATS BAGUETTE TURKEY)
          (CRAVES DEPRESSION-18 SWEETROLL)
          (EATS FLOUNDER POTATO)
          (EATS CHERRY PAPAYA-5)
          (EATS SHRIMP-15 TUNA)
          (EATS PEAR PEA)
          (LOCALE KALE GOIAS)
          (EATS SCALLION-1 FLOUNDER)
          (EATS FLOUNDER-8 CHERRY)
          (EATS GUAVA PEAR)
          (EATS LOBSTER ONION)
          (EATS HAROSET APPLE)
          (CRAVES LONELINESS-23 LETTUCE)
          (EATS GUAVA CHICKEN)
          (EATS APPLE ENDIVE)
          (LOCALE LOBSTER OREGON)
          (LOCALE CHERRY ALSACE)
          (EATS PISTACHIO BAGUETTE)
          (EATS CUCUMBER TOMATO)
          (ORBITS VENUS NEPTUNE)
          (LOCALE SNICKERS-2 MORAVIA)
          (EATS BACON POPOVER)
          (LOCALE FLOUNDER-8 SURREY)
          (LOCALE HAM-16 ALSACE)
          (EATS HAROSET HAMBURGER)
          (EATS POTATO FLOUNDER)
          (EATS KALE YOGURT-14)
          (EATS PAPAYA-5 CHERRY)
          (CRAVES ABRASION-25 LETTUCE)
          (CRAVES ABRASION ENDIVE-7)
          (EATS BAGUETTE PISTACHIO)
          (CRAVES HANGOVER-11 LOBSTER)
          (EATS BEEF-13 ENDIVE-7)
          (EATS MUFFIN FLOUNDER-8)
          (EATS HAM LEMON)
          (EATS BACON-6 PEAR-4)
          (CRAVES INTOXICATION HAROSET)
          (EATS FLOUNDER SCALLION-1)
          (EATS FLOUNDER-8 MUFFIN)
          (CRAVES LOVE PEA)
          (CRAVES ANGINA-30 BACON)
          (CRAVES BOILS-50 ONION)
          (EATS MARZIPAN PORK)
          (CRAVES LACERATION-59 LAMB)
          (LOCALE SCALLION-1 BOSNIA)
          (EATS SHRIMP POPOVER)
          (ATTACKS ALSACE BOSNIA)
          (LOCALE CANTELOPE ALSACE)
          (EATS CHICKEN OKRA)
          (EATS LETTUCE SHRIMP)
          (EATS POTATO PORK)
          (LOCALE CHICKEN BOSNIA)
          (CRAVES ANGER YOGURT-14)
          (HARMONY UNDERSTANDING JUPITER)
          (EATS PORK MARZIPAN)
          (EATS RICE HAMBURGER)
          (LOCALE PEPPER SURREY)
          (EATS TOFU HAM-16)
          (CRAVES ANXIETY-47 BAGUETTE)
          (EATS CHICKEN GUAVA)
          (EATS HAM-16 SNICKERS-2)
          (EATS PEAR-4 BACON-6)
          (EATS SCALLION GRAPEFRUIT)
          (CRAVES JEALOUSY APPLE)
          (LOCALE BACON-6 MORAVIA)
          (LOCALE SCALLOP PENNSYLVANIA)
          (EATS HAMBURGER RICE)
          (LOCALE ONION BOSNIA)
          (EATS KALE MARZIPAN)
          (LOCALE ORANGE PENNSYLVANIA)
          (EATS PEAR GUAVA)
          (CRAVES ANGER-49 ONION)
          (LOCALE CHOCOLATE SURREY)
          (EATS WONDERBREAD PORK)
          (EATS HAM BROCCOLI)
          (LOCALE LEMON BOSNIA)
          (EATS HAROSET CUCUMBER)
          (EATS SHRIMP LETTUCE)
          (EATS RICE CHOCOLATE)
          (LOCALE MELON BAVARIA)
          (EATS HOTDOG TURKEY)
          (LOCALE PEAR PENNSYLVANIA)
          (EATS ONION LOBSTER)
          (CRAVES ACHIEVEMENT ARUGULA)
          (CRAVES DEPRESSION-26 LETTUCE)
          (CRAVES ANXIETY-62 GUAVA)
          (EATS PEPPER CHICKEN)
          (EATS LOBSTER MELON)
          (CRAVES ANGINA YOGURT-14)
          (HARMONY ACHIEVEMENT NEPTUNE)
          (LOCALE POPOVER BOSNIA)
          (CRAVES LACERATION-24 LETTUCE)
          (EATS SCALLOP PAPAYA)
          (EATS FLOUNDER YOGURT-14)
          (CRAVES GRIEF-9 LOBSTER)
          (EATS MELON HOTDOG)
          (EATS SNICKERS PEA)
          (EATS BEEF PEA)
          (LOCALE ENDIVE SURREY)
          (EATS ENDIVE ONION)
          (EATS BACON YOGURT)
          (EATS YOGURT-14 KALE)
          (LOCALE YOGURT-14 BOSNIA)
          (EATS CHERRY FLOUNDER-8)
          (LOCALE PISTACHIO ALSACE)
          (CRAVES LEARNING ARUGULA-3)
          (CRAVES JEALOUSY-10 LOBSTER)
          (EATS ORANGE PEA)
          (EATS YOGURT BACON)
          (EATS POPOVER SHRIMP)
          (EATS PEA SNICKERS)
          (CRAVES ANXIETY-27 BACON)
          (EATS TURKEY MELON)
          (LOCALE TOMATO BOSNIA)
          (EATS WURST FLOUNDER-8)
          (EATS PEA MUFFIN)
          (EATS KALE WURST)
          (LOCALE HOTDOG MORAVIA)
          (EATS MELON TURKEY)
          (EATS PEPPER BAGUETTE)
          (LOCALE HAROSET BOSNIA)
          (EATS PEAR OKRA)
          (CRAVES ANGER-28 BACON)
          (LOCALE LEMON-12 ALSACE)
          (EATS WURST TUNA)
          (CRAVES ANGINA-64 ORANGE)
          (LOCALE WURST MORAVIA)
          (HARMONY EXCITEMENT NEPTUNE)
          (EATS YOGURT GUAVA)
          (CRAVES DREAD-61 GUAVA)
          (EATS HAMBURGER HAROSET)
          (CRAVES BOILS ENDIVE-7)
          (EATS PORK POTATO)
          (EATS ENDIVE APPLE)
          (EATS PEPPER ARUGULA)
          (EATS SNICKERS-2 HAM-16)
          (EATS SCALLION-1 TUNA)
          (EATS ENDIVE-7 SHRIMP-15)
          (EATS POPOVER LAMB)
          (EATS TURKEY HOTDOG)
          (EATS SHRIMP-15 ENDIVE-7)
          (ORBITS URANUS VENUS)
          (EATS ENDIVE-7 TOFU)
          (EATS SHRIMP MUTTON)
          (CRAVES SCIATICA APPLE)
          (ATTACKS PENNSYLVANIA MORAVIA)
          (EATS ARUGULA PEPPER)
          (CRAVES BOILS-32 LOBSTER)
          (CRAVES EMPATHY YOGURT)
          (LOCALE GUAVA BAVARIA)
          (EATS MELON LOBSTER)
          (LOCALE TOFU PENNSYLVANIA)
          (CRAVES SCIATICA-44 HAROSET)
          (EATS CHOCOLATE ORANGE)
          (LOCALE BROCCOLI BOSNIA)
          (CRAVES HANGOVER ENDIVE-7)
          (EATS COD RICE)
          (CRAVES PROSTATITIS-22 LETTUCE)
          (EATS LAMB ARUGULA)
          (EATS BACON-6 ARUGULA-3)
          (EATS BAGUETTE PEPPER)
          (EATS SNICKERS GUAVA)
          (CRAVES REST LOBSTER)
          (LOCALE SNICKERS OREGON)
          (ATTACKS MORAVIA BAVARIA)
          (CRAVES UNDERSTANDING FLOUNDER)
          (CRAVES ANGER-58 LAMB)
          (EATS CHOCOLATE HAMBURGER)
          (EATS TOFU ENDIVE-7)
          (HARMONY ENTERTAINMENT NEPTUNE)
          (EATS SNICKERS-2 FLOUNDER)
          (EATS GUAVA YOGURT)
          (EATS MARZIPAN KALE)
          (EATS LEMON-12 WONDERBREAD)
          (EATS ARUGULA LAMB)
          (EATS WONDERBREAD ARUGULA-3)
          (EATS ARUGULA-3 MARZIPAN)
          (EATS WURST KALE)
          (EATS PISTACHIO CANTELOPE)
          (EATS PEAR-4 KALE)
          (EATS WONDERBREAD LEMON-12)
          (LOCALE MARZIPAN BOSNIA)
          (EATS PEPPER MELON)
          (HARMONY REST VENUS)
          (CRAVES SCIATICA-56 GRAPEFRUIT)
          (EATS TURKEY BAGUETTE)
          (LOCALE ENDIVE-7 ALSACE)
          (EATS GRAPEFRUIT HAROSET)
          (EATS MARZIPAN ARUGULA-3)
          (EATS BROCCOLI HAM)
          (HARMONY EMPATHY NEPTUNE)
          (LOCALE LAMB BOSNIA)
          (LOCALE PEA BAVARIA)
          (CRAVES ANGINA-48 POPOVER)
          (EATS MUFFIN PEA)
          (LOCALE BAGUETTE BOSNIA)
          (EATS POPOVER BEEF)
          (EATS PEPPER SHRIMP)
          (EATS SWEETROLL PEAR)
          (EATS PAPAYA-5 TOFU)
          (LOCALE ARUGULA-3 BAVARIA)
          (EATS PEPPER HOTDOG)
          (LOCALE MUFFIN BAVARIA)
          (EATS TOMATO CHICKEN)
          (EATS CHICKEN TOMATO)
          (EATS SHRIMP PEPPER)
          (EATS LEMON HAM)
          (CRAVES TRIUMPH BACON-6)
          (HARMONY TRIUMPH NEPTUNE)
          (EATS CHICKEN HAROSET)
          (EATS OKRA PEAR)
          (CRAVES ENTERTAINMENT BEEF)
          (EATS HAMBURGER CHOCOLATE)
          (LOCALE FLOUNDER PENNSYLVANIA)
          (LOCALE COD PENNSYLVANIA)
          (EATS MUFFIN CANTELOPE)
          (EATS ENDIVE CUCUMBER)
          (EATS TOMATO CUCUMBER)
          (EATS TOFU SCALLION-1)
          (EATS CUCUMBER ENDIVE)
          (CRAVES DEPRESSION-45 HAROSET)
          (EATS PEA SCALLOP)
          (EATS ARUGULA-3 BACON-6)
          (ORBITS NEPTUNE JUPITER)
          (CRAVES DREAD KALE)
          (EATS HAROSET CHICKEN)
          (CRAVES ABRASION-42 PISTACHIO)
          (CRAVES LACERATION LOBSTER)
          (CRAVES HANGOVER-54 GRAPEFRUIT)
          (CRAVES JEALOUSY-41 PISTACHIO)
          (CRAVES LACERATION-52 GRAPEFRUIT)
          (EATS ORANGE CHOCOLATE)
          (CRAVES LONELINESS YOGURT-14)
          (EATS YOGURT-14 FLOUNDER)
          (EATS TUNA SCALLION-1)
          (CRAVES GRIEF-21 SWEETROLL)
          (CRAVES HANGOVER-19 SWEETROLL)
          (CRAVES SATIETY SNICKERS)
          (ATTACKS SURREY PENNSYLVANIA)
          (LOCALE SWEETROLL SURREY)
          (EATS BEEF POPOVER)
          (HARMONY CURIOSITY JUPITER)
          (EATS COD HAMBURGER)
          (EATS PORK WONDERBREAD)
          (CRAVES DREAD-43 HAROSET)
          (CRAVES LONELINESS-57 LAMB)
          (CRAVES JEALOUSY-53 GRAPEFRUIT)
          (HARMONY STIMULATION VENUS)
          (LOCALE PAPAYA PENNSYLVANIA)
          (EATS SNICKERS-2 SCALLION-1)
          (CRAVES CURIOSITY WONDERBREAD)
          (LOCALE PAPAYA-5 MORAVIA)
          (LOCALE APPLE SURREY)
          (ATTACKS OREGON GOIAS)
          (CRAVES ANXIETY MARZIPAN)
          (HARMONY INTOXICATION VENUS)
          (LOCALE HAMBURGER BOSNIA)
          (LOCALE PORK SURREY)
          (LOCALE ARUGULA ALSACE)
          (CRAVES GRIEF POTATO)
          (EATS PEA ORANGE)
          (LOCALE SHRIMP-15 ALSACE)
          (CRAVES ABRASION-60 LAMB)
          (EATS ARUGULA-3 WONDERBREAD)
          (LOCALE LETTUCE ALSACE)
          (EATS MUTTON SHRIMP)
          (EATS CHICKEN PEPPER)
          (EATS CUCUMBER HAROSET)
          (EATS HOTDOG MELON)
          (CRAVES DREAD-29 BACON)
          (EATS FLOUNDER-8 WURST)
          (EATS HAROSET GRAPEFRUIT)
          (CRAVES PROSTATITIS-63 GUAVA))
   (:GOAL (AND (CRAVES LONELINESS-23 MUTTON))))