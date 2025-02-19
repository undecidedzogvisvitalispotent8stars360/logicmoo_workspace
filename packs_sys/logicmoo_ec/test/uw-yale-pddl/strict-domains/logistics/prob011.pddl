(DEFINE (PROBLEM LOG02)
   (:DOMAIN LOGISTICS-STRIPS)
   (:OBJECTS PACKAGE1 PACKAGE2 PACKAGE3 PACKAGE4 AIRPLANE1
             AIRPLANE2 PGH BOS LA PGH-TRUCK BOS-TRUCK LA-TRUCK PGH-PO BOS-PO
             LA-PO PGH-CENTRAL BOS-CENTRAL LA-CENTRAL PGH-AIRPORT
             BOS-AIRPORT LA-AIRPORT)
   (:INIT (OBJ PACKAGE1)
          (OBJ PACKAGE2)
          (OBJ PACKAGE3)
          (OBJ PACKAGE4)
          (AIRPLANE AIRPLANE1)
          (AIRPLANE AIRPLANE2)
          (CITY PGH)
          (CITY BOS)
          (CITY LA)
          (TRUCK PGH-TRUCK)
          (TRUCK BOS-TRUCK)
          (TRUCK LA-TRUCK)
          (LOCATION BOS-PO)
          (LOCATION LA-PO)
          (LOCATION PGH-PO)
          (LOCATION BOS-CENTRAL)
          (LOCATION LA-CENTRAL)
          (LOCATION PGH-CENTRAL)
          (AIRPORT BOS-AIRPORT)
          (LOCATION BOS-AIRPORT)
          (AIRPORT PGH-AIRPORT)
          (LOCATION PGH-AIRPORT)
          (AIRPORT LA-AIRPORT)
          (LOCATION LA-AIRPORT)
          (IN-CITY PGH-PO PGH)
          (IN-CITY PGH-AIRPORT PGH)
          (IN-CITY PGH-CENTRAL PGH)
          (IN-CITY BOS-PO BOS)
          (IN-CITY BOS-AIRPORT BOS)
          (IN-CITY BOS-CENTRAL BOS)
          (IN-CITY LA-PO LA)
          (IN-CITY LA-AIRPORT LA)
          (IN-CITY LA-CENTRAL LA)
          (AT PACKAGE1 PGH-PO)
          (AT PACKAGE2 PGH-PO)
          (AT PACKAGE3 PGH-PO)
          (AT PACKAGE4 PGH-PO)
          (AT AIRPLANE1 PGH-AIRPORT)
          (AT AIRPLANE2 PGH-AIRPORT)
          (AT BOS-TRUCK BOS-PO)
          (AT PGH-TRUCK PGH-PO)
          (AT LA-TRUCK LA-PO))
   (:GOAL (AND (AT PACKAGE1 BOS-PO)
               (AT PACKAGE2 LA-AIRPORT)
               (AT PACKAGE3 BOS-PO)
               (AT PACKAGE4 LA-AIRPORT))))