;Assembly Program for swapping 2 numbers

LDA 0000H
MOV B, A
LDA 0001H
STA 0000H
MOV A, B
STA 0001H
HLT