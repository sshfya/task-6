global function1

section .text
function1:
    finit
    push ebp
    mov ebp,esp
    
    fld dword[ebp+8]
    fld1
    fscale
    
    fld1
    fadd
    
    fstp  
    
    mov esp,ebp
    pop ebp
    ret
 

