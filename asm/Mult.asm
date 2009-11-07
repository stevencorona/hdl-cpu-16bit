@i
M=0

@R2 // reset value of r2, holds the solution
M=0

@pos // the bitmask to create the right value to add
M=1

(LOOP)

@R1 // assemble the bitmask
D=M

@pos // or @pos and @R1. if it's 1, we add. if it's 0, skip
D=D&M

@DOUBLE // skip if it's equal to 0
D;JEQ

@R0
D=M  // value to add

@val
M=D

@i  // don't bit shift if this is the first loop
D=M
@ADDTOSOLUTION
D;JEQ

@i
D=M
@count // set temp to be the value of i
M=D

// shift it to the left by current pos
(SHIFT)

	@val
	D=M
	M=M+D

	// count down til we get to 0
	@count
	M=M-1
	D=M

	@SHIFT
	D;JGT

(ADDTOSOLUTION)

	@val
	D=M

	@R2
	M=M+D // add it the solution


(DOUBLE)
	@pos // double the pos so it's accurate for the next run
	D=M
	M=M+D

(LOOPHANDLE)
	@15     // if ( i -15 ) > 0 LOOP
	D=A

	@i			// incr i by 1
	M=M+1
	D=M-D

	@LOOP
	D;JLT

(END)
	@END
	0;JMP
