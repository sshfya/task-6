global function1

section .text
function1:
    push ebp
    mov ebp,esp
    
    finit
    fld qword[ebp + 8]
    fld st0
    frndint
    fsub st1, st0
    fld1
    fscale
    fld st2
    f2xm1
    fld1
    faddp
    fmulp
    fld1
    faddp
    
    mov esp,ebp
    pop ebp
    ret