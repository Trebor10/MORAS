@SCREEN
D = A

@address
M = D

@i
M = 0

@boxcount
M = 0

@currentrow
M = 0

(LOOP_NOANIM)
    
    @KBD
    D = M
    
    @LOOP_CHECK
    D; JEQ
    
    @LOOP_NOANIM
    0; JMP

(LOOP_NOANIM_END)

(LOOP_CHECK_FULL)
    
    @48
    D = A
    
    @KBD
    D = M - D
    
    @LOOP_START0
    D; JEQ
    
    @LOOP_CHECK_FULL
    0; JMP

(LOOP_CHECK_FULL_END)

(LOOP_CHECK)
    
    @8160
    D = A
    
    @boxcount
    D = D - M
    
    @LOOP_CHECK_FULL
    D; JEQ
    
    @LOOP_NEWROW_END
    0; JMP
    
    (LOOP_NEWROW)
        
        @512
        D = A
        
        @boxcount
        M = M + D
        
        @currentrow
        M = 0
        
    (LOOP_NEWROW_END)
    
    
    @32
    D = A
    
    @currentrow
    D = M - D
    
    @LOOP_NEWROW
    D; JEQ
    
    @48
    D = A
    
    @KBD
    D = M - D
    
    @LOOP_START0
    D; JEQ
    
    @49
    D = A
    
    @KBD
    D = M - D
    
    @LOOP_START
    D; JEQ
    
    @50
    D = A
    
    @KBD
    D = M - D
    
    @LOOP_START2
    D; JEQ
    
    @51
    D = A
    
    @KBD
    D = M - D
    
    @LOOP_START3
    D; JEQ
    
    @52
    D = A
    
    @KBD
    D = M - D
    
    @LOOP_START4
    D; JEQ
    
    @53
    D = A
    
    @KBD
    D = M - D
    
    @LOOP_START5
    D; JEQ
    
    @LOOP_CHECK
    0; JMP
    
(LOOP_CHECK_END)

(LOOP_START)

    @boxcount
    D = M
    
    @address
    M = M + D

    @i
    M = 0
    
    (LOOP_HELP1)
        @32
        D = A
    
        @address
        M = M + D
    
        @14
        D = A
    
        @i
        D = M - D
    
        @LOOP_HELP_END1
        D; JGE
    
        @12288
        D = A
    
        @address
        A = M
        M = D
    
        @i
        M = M + 1
    
        @LOOP_HELP1
        0;JMP
    
    (LOOP_HELP_END1)
    
    @SCREEN
    D = A
    
    @address
    M = D
    
    @boxcount
    M = M + 1
    
    @currentrow
    M = M + 1
    
    @LOOP_NOANIM
    0; JMP
    
(LOOP_END)

(LOOP_START2)

    @boxcount
    D = M
    
    @address
    M = M + D
    
    @hi
    M = 0

    (LOOP_HELP2)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @2
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END2
        D; JGE
        
        @16368
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP2
        0;JMP
           
    (LOOP_HELP_END2)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP2b)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @4
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END2b
        D; JGE
        
        @12288
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP2b
        0;JMP
           
    (LOOP_HELP_END2b)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP2c)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @2
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END2c
        D; JGE
        
        @16368
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP2c
        0;JMP
           
    (LOOP_HELP_END2c)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP2d)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @4
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END2d
        D; JGE
        
        @48
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP2d
        0;JMP
           
    (LOOP_HELP_END2d)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP2e)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @2
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END2e
        D; JGE
        
        @16368
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP2e
        0;JMP
           
    (LOOP_HELP_END2e)
    
    @SCREEN
    D = A
    
    @address
    M = D
    
    @boxcount
    M = M + 1
    
    @currentrow
    M = M + 1
    
    @LOOP_NOANIM
    0; JMP
    
(LOOP_END2)

