;Counter 0-9

MOV P2, #00H
BACK:
MOV P2, #3FH
LCALL DELAY
MOV P2, #06H
LCALL DELAY
MOV P2, #5BH
LCALL DELAY
MOV P2, #4FH
LCALL DELAY
MOV P2, #66H
LCALL DELAY
MOV P2, #6DH
LCALL DELAY
MOV P2, #7DH
LCALL DELAY
MOV P2, #07H
LCALL DELAY
MOV P2, #7FH
LCALL DELAY
MOV P2, #6FH
LCALL DELAY
SJMP BACK
ORG 300H
DELAY:
MOV R5, #64H
AGAIN: MOV R4, #0FFH
AGAN: MOV R3, #08H
AGA: DJNZ R3, AGA
DJNZ R4, AGAN
DJNZ R5, AGAIN
RET
END