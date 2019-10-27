	 AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
		MOV R0, #0						; First number in series
		MOV R1, #1						; Second number in series
		LDR R2, =0x20000000				; Starting memory address where the results will be stored
		MOV R3, #10						; How many numbers we want to compute in series
		STR R0, [R2],#0x1				; Storing first number in memory and incrementing the address
		STR R1, [R2],#0x1				; Storing second number in memory and incrementing the address
		
Loop	ADD R4,R0,R1					; Computing the next number in the series
		STR R4, [R2],#0x1				; Storing number in memory and incrementing the address
		SUB R3,R3,#1					; Decrementing R3 (count ) 
		MOV R0,R1						
		MOV R1,R4
		CMP R3,#0						; Check if we have computed required number in series
		BGT Loop						; If not jump to loop	
		B stop							; If computed stop the program
stop    B stop							; stop program
     ENDFUNC
     END 