	 AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
		MOV R0, #56						; First number 
		MOV R1, #0						; Result to be stored here if it's even
		MOV R2, #0						; Result to be stored here if it's odd
		MOV R3, #2						; Storing No 2 in R3 to divide given number
		MOV R4, R0						; Copy the given number from R0 to R4
		SDIV R5,R4,R3					; Divide the number by 2 and store the quotient in R5
		MUL R6,R5,R3					; Multiply the quotient and number 2 and check if its results in given number
		CMP R6,R0
		BEQ Loop1						; If the result of multiplication is given number then number is even else its odd number.
		MOV R2, R0
		B stop
Loop1	MOV R1, R0		
stop    B stop 							; stop program			     
	 ENDFUNC
     END 