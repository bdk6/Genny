#include "avr/io.h"



.global generate
generate:
        
fn2:
        //sts temp1, r0
        //sts temp2, r1
        //pop r0              ;  high byte on top
        //pop r1              ;  low byte next
        //sts addr2, r1       ; low byte of pc
        //sts addr2+1, r0     ; high byte of pc
        
        in r0, _SFR_IO_ADDR(SPL)  ; see how sp corresponds to value pushed
        sts sineData,r0
        in r0, _SFR_IO_ADDR(SPH)
        sts sineData+1, r0
        
        push r0
        lds r0, sineData
        push r0
        pop r0
        pop r0
        lds r0, sineData + 3
        
        //push r1
        //push r0
        lds r0, sineData+4
        lds r1, sineData+5
        ret
        
