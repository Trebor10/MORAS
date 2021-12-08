@18438
D = A

@address
M = D

@i
M = 0

@i2
M = 0

@i3
M = 0

@hi
M = 0

@i4
M = 0

@i5
M = 0

(LOOP_START)

	@128
	D = A 
	
	@i 
	D = M - D 
	
	@LOOP_END
	D; JGE
	
    
	@address
	A = M
	M = 1
	
	@i
	M = M + 1 
	
	@32
	D = A 
	
	@address
	M = M + D 
	
	
	@LOOP_START
	0; JMP
	
(LOOP_END)

(LOOP_START2)

	@8
	D = A 
	
	@i2
	D = M - D 
	
	@LOOP_END2
	D; JGE
	
	@address
	A = M
	M = -1 
	
	@i2
	M = M + 1 
	
	@address
	M = M + 1 
	
	
	@LOOP_START2
	0; JMP
	
(LOOP_END2)

@18470
D = A

@address
M = D

@i3
M = 0

@1
D = A

@adr
M = D

(LOOP_START3)
    
    @15
    D = A
    
    @i3
    D = M - D
    
    @LOOP_END3
    D; JGE
     
    @adr
    D = M
    M = M + D
        
    @adr
    D = M
    
    @address
	A = M
	M = D + 1
    
    
    @i3
    M = M + 1
    
    @32
    D = A
    
    @address
    M = M + D
    
    @LOOP_START3
    0; JMP
    
    
(LOOP_END3)

@i4
M = 0

@address
A = M + 1
M = 1

(LOOP_START4)
   
    @7
    D = A
    
    @i4
    D = M - D
    
    @LOOP_END4
    D; JGE
    
    
    
    @33
    D = A
       
    @address
    M = M + D
    A = M
    M = 1
    

    
    @i5 
    M = 0
    
    @1
    D = A

    @adr
    M = D
    
    
    (LOOP_START5)
    
        @15
        D = A
    
        @i5
        D = M - D
    
        @LOOP_END5
        D; JGE
     
        @adr
        D = M
        M = M + D
        
        @adr
        D = M
    
        @address
        A = M
        M = D
    
    
        @i5
        M = M + 1
    
        @32
        D = A
        
        
        @address
        M = M + D
    
        @LOOP_START5
        0; JMP
    
    (LOOP_END5)
    
    @address
    A = M + 1
    M = 1
    
    @i4
    M = M + 1
    
    @1
    D = A
    
    
    @LOOP_START4
    0; JMP
    
(LOOP_END4)  

(END)
@END
0; JMP