;WAP to generate a 50% duty cycle pulse using a PIN 2.3 of microcontroller
;OR
;Blink a LED, with equal on and off time, connected to PIN 2.3

ORG 00H
CLR P2.3
BACK:
CLR P2.3
LCALL DELAY
SETB P2.3
LCALL DELAY
SJMP BACK
ORG 300H
DELAY:
MOV R5, #64H
AGAIN:
MOV R4, #0FFH
AGAN:
MOV R3, #08H
AGA:
DJNZ R3, AGA
DJNZ R4, AGAN
DJNZ R5, AGAIN
RET
END