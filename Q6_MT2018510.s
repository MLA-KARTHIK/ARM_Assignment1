	 AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
		MOV R0, #6						; First number 
		MOV R1, #69						; Second number
		MOV R2, #0						; Result will be stored in R2
WHILE	CMP R0, R1						; Start of while loop by comapring if R0 and R1 are equal. If equal enter loop
		BEQ ENDWHILE					; End the loop if both are equal
		CMP R0,	R1						; Compare if R0 > R1
		ITE GT							; IF then else 
		SUBGT R0,R0,R1					; if the condition block is correct this statemenet will be executed
		SUBLE R1,R1,R0					; if the condition block is wrong this statement will be executed
		B WHILE							; Again re-run the loop
ENDWHILE								; End of loop
		MOV R2,R1						; Store the result in R2
stop    B stop 							; stop program			     
	 ENDFUNC
     END 