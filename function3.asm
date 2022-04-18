global function3
section .text
function3:
    finit
    fld1
    fld qword[esp + 8]
    fsubp st1, st0
    fld1
    fld1
    fld1
    faddp
    faddp
    fld st1
    fdivrp
    ret

