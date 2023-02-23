*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $400
START:                  ; first instruction of program

* Put program code here
        LEA     DATA,A0         *A0 points at DATA
        MOVE    KEY,D1          *Put the key in D1 
        MOVE.B  #0,D0           *D0 the counter of the loop
LOOP    CMP     (A0)+,D1        *compare the key and this element
        BNE     ELSE            *if not equal go to else
        MOVE.B  D0,OINDEX       *if equal store the index/counter in OINDEX
        BRA     EXIT            *then exit the loop
ELSE    ADD     #1,D0           *increment counter D0
        CMP     #10,D0          *check for next iteration
        BNE     LOOP            *if counter not equal 10 go to loop
EXIT    
    SIMHALT             ; halt simulator

* Put variables and constants here
    ORG     $1000
DATA    DC.W    13,15,14,68,-3,20,85,30,1,19
KEY     DC.W    1
    ORG     $2000
OINDEX  DS.B    1
    END    START        ; last line of source



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
