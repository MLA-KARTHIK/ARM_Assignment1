	 AREA     appcode, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
		MOV R0, #3
		MOV R1, #5
		MOV R2, #9
		CMP R0,R1
		ITTE GT
		CMP R1,R2
		ITE GT
		SUBGT R1,R1,R1
		SUBLT R2,R2,R2
		SUBLT R3,R3,R3
stop    B stop 							; stop program			     
	 ENDFUNC
     END 
	 
	 
	 ; Following errors were seen when tried nested if
	 ;first.s(10): error: A1619E: Specified condition is not consistent with previous IT
	 ;first.s(11): error: A1603E: This instruction inside IT block has UNPREDICTABLE results
	 ;first.s(12): error: A1619E: Specified condition is not consistent with previous IT
	 ;".\Objects\first.axf" - 3 Error(s), 0 Warning(s).