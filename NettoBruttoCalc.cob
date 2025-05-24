       IDENTIFICATION DIVISION.
       PROGRAM-ID. NettoBruttoRechner.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NETTOPREIS        PIC 9(5)V99.
       77 MWST              PIC 9(5)V99 VALUE 0.
       77 BRUTTOPREIS       PIC 9(5)V99 VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "Gib den Nettopreis ein (z. B. 100.00): "
           ACCEPT NETTOPREIS

           COMPUTE MWST = NETTOPREIS * 0.19
           COMPUTE BRUTTOPREIS = NETTOPREIS + MWST

           DISPLAY "-------------------------------"
           DISPLAY "Nettopreis  : " NETTOPREIS
           DISPLAY "MwSt 19%    : " MWST
           DISPLAY "Bruttopreis : " BRUTTOPREIS
           DISPLAY "-------------------------------"

           STOP RUN.
