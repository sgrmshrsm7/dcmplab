;Assembly Program to calculate sum of 6 elemets in the array stored in memory starting from 0000H

MVI H, 00H
MVI L, 00H
MVI B, 06H
loop: MOV A, M
ADD E
MOV E, A
INR L
MOV A, B
SUI 01H
MOV B, A
JNZ loop
MOV A, E
STA 0006H
HLT
