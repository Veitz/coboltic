## COBOL fun

Installation unter Ubuntu 22.04:

sudo apt update
sudo apt install gnucobol4

COBOL-Compiler cobc:

cobc -v     # zeigt die Version

Beispiel: Kompilieren eines COBOL-Programms:

cobc -x helloworld.cob
./helloworld

Beispielprogramm zum Testen:

Speichere das hier in helloworld.cob:

       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLOWORLD.
       PROCEDURE DIVISION.
           DISPLAY "HalloWorld, COBOL unter Ubuntu!".
           STOP RUN.

Dann:

cobc -x helloworld.cob
./helloworld

nützliche Pakete

Wenn du mehr willst (z. B. Dokumentation):

sudo apt install gnucobol4-doc

### Mehrwertsteuer Rechner 19%

coming soon...
