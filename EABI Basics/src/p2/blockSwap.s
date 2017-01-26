; Filename:     blockSwap
; Author:       ECE353 Staff 
; Description:  
    export blockSwap


    
    
;Indicating where the CODE section of the program starts
    AREA    FLASH, CODE, READONLY


;*************************************************
; Function: blockSwap
;
; Description
; Swaps two blocks of memory in-band (i.e. it does
; not stash data in a temporary location in SRAM)
;
; Inputs
;   ARGUMENT 1 - Block Address 1
;   ARGUMENT 2 - Block Address 2
;   ARGUMENT 3 - Number of Words 
;
; Output
;   0 for success, non-zero for failure
;*************************************************
blockSwap

    BX LR
    END