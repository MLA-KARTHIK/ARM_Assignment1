	 AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
		MOV R0, #40						; First number 
		MOV R1, #80						; Second number 
		MOV R2, #33						; Third number
		MOV R3, #0						; Result will be stored in R3
		CMP R0,R1						; Check if R0 is greater than R1 and branch to loop1 if greater
		BGT Loop1						
		CMP R1,R2						; If R1 is greater than R0, check if R1 is greater than R2 as well and jump to Loop3 if so
		BGT Loop3
		MOV R3,R2						; Storing R2 to R3 if R2 is greater than all of them
		B stop							; Branch to end the pgm
Loop1	CMP R0,R3						; If R0 was greater than R1, check if R0 is greater than R2 as weel and jump to Loop2 if so
		BGT Loop2				
Loop2	MOV R3,R0						; Store R0 to R3 if R3 is greater than all of them
		B stop							; Branch to end the pgm
Loop3	MOV R3,R1						; If R1 is greater of all , store in R3 
stop    B stop 							; stop program			    
	 ENDFUNC
     END 