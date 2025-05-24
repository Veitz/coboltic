## COBOL fun

Installation unter Ubuntu 22.04:

       sudo apt update
       sudo apt install gnucobol4  
       (Raspberry-Pi-OS: sudo apt install gnucobol)

COBOL-Compiler cobc:

       cobc -v     # zeigt die Version

Beispiel: Kompilieren eines COBOL-Programms:

       cobc -x helloworld.cob  

Der Aufruf des Programms:  

       ./helloworld

Beispielprogramm zum Testen:

Speichere das hier in helloworld.cob:

       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLOWORLD.
       PROCEDURE DIVISION.
           DISPLAY "HalloWorld, COBOL unter Ubuntu!".
           STOP RUN.


nützliche Pakete

Wenn du z. B. Dokumentation willst:

       sudo apt install gnucobol4-doc  


    
### Mehrwertsteuer Rechner 19%

NettoBruttoCalc.cob ist ein 19%mwst Rechner, der aus Netto das Brutto berechnet.