(LOOP_START3)

    @boxcount
    D = M
    
    @address
    M = M + D

    @hi
    M = 0

    (LOOP_HELP3)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @2
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END3
        D; JGE
        
        @16368
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP3
        0;JMP
           
    (LOOP_HELP_END3)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP3b)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @4
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END3b
        D; JGE
        
        @12288
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP3b
        0;JMP
           
    (LOOP_HELP_END3b)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP3c)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @2
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END3c
        D; JGE
        
        @16368
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP3c
        0;JMP
           
    (LOOP_HELP_END3c)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP3d)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @4
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END3d
        D; JGE
        
        @12288
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP3d
        0;JMP
           
    (LOOP_HELP_END3d)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP3e)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @2
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END3e
        D; JGE
        
        @16368
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP3e
        0;JMP
           
    (LOOP_HELP_END3e)
    
    @SCREEN
    D = A
    
    @address
    M = D
    
    @boxcount
    M = M + 1
    
    @currentrow
    M = M + 1
    
    @LOOP_NOANIM
    0; JMP
    
    
(LOOP_END3)

(LOOP_START4)

    @boxcount
    D = M
    
    @address
    M = M + D

    @hi
    M = 0

    (LOOP_HELP4)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @6
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END4
        D; JGE
        
        @12336
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP4
        0;JMP
           
    (LOOP_HELP_END4)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP4b)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @2
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END4b
        D; JGE
        
        @16368
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP4b
        0;JMP
           
    (LOOP_HELP_END4b)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP4c)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @6
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END4c
        D; JGE
        
        @12288
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP4c
        0;JMP
           
    (LOOP_HELP_END4c)
    
    @SCREEN
    D = A
    
    @address
    M = D
    
    @boxcount
    M = M + 1
    
    @currentrow
    M = M + 1
    
    @LOOP_NOANIM
    0; JMP
       
(LOOP_END4)


(LOOP_START5)

    @boxcount
    D = M
    
    @address
    M = M + D

    @hi
    M = 0
    
    (LOOP_HELP5)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @2
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END5
        D; JGE
        
        @16368
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP5
        0;JMP
           
    (LOOP_HELP_END5)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP5b)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @4
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END5b
        D; JGE
        
        @48
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP5b
        0;JMP
           
    (LOOP_HELP_END5b)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP5c)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @2
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END5c
        D; JGE
        
        @16368
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP5c
        0;JMP
           
    (LOOP_HELP_END5c)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP5d)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @4
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END5d
        D; JGE
        
        @12288
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP5d
        0;JMP
           
    (LOOP_HELP_END5d)
    
    @hi
    M = 0
    
    @32
    D = A
    
    @address
    M = M - D
    
    (LOOP_HELP5e)
        
        @32
        D = A
        
        @address
        M = M + D
        
        @2
        D = A
        
        @hi
        D = M - D
        
        @LOOP_HELP_END5e
        D; JGE
        
        @16368
        D = A
        
        @address
        A = M
        M = D
    
        @hi
        M = M + 1
    
        @LOOP_HELP5e
        0;JMP
           
    (LOOP_HELP_END5e)
    
    @SCREEN
    D = A
    
    @address
    M = D
    
    @boxcount
    M = M + 1
    
    @currentrow
    M = M + 1
    
    @LOOP_NOANIM
    0; JMP
    
(LOOP_END5)

(LOOP_START0)

    @boxcount
    D = M
    
    @LOOP_CHECK
    D; JEQ
    
    @currentrow
    D = M
    
    @LOOP_HELP0a
    D; JGT
    
    @31
    D = A
    
    @currentrow
    M = D
    
    @513
    D = A
    
    @boxcount
    M = M - D
    D = M
    
    
    @LOOP_HELP0a_END
    0; JMP
    
    (LOOP_HELP0a)
    @boxcount
    M = M - 1
    D = M
    
    @currentrow
    M = M - 1
    (LOOP_HELP0a_END)
    
    @boxcount
    D = M
    
    @address
    M = M + D

    @i
    M = 0
    
    (LOOP_HELP0)
        @32
        D = A
    
        @address
        M = M + D
    
        @14
        D = A
    
        @i
        D = M - D
    
        @LOOP_HELP_END0
        D; JGE
    
        @address
        A = M
        M = 0
    
        @i
        M = M + 1
    
        @LOOP_HELP0
        0;JMP
    
    (LOOP_HELP_END0)
    
    @SCREEN
    D = A
    
    @address
    M = D
    
    @LOOP_NOANIM
    0; JMP
    
(LOOP_END0)

(END)
@END
0; JMP