global function2

section .text
function2:
    finit
    fld qword[esp + 8]
    fld st0
    fld st0
    fld st0
    fld st0
    fmulp
    fmulp
    fmulp
    fmulp
    ret