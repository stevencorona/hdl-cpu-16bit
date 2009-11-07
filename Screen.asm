(LOOP)

@KBD
D=M
@DOSCREEN // Fill the screen because a key is pressed!
D;JGT
@CLEARSCREEN // Clear the screen when a key is not held!
D;JEQ

@LOOP // Loop forever
0;JMP

(DOSCREEN)

@i		// set i to 0
M=0

(DOSCREENLOOP)
@i
D=M
@8192
D=D-A  // i - 8192
@LOOP
D;JGT  // if (i-8192) > 0 goto LOOP

@i
D=M			// store i in a register for the next piece

@SCREEN
A=A+D		// increment the screen address by i
M=!M		// flip the bits to darken this portion of the screen

@i			
M=M+1  // increment i by 1

@DOSCREENLOOP
0;JMP