// Copyright 2014 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

#include "textflag.h"

// func Cpuid(rax, rcx uint) (_rax, _rbx, _rcx, _rdx uintptr_t)
TEXT ·Cpuid(SB), NOSPLIT, $0-48
       MOVQ rax+0(FP), AX
       MOVQ rcx+8(FP), CX
       CPUID
       MOVQ AX, _rax+16(FP)
       MOVQ BX, _rbx+24(FP)
       MOVQ CX, _rcx+32(FP)
       MOVQ DX, _rdx+40(FP)
       RET

