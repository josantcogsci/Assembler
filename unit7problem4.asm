// ' Assembly Problem 4 '
// Written by José Antonio Mendoza Chávez
// Wednesday, May 27th, 2020
// E-mail: ja.mendozachavez@gmail.com
// Github: https://github.com/josantcogsci
// LinkedIn: https://www.linkedin.com/in/josantcogsci/

@addr    // addr = 0 --> will be allocated at RAM[16]
M=0
@5       // i = 5 --> will be allocated at RAM[17]
D=A
@i
M=D
(Loop)   // do...
@i       //     RAM[addr] = n
D=M
@addr
A=M
M=D
@addr    //     addr = addr+1
M=M+1
@1       //     i = i-1
D=A
@i
MD=M-D   // (tricky: also leaves new 'i' value in D)
@5       //  while i <= 5
D=M-D
@Loop
D;JLE    // Jump to the loop while (i - 5) <= 0
@End 
(End)    
0;JMP    // infinite loop