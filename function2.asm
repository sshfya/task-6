global function2

section .text
function2:
    push ebp
    mov ebp,esp
    finit
    fld qword[ebp + 8]
    fld st0
    fld st0
    fld st0
    fld st0
    fmulp
    fmulp
    fmulp
    fmulp
    
    mov esp,ebp
    pop ebp
    ret