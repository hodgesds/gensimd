// +build amd64 !noasm !appengine

#include "textflag.h"

TEXT ·ptrt0s(SB),$16-12
        MOVL         $0, ret0+8(FP)
block0:
        MOVQ         x+0(FP), R14
        MOVSS        (R14), X15
        MOVSS        X15, t0-4(SP)
        //           $1073741824 = 0000000040000000 = 2(float32)
        MOVQ         $1073741824, R15
        MOVQ         R15, X14
        MOVSS        t0-4(SP), X13
        MOVO         X14, X15
        MULSS        X13, X15
        MOVSS        X15, ret0+8(FP)
        RET

TEXT ·ptrt1s(SB),$40-16
        MOVQ         $0, ret0+8(FP)
block0:
        MOVQ         x+0(FP), R14
        MOVSD        (R14), X15
        MOVSD        X15, t0-8(SP)
        //           $4611686018427387904 = 4000000000000000 = 2(float64)
        MOVQ         $4611686018427387904, R15
        MOVQ         R15, X14
        MOVSD        t0-8(SP), X13
        MOVO         X14, X15
        MULSD        X13, X15
        MOVSD        (R14), X12
        MOVSD        X12, t2-24(SP)
        MOVSD        t2-24(SP), X11
        MOVO         X15, X12
        ADDSD        X11, X12
        MOVSD        X12, ret0+8(FP)
        RET

TEXT ·addf32s(SB),$8-12
        MOVL         $0, ret0+8(FP)
block0:
        MOVSS        x+0(FP), X14
        MOVSS        y+4(FP), X13
        MOVO         X14, X15
        ADDSS        X13, X15
        MOVSS        X15, ret0+8(FP)
        RET

TEXT ·subf32s(SB),$8-12
        MOVL         $0, ret0+8(FP)
block0:
        MOVSS        x+0(FP), X14
        MOVSS        y+4(FP), X13
        MOVO         X14, X15
        SUBSS        X13, X15
        MOVSS        X15, ret0+8(FP)
        RET

TEXT ·negf32s(SB),$8-12
        MOVL         $0, ret0+8(FP)
block0:
        MOVSS        x+0(FP), X13
        XORPD        X14, X14
        MOVO         X14, X15
        SUBSS        X13, X15
        MOVSS        X15, ret0+8(FP)
        RET

TEXT ·mulf32s(SB),$8-12
        MOVL         $0, ret0+8(FP)
block0:
        MOVSS        x+0(FP), X14
        MOVSS        y+4(FP), X13
        MOVO         X14, X15
        MULSS        X13, X15
        MOVSS        X15, ret0+8(FP)
        RET

TEXT ·divf32s(SB),$8-12
        MOVL         $0, ret0+8(FP)
block0:
        MOVSS        x+0(FP), X14
        MOVSS        y+4(FP), X13
        MOVO         X14, X15
        DIVSS        X13, X15
        MOVSS        X15, ret0+8(FP)
        RET

TEXT ·addf64s(SB),$16-24
        MOVQ         $0, ret0+16(FP)
block0:
        MOVSD        x+0(FP), X14
        MOVSD        y+8(FP), X13
        MOVO         X14, X15
        ADDSD        X13, X15
        MOVSD        X15, ret0+16(FP)
        RET

TEXT ·subf64s(SB),$16-24
        MOVQ         $0, ret0+16(FP)
block0:
        MOVSD        x+0(FP), X14
        MOVSD        y+8(FP), X13
        MOVO         X14, X15
        SUBSD        X13, X15
        MOVSD        X15, ret0+16(FP)
        RET

TEXT ·negf64s(SB),$16-16
        MOVQ         $0, ret0+8(FP)
block0:
        MOVSD        x+0(FP), X13
        XORPD        X14, X14
        MOVO         X14, X15
        SUBSD        X13, X15
        MOVSD        X15, ret0+8(FP)
        RET

TEXT ·mulf64s(SB),$16-24
        MOVQ         $0, ret0+16(FP)
block0:
        MOVSD        x+0(FP), X14
        MOVSD        y+8(FP), X13
        MOVO         X14, X15
        MULSD        X13, X15
        MOVSD        X15, ret0+16(FP)
        RET

TEXT ·divf64s(SB),$16-24
        MOVQ         $0, ret0+16(FP)
block0:
        MOVSD        x+0(FP), X14
        MOVSD        y+8(FP), X13
        MOVO         X14, X15
        DIVSD        X13, X15
        MOVSD        X15, ret0+16(FP)
        RET

