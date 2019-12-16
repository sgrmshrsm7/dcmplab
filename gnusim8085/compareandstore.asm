;Write an ALP to store the numbers in given location. If a number is greater than 32H store it from 2000H onwards and if number is less than 83H then store it from 3000H onwards. Source has size of 123 bytes and data block is starting from ABCDH.

MVI A, 123
STA 1000H
LXI H, 0ABCDH
LXI B, 02000H
LXI D, 03000H
start: MOV A, M
CPI 083H
JNC next
STAX B
INX B
INX H
LDA 01000H
DCR A
STA 01000H
JNZ start
JZ end
next: STAX D
INX D
INX H
LDA 01000H
DCR A
STA 01000H
JNZ start
end: HLT
