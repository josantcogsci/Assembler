// ' Assembly Problem 3 '
// Written by José Antonio Mendoza Chávez
// Wednesday, May 27th, 2020
// E-mail: ja.mendozachavez@gmail.com
// Github: https://github.com/josantcogsci
// LinkedIn: https://www.linkedin.com/in/josantcogsci/

(WHILE)
@i      // if i=0 do...
D=M     // D = i
@END
D;JNE   // if i!=0 go to end
@j
M=M+1   // j = j + 1 -> it will be allocated at RAM[17]
@j      // if j=5  do...
D=M     // D = j
@5
D=D-A   // j = j - 5
@WHILE
D;JNE   // if j-5 != 0 go to while     
@j      
D=M     // D = j
@i      
M=D     // i = j -> it will be allocated at RAM[16]
@WHILE 
@END
(END)
0;JMP // infinite loop 
