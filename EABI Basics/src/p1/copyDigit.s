    export copyDigit


    AREA    FLASH, CODE, READONLY

    
;******************************************************************************
; Description
; Copies 8 Bytes of data from one location to another
;
; Input Parameters
; ARGUMENT 1 : Number from 0-15
; ARGUMENT 2 : Destination Address
;
; Output
; Returns 0 on success and non-zero for failure
;******************************************************************************
copyDigit
    
    ; Return  
    BX  LR

 
    ALIGN
 
    
    END   
