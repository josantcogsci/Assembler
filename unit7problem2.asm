// ' Assembly Problem 2 '
// Written by José Antonio Mendoza Chávez
// Wednesday, May 27th, 2020
// E-mail: ja.mendozachavez@gmail.com
// Github: https://github.com/josantcogsci
// LinkedIn: https://www.linkedin.com/in/josantcogsci/

@4      // sets the constant 4 into A register
D=A     // sets the constant 4 into D register
@i      // sets RAM address of 1 in A register
M=D     // records D register to RAM[A]
@i
D=M     // D=i
@5
D=D-A   // D=i-5 --> D = -4
@ELSE
D;JGE   // Jump to the else block if (i - 5) >= 0
    // If block
@3      // puts the constant 3 into A register
D=A     // puts the constant 3 into D register
@j      // Load j’s address into A ----- j = 3 will be allocated at RAM[17]
M=D     // Set j’s value in RAM to 3 value
@ENDIF
0;JMP   // Skips the else block
(ELSE)  // Else block
@2      // The next several Hack instructions perform
D=A
@j      // Load j’s address into A ----- j = 2 will be allocated at RAM[17]
M=D
@END
(ENDIF)
0;JMP // infinite loop
