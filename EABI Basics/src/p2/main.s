; Filename:     main.s 
; Author:       REPLACE WITH YOUR NAMES 
; Description:  
    export __main
    import blockSwap

WORD    EQU     4
    
;Indicating where the CODE section of the program starts
    AREA    FLASH, CODE, READONLY


;**********************************************
; main program start
;**********************************************
__main    
 
    LDR      R0, =(ARRAY1)
    LDR      R1, =(ARRAY2)
    MOV      R2, #16
    
    MOV      R4, #0
    MOV      R5, #1
forLoop
    CMP      R4, #16
    BEQ     forLoopDone
    LSL      R6, R5, R4
    STR      R6, [R0],#4
    ORR      R6, R6, #0x80000000
    STR      R6, [R1],#4
    ADD      R4, #1
    B        forLoop
    
forLoopDone    
    
    LDR      R0, =(ARRAY1)
    LDR      R1, =(ARRAY2)
    MOV      R2, #17
    BL       blockSwap
    
    LDR      R0, =(ARRAY1)
    LDR      R1, =(ARRAY2)
    MOV      R2, #-1
    BL       blockSwap
    
    MOV32    R0, #0x0000FFFF
    LDR      R1, =(ARRAY2)
    MOV      R2, #16
    BL       blockSwap
    
    LDR      R0, =(ARRAY1)
    MOV32    R1, #0x0000FFFF
    MOV      R2, #16
    BL       blockSwap
    
    MOV32    R0, #0x2000FFFF
    LDR      R1, =(ARRAY2)
    MOV      R2, #16
    BL       blockSwap
    
    LDR      R0, =(ARRAY1)
    MOV32    R1, #0x2000FFFF
    MOV      R2, #16
    BL       blockSwap
    
    B        __main
    ALIGN
    AREA    SRAM, READWRITE
ARRAY1   SPACE      WORD*16
ARRAY2   SPACE      WORD*16

        END  