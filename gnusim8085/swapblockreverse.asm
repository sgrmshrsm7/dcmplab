;Write an ALP to exchange the data block of 221 bytes first block starting from memory location AAAAH and second block starting from CCCCH. Data should be exchanged in reverse order, first byte exchanged with last and so on.

LXI H, 0AAAAH
LXI D, 0CCCCH
MVI C, 0DDH
start: MOV A, M
MOV B, A
LDAX D
MOV M, A
MOV A, B
STAX D
INX H
DCX D
DCR C
JNZ start
hlt
