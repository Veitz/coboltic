       IDENTIFICATION DIVISION.
       PROGRAM-ID. NettoBruttoRechner.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NETTOPREIS        PIC 9(6)V99.
       77 MWST              PIC 9(6)V99 VALUE 0.
       77 BRUTTOPREIS       PIC 9(6)V99 VALUE 0.
       77 ANTWORT           PIC X VALUE "J".
       77 WEITERMACHEN      PIC X VALUE "J".

       PROCEDURE DIVISION.

       HAUPTPROGRAMM.
           DISPLAY "MERKE: Du kannst maximal 6 stellige Zahlenwerte " 
                   "mit 2 Nachkommastellen verwenden!"
           PERFORM UNTIL WEITERMACHEN = "N"
               PERFORM BERECHNUNG
               DISPLAY "Neue Berechnung? (J/N): "
               ACCEPT ANTWORT
               INSPECT ANTWORT CONVERTING "abcdefghijklmnopqrstuvwxyz"
                                   TO      "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
               IF ANTWORT = "J"
                   MOVE "J" TO WEITERMACHEN
               ELSE
                   MOVE "N" TO WEITERMACHEN
               END-IF
           END-PERFORM.

           DISPLAY "Programm beendet. Auf Wiedersehen!".
           STOP RUN.

       BERECHNUNG.
           DISPLAY "Gib den Nettopreis ein (z. B. 123456.78): ".
           ACCEPT NETTOPREIS.

           COMPUTE MWST = NETTOPREIS * 0.19.
           COMPUTE BRUTTOPREIS = NETTOPREIS + MWST.

           DISPLAY "-------------------------------".
           DISPLAY "Nettopreis  : " NETTOPREIS.
           DISPLAY "MwSt 19%    : " MWST.
           DISPLAY "Bruttopreis : " BRUTTOPREIS.
           DISPLAY "-------------------------------".
