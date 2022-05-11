global function3
section .text
function3:
    push ebp
    mov ebp,esp
    finit
    fld1
    fld qword[ebp + 8]
    fsubp st1, st0
    fld1
    fld1
    fld1
    faddp
    faddp
    fld st1
    fdivrp
    mov esp,ebp
    pop ebp
    ret

