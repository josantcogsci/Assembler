// ' Assembly Problem 1 '
// Written by José Antonio Mendoza Chávez
// Wednesday, May 27th, 2020
// E-mail: ja.mendozachavez@gmail.com
// Github: https://github.com/josantcogsci
// LinkedIn: https://www.linkedin.com/in/josantcogsci/

@5       // sets constant 5 into A register
D=A     // sets the constant 5 into D register
@j        // sets RAM address of j in A register
M=D    // records D register to RAM [A]
@i
M=1
(LOOP)
@i
D=M // D=i
@5
D=D-A // D=i-5
@END
D;JGE // "if" (i - 5) >= 0 goto END --- > when i > 5
@i
D=M // D=i
@j
M=M-1 // j=j-1
@i
M=M+1 // i=i+1
@LOOP
0;JMP // goto LOOP
@END
(END)
0;JMP // infinite loop