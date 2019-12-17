;Write an ALP to perform addition of 16-bit data. Data block is stored in memory location starting from 2000H and second block starting from 3000H. Size of data block is 10 bytes. Store the result of 16 bit addition in memory location starting from 4000H onwards.
	
LXI H, 02000H
LXI D, 03000H
LXI B, 04000H
MVI A, 06
STA 0300H
loop: LDAX D
ADD M
STAX B
INX H
INX D
INX B
LDAX D
ADC M
STAX B
LDA 0300H
DCR A
STA 0300H
INX H
INX D
INX B
JNZ loop
HLT