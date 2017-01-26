; Filename:     main.s 
; Author:       REPLACE WITH YOUR NAMES 
; Description:  
    export __main
    import copyDigit

    
    
;Indicating where the CODE section of the program starts
    AREA    FLASH, CODE, READONLY


            

;**********************************************
; main program start
;**********************************************
__main
    MOV     R0, #0
    MOV     R1, #0x20000000
    BL      copyDigit
    
    MOV     R0, #15
    MOV     R1, #0x20000000
    BL      copyDigit
    
    MOV     R0, #-1
    MOV     R1, #0x20000000
    BL      copyDigit
    
    MOV     R0, #16
    MOV     R1, #0x20000000
    BL      copyDigit
    
    B        __main
    ALIGN

    END