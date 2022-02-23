;2 bit display
;00-99

ORG 00H
MOV P2, #00H
MOV P1,#00H
MOV R6,#00H
MOV R7,#00H
MOV DPTR, #DIGITS
MSB: MOV A, R6
MOVC A, @A+DPTR
MOV P2, A
LSB:MOV A, R7
MOVC A, @A+DPTR
MOV P1, A
LCALL DELAY

INC R7
CJNE R7,#0AH, LSB
MOV R7, #00H
INC R6
CJNE R6,#0AH, MSB
MOV R6, #00H
SJMP MSB

DELAY: MOV R3, #0F0H
DEL1: MOV R2, #0FAH
DEL2: DJNZ R2, DEL2
DJNZ R3, DEL1
RET

DIGITS:
DB 3FH, 06H, 5BH, 4FH, 66H
DB 6DH, 7DH, 07H, 7FH, 6FH

END