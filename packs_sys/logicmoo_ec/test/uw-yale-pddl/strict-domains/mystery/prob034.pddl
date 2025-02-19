(DEFINE (PROBLEM MYSTY-34)
   (:DOMAIN MYSTERY-TYPED)
   (:OBJECTS BEEF-23 SNICKERS-27 KALE-26 ARUGULA-25 POPOVER-24
             SCALLION-28 SHRIMP-29 ENDIVE-30 CHICKEN-31 HAROSET-32
             HAMBURGER-9 RICE-10 HOTDOG-11 LOBSTER-12 BROCCOLI-13 TURKEY-14
             LEMON-15 CUCUMBER-16 GUAVA-5 PAPAYA-6 SCALLOP-7 OKRA-8 PEAR-3
             FLOUNDER-4 CHOCOLATE-1 PEPPER-2 RICE WURST PEAR ENDIVE PORK TURKEY
             OKRA HAMBURGER GRAPEFRUIT LEMON BEEF POPOVER HAROSET ONION
             MUTTON LOBSTER MUFFIN SCALLOP GUAVA TOMATO LETTUCE HAM
             SWEETROLL TOFU PEA CHOCOLATE ORANGE BROCCOLI HOTDOG APPLE LAMB
             BACON PISTACHIO SHRIMP PAPAYA POTATO SNICKERS WONDERBREAD
             CHICKEN MELON YOGURT BAGUETTE MARZIPAN PEPPER CHERRY CANTELOPE
             CUCUMBER COD SCALLION KALE ARUGULA TUNA FLOUNDER - FOOD
             EMPATHY SATIETY AESTHETICS UNDERSTANDING LEARNING
             ACHIEVEMENT TRIUMPH EXCITEMENT LUBRICITY LOVE EXPECTATION
             STIMULATION CURIOSITY SATISFACTION ENTERTAINMENT INTOXICATION
             REST INTOXICATION-22 LOVE-21 - PLEASURE
             DREAD LONELINESS ABRASION GRIEF LACERATION BOILS ANXIETY
             SCIATICA ANGER PROSTATITIS DEPRESSION HANGOVER JEALOUSY
             BOILS-17 GRIEF-18 JEALOUSY-19 HANGOVER-20 ANGINA ANXIETY-60
             ANGER-61 DREAD-62 ANGINA-63 SCIATICA-64 PROSTATITIS-55
             LONELINESS-56 LACERATION-57 ABRASION-58 DEPRESSION-59
             PROSTATITIS-52 DEPRESSION-53 GRIEF-54 ABRASION-49 ANGER-50
             LACERATION-51 ANGINA-47 ANXIETY-48 SCIATICA-44 JEALOUSY-45
             DREAD-46 PROSTATITIS-40 BOILS-41 HANGOVER-42 LONELINESS-43
             ANXIETY-37 HANGOVER-38 ANGER-39 JEALOUSY-34 BOILS-35 DREAD-36
             ANGINA-33 SCIATICA-124 LONELINESS-125 DEPRESSION-126
             GRIEF-127 LACERATION-128 ABRASION-123 ANGINA-119 HANGOVER-120
             DREAD-121 ANGER-122 LACERATION-117 PROSTATITIS-118
             ANXIETY-115 SCIATICA-116 ABRASION-111 BOILS-112 JEALOUSY-113
             LONELINESS-114 LONELINESS-108 DEPRESSION-109 GRIEF-110 ANGER-104
             GRIEF-105 DEPRESSION-106 ANGINA-107 HANGOVER-102 BOILS-103
             LACERATION-100 ABRASION-101 DREAD-96 JEALOUSY-97 ANXIETY-98
             PROSTATITIS-99 ANGER-92 LONELINESS-93 PROSTATITIS-94 SCIATICA-95
             DEPRESSION-89 ANGINA-90 GRIEF-91 HANGOVER-88 BOILS-86 ABRASION-87
             LACERATION-82 SCIATICA-83 JEALOUSY-84 ANXIETY-85 DREAD-81 BOILS-78
             DEPRESSION-79 JEALOUSY-80 ABRASION-76 HANGOVER-77 ANGER-74
             ANGINA-75 PROSTATITIS-72 LACERATION-73 GRIEF-69 ANXIETY-70
             DREAD-71 ANGINA-66 SCIATICA-67 LONELINESS-68 HANGOVER-254
             PROSTATITIS-255 ANGER-256 BOILS-65 JEALOUSY-250 ANXIETY-251
             DEPRESSION-252 GRIEF-253 - PAIN
             SURREY QUEBEC ALSACE KENTUCKY BOSNIA OREGON PENNSYLVANIA
             BAVARIA GUANABARA GOIAS MORAVIA ARIZONA MANITOBA - PROVINCE
             JUPITER EARTH MERCURY VENUS - PLANET)
   (:INIT (CRAVES GRIEF-54 PEPPER-2)
          (EATS PISTACHIO POTATO)
          (CRAVES ANGINA-33 HAROSET)
          (LOCALE SCALLION-28 BAVARIA)
          (LOCALE ARUGULA BOSNIA)
          (EATS TURKEY-14 FLOUNDER)
          (CRAVES ABRASION-111 HAM)
          (EATS ARUGULA-25 BEEF-23)
          (EATS PISTACHIO SNICKERS)
          (CRAVES BOILS-112 HAM)
          (EATS LOBSTER CHICKEN-31)
          (EATS SHRIMP-29 GRAPEFRUIT)
          (CRAVES HANGOVER-38 GRAPEFRUIT)
          (CRAVES JEALOUSY-250 FLOUNDER)
          (EATS PEA CANTELOPE)
          (EATS SCALLOP KALE)
          (EATS HAM YOGURT)
          (EATS TUNA FLOUNDER)
          (EATS FLOUNDER TURKEY-14)
          (CRAVES HANGOVER-88 POTATO)
          (EATS BAGUETTE TURKEY-14)
          (EATS OKRA CUCUMBER)
          (EATS CHICKEN-31 PEPPER-2)
          (EATS GUAVA-5 BAGUETTE)
          (EATS COD ARUGULA)
          (CRAVES LOVE GUAVA)
          (EATS GUAVA BROCCOLI-13)
          (EATS POPOVER SNICKERS)
          (EATS BAGUETTE CUCUMBER)
          (CRAVES JEALOUSY-97 LAMB)
          (EATS SHRIMP GUAVA-5)
          (EATS CANTELOPE HOTDOG)
          (CRAVES DREAD-36 BEEF)
          (EATS POTATO PISTACHIO)
          (LOCALE LOBSTER-12 MORAVIA)
          (ATTACKS GUANABARA GOIAS)
          (EATS FLOUNDER-4 POPOVER)
          (CRAVES ANXIETY-115 GUAVA)
          (CRAVES HANGOVER-20 GUAVA-5)
          (ATTACKS QUEBEC ALSACE)
          (EATS KALE-26 ARUGULA-25)
          (HARMONY LEARNING VENUS)
          (CRAVES SCIATICA-124 ONION)
          (EATS COD PEPPER-2)
          (EATS HAROSET MUTTON)
          (EATS CANTELOPE SWEETROLL)
          (EATS SCALLION SCALLOP)
          (LOCALE MUFFIN ARIZONA)
          (EATS TURKEY-14 BAGUETTE)
          (EATS SCALLOP-7 WONDERBREAD)
          (EATS LEMON FLOUNDER)
          (CRAVES ANGINA-47 PEAR)
          (EATS LEMON-15 COD)
          (LOCALE COD GOIAS)
          (EATS PEA LAMB)
          (EATS BAGUETTE CHICKEN)
          (CRAVES PROSTATITIS-40 HAMBURGER)
          (EATS PAPAYA MUTTON)
          (EATS HAMBURGER-9 SCALLION-28)
          (LOCALE ENDIVE PENNSYLVANIA)
          (CRAVES ANXIETY-98 LAMB)
          (HARMONY LUBRICITY VENUS)
          (LOCALE MARZIPAN OREGON)
          (EATS FLOUNDER CHICKEN)
          (EATS BROCCOLI POTATO)
          (LOCALE OKRA-8 ALSACE)
          (EATS ENDIVE CUCUMBER-16)
          (CRAVES ACHIEVEMENT PAPAYA-6)
          (LOCALE LOBSTER BOSNIA)
          (EATS COD KALE)
          (LOCALE CHICKEN MANITOBA)
          (EATS CUCUMBER OKRA)
          (EATS PORK CANTELOPE)
          (LOCALE RICE GOIAS)
          (EATS WURST RICE)
          (EATS MUFFIN COD)
          (LOCALE LEMON-15 OREGON)
          (CRAVES EXCITEMENT MUTTON)
          (HARMONY REST MERCURY)
          (LOCALE GRAPEFRUIT BAVARIA)
          (LOCALE SCALLOP BAVARIA)
          (EATS MUFFIN BROCCOLI-13)
          (EATS CUCUMBER GUAVA)
          (EATS ARUGULA CHERRY)
          (EATS HAROSET APPLE)
          (CRAVES SCIATICA-83 YOGURT)
          (CRAVES LACERATION-117 SCALLOP)
          (EATS PISTACHIO ENDIVE)
          (EATS LOBSTER OKRA-8)
          (CRAVES ABRASION-101 BROCCOLI)
          (EATS BEEF-23 SNICKERS-27)
          (EATS PAPAYA KALE)
          (EATS PAPAYA OKRA)
          (LOCALE ORANGE PENNSYLVANIA)
          (CRAVES LOVE-21 CUCUMBER)
          (EATS APPLE SHRIMP)
          (CRAVES JEALOUSY-113 HAM)
          (EATS SNICKERS POPOVER)
          (HARMONY CURIOSITY MERCURY)
          (EATS KALE-26 SNICKERS-27)
          (LOCALE SHRIMP-29 SURREY)
          (EATS POTATO ENDIVE)
          (EATS LOBSTER CHOCOLATE)
          (LOCALE WURST ALSACE)
          (EATS FLOUNDER LEMON)
          (EATS GRAPEFRUIT SHRIMP-29)
          (EATS APPLE HAROSET)
          (LOCALE PORK PENNSYLVANIA)
          (EATS COD OKRA-8)
          (CRAVES ANXIETY HAMBURGER-9)
          (CRAVES ANGER-74 CHERRY)
          (LOCALE CUCUMBER BOSNIA)
          (HARMONY SATISFACTION VENUS)
          (HARMONY AESTHETICS VENUS)
          (CRAVES ANGINA-63 SCALLOP-7)
          (EATS LEMON SCALLION)
          (LOCALE KALE MORAVIA)
          (EATS HAMBURGER APPLE)
          (EATS ORANGE TOMATO)
          (EATS COD LEMON-15)
          (EATS CHERRY GRAPEFRUIT)
          (CRAVES LACERATION-73 CUCUMBER)
          (CRAVES DEPRESSION RICE-10)
          (EATS TOMATO BROCCOLI)
          (CRAVES GRIEF-127 ONION)
          (EATS POPOVER TUNA)
          (CRAVES JEALOUSY-19 GUAVA-5)
          (EATS RICE CHOCOLATE)
          (LOCALE GUAVA-5 QUEBEC)
          (EATS POPOVER FLOUNDER-4)
          (CRAVES INTOXICATION WONDERBREAD)
          (HARMONY EMPATHY EARTH)
          (EATS TURKEY BEEF)
          (CRAVES ANXIETY-37 GRAPEFRUIT)
          (LOCALE PISTACHIO ARIZONA)
          (EATS BACON TOFU)
          (CRAVES DREAD-46 ENDIVE)
          (EATS MARZIPAN FLOUNDER-4)
          (EATS SHRIMP SCALLION)
          (EATS CANTELOPE PEA)
          (EATS HOTDOG LAMB)
          (EATS CHICKEN-31 LOBSTER)
          (EATS MUFFIN SNICKERS-27)
          (EATS HOTDOG-11 BACON)
          (CRAVES SATIETY KALE-26)
          (CRAVES EXPECTATION LETTUCE)
          (LOCALE BROCCOLI BOSNIA)
          (EATS YOGURT PISTACHIO)
          (EATS FLOUNDER CUCUMBER-16)
          (LOCALE CHERRY BOSNIA)
          (CRAVES PROSTATITIS-52 PEPPER-2)
          (EATS MUTTON PAPAYA)
          (EATS RICE WURST)
          (CRAVES DEPRESSION-106 CHOCOLATE)
          (CRAVES GRIEF-18 GUAVA-5)
          (CRAVES BOILS HAMBURGER-9)
          (EATS SCALLION-28 SNICKERS)
          (EATS HAROSET SCALLOP)
          (HARMONY EXCITEMENT EARTH)
          (EATS CHERRY PEPPER)
          (EATS CANTELOPE POTATO)
          (EATS SWEETROLL CANTELOPE)
          (EATS LAMB HOTDOG)
          (EATS BAGUETTE GUAVA-5)
          (EATS ORANGE LETTUCE)
          (CRAVES ANGER-61 SCALLOP-7)
          (EATS PAPAYA-6 CHERRY)
          (CRAVES LONELINESS-108 PEA)
          (EATS PISTACHIO TUNA)
          (CRAVES PROSTATITIS-55 CHOCOLATE-1)
          (EATS YOGURT LOBSTER-12)
          (CRAVES TRIUMPH OKRA-8)
          (EATS BROCCOLI YOGURT)
          (EATS SCALLOP SCALLION)
          (ATTACKS SURREY QUEBEC)
          (ATTACKS BAVARIA GUANABARA)
          (EATS APPLE HAMBURGER)
          (CRAVES LEARNING TURKEY-14)
          (EATS HAROSET-32 CUCUMBER)
          (CRAVES LONELINESS-68 KALE)
          (LOCALE BACON BAVARIA)
          (CRAVES CURIOSITY PISTACHIO)
          (EATS SNICKERS SCALLION-28)
          (EATS COD LOBSTER-12)
          (EATS SHRIMP APPLE)
          (CRAVES SATISFACTION SHRIMP)
          (EATS BACON HOTDOG-11)
          (EATS SCALLION SHRIMP)
          (CRAVES DEPRESSION-53 PEPPER-2)
          (EATS MUFFIN KALE)
          (EATS FLOUNDER-4 WONDERBREAD)
          (LOCALE OKRA MORAVIA)
          (EATS PAPAYA-6 POPOVER)
          (CRAVES GRIEF HAROSET-32)
          (ATTACKS ARIZONA MANITOBA)
          (EATS HOTDOG-11 SNICKERS)
          (EATS KALE-26 BEEF-23)
          (LOCALE PEA OREGON)
          (EATS ENDIVE-30 HAMBURGER-9)
          (EATS TOMATO ORANGE)
          (CRAVES PROSTATITIS-94 SHRIMP)
          (EATS TUNA POPOVER)
          (ATTACKS MORAVIA ARIZONA)
          (EATS LEMON-15 PEAR)
          (CRAVES BOILS-103 ORANGE)
          (EATS HAMBURGER SCALLION)
          (LOCALE PEPPER-2 BOSNIA)
          (LOCALE GUAVA GUANABARA)
          (CRAVES ABRASION-87 MELON)
          (CRAVES DEPRESSION-126 ONION)
          (CRAVES ANGINA-66 KALE)
          (CRAVES LONELINESS-56 CHOCOLATE-1)
          (CRAVES BOILS-78 MARZIPAN)
          (EATS MARZIPAN TURKEY)
          (EATS SNICKERS-27 MUFFIN)
          (CRAVES JEALOUSY-34 BEEF)
          (EATS PEPPER CHERRY)
          (CRAVES BOILS-17 GUAVA-5)
          (EATS FLOUNDER TUNA)
          (CRAVES PROSTATITIS-72 CUCUMBER)
          (EATS PORK ORANGE)
          (CRAVES HANGOVER RICE-10)
          (EATS KALE COD)
          (LOCALE TURKEY SURREY)
          (LOCALE CHOCOLATE-1 BAVARIA)
          (CRAVES JEALOUSY-84 YOGURT)
          (EATS ENDIVE POTATO)
          (EATS MELON PEAR-3)
          (LOCALE BEEF-23 BAVARIA)
          (LOCALE SHRIMP BOSNIA)
          (CRAVES LONELINESS-125 ONION)
          (ATTACKS PENNSYLVANIA BAVARIA)
          (CRAVES JEALOUSY RICE-10)
          (CRAVES AESTHETICS SCALLION-28)
          (EATS CUCUMBER HAROSET-32)
          (EATS SCALLION LEMON)
          (EATS BROCCOLI-13 MUFFIN)
          (EATS HOTDOG MELON)
          (EATS SNICKERS-27 BEEF-23)
          (EATS POTATO YOGURT)
          (EATS LAMB BAGUETTE)
          (CRAVES REST CHERRY)
          (EATS MELON HOTDOG)
          (EATS SCALLOP HAROSET)
          (EATS CHOCOLATE YOGURT)
          (EATS PEAR LEMON-15)
          (HARMONY UNDERSTANDING EARTH)
          (ATTACKS OREGON PENNSYLVANIA)
          (EATS CHICKEN BAGUETTE)
          (CRAVES HANGOVER-42 HAMBURGER)
          (LOCALE POPOVER-24 PENNSYLVANIA)
          (EATS LETTUCE LEMON-15)
          (LOCALE WONDERBREAD ALSACE)
          (EATS BROCCOLI-13 GUAVA)
          (LOCALE KALE-26 OREGON)
          (EATS POPOVER-24 SNICKERS-27)
          (EATS HAM TOFU)
          (EATS HAMBURGER-9 ENDIVE-30)
          (EATS PEPPER-2 COD)
          (LOCALE APPLE BOSNIA)
          (LOCALE POTATO KENTUCKY)
          (EATS SCALLION HAMBURGER)
          (CRAVES ANGER-256 ARUGULA)
          (CRAVES ANGER-122 MUFFIN)
          (EATS YOGURT CHOCOLATE)
          (EATS GRAPEFRUIT CHERRY)
          (CRAVES ANXIETY-70 SCALLION)
          (EATS PEAR-3 BAGUETTE)
          (CRAVES LACERATION-100 BROCCOLI)
          (LOCALE LEMON BAVARIA)
          (LOCALE PEAR BOSNIA)
          (CRAVES DEPRESSION-252 FLOUNDER)
          (EATS PEAR ORANGE)
          (CRAVES ANGINA-107 CHOCOLATE)
          (CRAVES ANGER-92 SHRIMP)
          (CRAVES DREAD-81 BAGUETTE)
          (CRAVES HANGOVER-254 ARUGULA)
          (CRAVES SCIATICA-67 KALE)
          (CRAVES ANGINA-90 PAPAYA)
          (EATS RICE-10 LETTUCE)
          (EATS SWEETROLL ORANGE)
          (EATS ENDIVE-30 BACON)
          (HARMONY ENTERTAINMENT VENUS)
          (EATS SNICKERS-27 KALE-26)
          (LOCALE FLOUNDER-4 BAVARIA)
          (CRAVES PROSTATITIS-255 ARUGULA)
          (CRAVES ANXIETY-85 YOGURT)
          (EATS LETTUCE ORANGE)
          (LOCALE YOGURT GUANABARA)
          (EATS CHOCOLATE-1 CHICKEN)
          (LOCALE HAMBURGER-9 BAVARIA)
          (EATS LEMON-15 LETTUCE)
          (HARMONY INTOXICATION-22 EARTH)
          (CRAVES BOILS-35 BEEF)
          (EATS OKRA-8 COD)
          (EATS ORANGE PORK)
          (CRAVES DEPRESSION-79 MARZIPAN)
          (CRAVES LACERATION-57 CHOCOLATE-1)
          (EATS CHICKEN CHOCOLATE-1)
          (EATS CANTELOPE PORK)
          (EATS BEEF TURKEY)
          (HARMONY INTOXICATION VENUS)
          (CRAVES BOILS-41 HAMBURGER)
          (ORBITS MERCURY VENUS)
          (LOCALE TUNA ARIZONA)
          (EATS PEAR-3 MELON)
          (EATS TOFU BACON)
          (EATS WONDERBREAD MARZIPAN)
          (EATS ARUGULA-25 POPOVER-24)
          (LOCALE MUTTON BAVARIA)
          (EATS GRAPEFRUIT CHOCOLATE)
          (EATS CUCUMBER-16 FLOUNDER)
          (LOCALE HAROSET BAVARIA)
          (EATS SHRIMP-29 ARUGULA)
          (LOCALE HAROSET-32 GOIAS)
          (EATS MUFFIN HAROSET-32)
          (CRAVES JEALOUSY-80 MARZIPAN)
          (EATS BROCCOLI CANTELOPE)
          (HARMONY TRIUMPH MERCURY)
          (CRAVES LACERATION-128 ONION)
          (CRAVES ANGER-39 GRAPEFRUIT)
          (CRAVES ENTERTAINMENT SNICKERS)
          (EATS CHOCOLATE RICE)
          (EATS ARUGULA SHRIMP-29)
          (HARMONY EXPECTATION VENUS)
          (CRAVES EMPATHY SNICKERS-27)
          (EATS COD PEAR)
          (LOCALE SCALLION BAVARIA)
          (CRAVES ANXIETY-251 FLOUNDER)
          (CRAVES STIMULATION APPLE)
          (EATS LETTUCE RICE-10)
          (EATS LOBSTER-12 COD)
          (HARMONY SATIETY MERCURY)
          (EATS LETTUCE PORK)
          (EATS PEPPER TUNA)
          (CRAVES PROSTATITIS-118 SCALLOP)
          (EATS POPOVER-24 BACON)
          (EATS MUTTON HAROSET)
          (LOCALE BAGUETTE MORAVIA)
          (EATS LEMON-15 GUAVA)
          (EATS LAMB PEA)
          (CRAVES DEPRESSION-109 PEA)
          (EATS COD MUFFIN)
          (EATS ARUGULA-25 KALE-26)
          (CRAVES ANGINA-119 MUFFIN)
          (CRAVES DREAD ARUGULA-25)
          (CRAVES INTOXICATION-22 CANTELOPE)
          (CRAVES ANGER RICE-10)
          (EATS PORK LETTUCE)
          (CRAVES GRIEF-253 FLOUNDER)
          (LOCALE BROCCOLI-13 GOIAS)
          (EATS SNICKERS FLOUNDER-4)
          (EATS FLOUNDER-4 SNICKERS)
          (LOCALE CUCUMBER-16 GUANABARA)
          (CRAVES HANGOVER-102 ORANGE)
          (CRAVES PROSTATITIS RICE-10)
          (LOCALE HAM ALSACE)
          (LOCALE HOTDOG-11 ARIZONA)
          (CRAVES ABRASION-123 LOBSTER)
          (EATS GUAVA LEMON-15)
          (EATS ORANGE SWEETROLL)
          (EATS CHOCOLATE-1 ONION)
          (CRAVES PROSTATITIS-99 LAMB)
          (CRAVES BOILS-65 ARUGULA)
          (EATS HOTDOG CANTELOPE)
          (EATS BEEF-23 ARUGULA-25)
          (LOCALE SWEETROLL BAVARIA)
          (CRAVES HANGOVER-77 PEPPER)
          (EATS SCALLOP-7 CHERRY)
          (CRAVES LACERATION-51 RICE)
          (EATS POTATO ONION)
          (EATS ARUGULA COD)
          (EATS YOGURT BROCCOLI)
          (EATS CUCUMBER-16 ENDIVE)
          (CRAVES JEALOUSY-45 ENDIVE)
          (CRAVES DREAD-71 SCALLION)
          (LOCALE ENDIVE-30 OREGON)
          (EATS WONDERBREAD FLOUNDER-4)
          (EATS CHOCOLATE BEEF)
          (EATS TOFU HAM)
          (CRAVES GRIEF-91 PAPAYA)
          (CRAVES LUBRICITY SCALLOP)
          (EATS KALE SCALLOP)
          (CRAVES ANGER-50 RICE)
          (CRAVES ABRASION POPOVER-24)
          (EATS BACON ENDIVE-30)
          (EATS GUAVA-5 SHRIMP)
          (CRAVES DREAD-96 LAMB)
          (LOCALE FLOUNDER MANITOBA)
          (EATS CUCUMBER RICE-10)
          (CRAVES DEPRESSION-59 CHOCOLATE-1)
          (LOCALE CHICKEN-31 PENNSYLVANIA)
          (LOCALE TOMATO KENTUCKY)
          (LOCALE TURKEY-14 OREGON)
          (EATS PEAR COD)
          (EATS CHICKEN LAMB)
          (HARMONY ACHIEVEMENT MERCURY)
          (CRAVES HANGOVER-120 MUFFIN)
          (LOCALE RICE-10 OREGON)
          (CRAVES ABRASION-76 PEPPER)
          (CRAVES SCIATICA-64 SCALLOP-7)
          (LOCALE MELON PENNSYLVANIA)
          (CRAVES LACERATION-82 YOGURT)
          (EATS PISTACHIO YOGURT)
          (LOCALE ONION BOSNIA)
          (CRAVES DEPRESSION-89 PAPAYA)
          (EATS SNICKERS HOTDOG-11)
          (LOCALE SNICKERS MANITOBA)
          (EATS LOBSTER-12 YOGURT)
          (ATTACKS BOSNIA OREGON)
          (EATS POTATO CANTELOPE)
          (EATS BAGUETTE PEAR-3)
          (CRAVES ANGER-104 CHOCOLATE)
          (LOCALE LAMB GUANABARA)
          (EATS TUNA PISTACHIO)
          (CRAVES ABRASION-58 CHOCOLATE-1)
          (CRAVES DREAD-121 MUFFIN)
          (CRAVES LONELINESS ARUGULA-25)
          (ATTACKS GOIAS MORAVIA)
          (CRAVES SCIATICA HAMBURGER-9)
          (LOCALE BEEF OREGON)
          (HARMONY STIMULATION EARTH)
          (EATS SNICKERS-27 POPOVER-24)
          (EATS YOGURT HAM)
          (EATS BROCCOLI TOMATO)
          (CRAVES ANXIETY-48 PEAR)
          (EATS HAROSET-32 MUFFIN)
          (EATS WURST HOTDOG-11)
          (CRAVES GRIEF-105 CHOCOLATE)
          (EATS POPOVER PAPAYA-6)
          (LOCALE POPOVER BOSNIA)
          (EATS BEEF CHOCOLATE)
          (CRAVES BOILS-86 MELON)
          (EATS RICE-10 CUCUMBER)
          (EATS WONDERBREAD SCALLOP-7)
          (EATS OKRA PAPAYA)
          (ATTACKS KENTUCKY BOSNIA)
          (EATS GUAVA CUCUMBER)
          (EATS LAMB CHICKEN)
          (LOCALE SNICKERS-27 GOIAS)
          (LOCALE ARUGULA-25 OREGON)
          (EATS PEPPER-2 CHICKEN-31)
          (CRAVES DREAD-62 SCALLOP-7)
          (EATS YOGURT PEPPER-2)
          (EATS ONION CHOCOLATE-1)
          (LOCALE PAPAYA ARIZONA)
          (CRAVES SCIATICA-44 ENDIVE)
          (CRAVES ABRASION-49 RICE)
          (EATS ONION POTATO)
          (EATS SCALLION-28 HAMBURGER-9)
          (EATS KALE PAPAYA)
          (LOCALE PEAR-3 GOIAS)
          (ATTACKS ALSACE KENTUCKY)
          (EATS BEEF-23 KALE-26)
          (LOCALE CHOCOLATE PENNSYLVANIA)
          (EATS CHOCOLATE GRAPEFRUIT)
          (EATS YOGURT POTATO)
          (EATS CHERRY ARUGULA)
          (CRAVES ANGINA-75 CHERRY)
          (EATS BAGUETTE LAMB)
          (EATS CHOCOLATE LOBSTER)
          (CRAVES SCIATICA-95 SHRIMP)
          (HARMONY LOVE-21 MERCURY)
          (CRAVES SCIATICA-116 GUAVA)
          (CRAVES ANGINA GUAVA-5)
          (EATS CUCUMBER BAGUETTE)
          (EATS POTATO BROCCOLI)
          (EATS PEPPER-2 YOGURT)
          (LOCALE SCALLOP-7 SURREY)
          (ORBITS EARTH MERCURY)
          (CRAVES UNDERSTANDING SHRIMP-29)
          (LOCALE TOFU QUEBEC)
          (CRAVES LONELINESS-114 HAM)
          (EATS TURKEY MARZIPAN)
          (LOCALE LETTUCE GOIAS)
          (CRAVES LONELINESS-43 HAMBURGER)
          (EATS MARZIPAN WONDERBREAD)
          (EATS TUNA PEPPER)
          (LOCALE PAPAYA-6 BAVARIA)
          (EATS SNICKERS PISTACHIO)
          (EATS CHERRY PAPAYA-6)
          (EATS ENDIVE PISTACHIO)
          (EATS POPOVER-24 ARUGULA-25)
          (EATS CANTELOPE BROCCOLI)
          (CRAVES GRIEF-110 PEA)
          (LOCALE PEPPER BOSNIA)
          (EATS BACON POPOVER-24)
          (EATS KALE MUFFIN)
          (CRAVES GRIEF-69 SCALLION)
          (EATS CHERRY SCALLOP-7)
          (EATS ORANGE PEAR)
          (EATS HOTDOG-11 WURST)
          (ORBITS JUPITER EARTH)
          (LOCALE HOTDOG KENTUCKY)
          (EATS FLOUNDER-4 MARZIPAN)
          (EATS CHICKEN FLOUNDER)
          (CRAVES ANXIETY-60 SCALLOP-7)
          (LOCALE CANTELOPE OREGON)
          (LOCALE HAMBURGER KENTUCKY)
          (CRAVES LONELINESS-93 SHRIMP)
          (EATS OKRA-8 LOBSTER)
          (CRAVES LACERATION HAROSET-32)
          (HARMONY LOVE VENUS))
   (:GOAL (AND (CRAVES BOILS-86 CANTELOPE)
               (CRAVES ABRASION-87 CANTELOPE)
               (CRAVES ANXIETY-115 CANTELOPE)
               (CRAVES SCIATICA-116 CANTELOPE))))