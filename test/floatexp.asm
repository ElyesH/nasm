;Testname=unoptimized; Arguments=-O0 -fbin -ofloatexp.bin; Files=stdout stderr floatexp.bin
;Testname=optimized;   Arguments=-Ox -fbin -ofloatexp.bin; Files=stdout stderr floatexp.bin

	bits 64
;
; Test of floating-point formats
;

; 8-bit
	mov al,__float8__(1.0)
	mov al,__float8__(+1.0)
	mov al,__float8__(-1.0)
	mov al,__float8__(0.0)
	mov al,__float8__(+0.0)
	mov al,__float8__(-0.0)
	mov al,__float8__(1.83203125)
	mov al,__float8__(+1.83203125)
	mov al,__float8__(-1.83203125)
	mov al,__float8__(1.83203125e1)
	mov al,__float8__(+1.83203125e1)
	mov al,__float8__(-1.83203125e1)
	mov al,__float8__(1.83203125e-1)
	mov al,__float8__(+1.83203125e-1)
	mov al,__float8__(-1.83203125e-1)
	mov al,__float8__(1.13203125e-2)		; Denormal!
	mov al,__float8__(+1.13203125e-2)		; Denormal!
	mov al,__float8__(-1.13203125e-2)		; Denormal!
	mov al,__float8__(__Infinity__)
	mov al,__float8__(+__Infinity__)
	mov al,__float8__(-__Infinity__)
	mov al,__float8__(__NaN__)
	mov al,__float8__(__QNaN__)
	mov al,__float8__(__SNaN__)

; 16-bit
	mov ax,__float16__(1.0)
	mov ax,__float16__(+1.0)
	mov ax,__float16__(-1.0)
	mov ax,__float16__(0.0)
	mov ax,__float16__(+0.0)
	mov ax,__float16__(-0.0)
	mov ax,__float16__(1.83203125)
	mov ax,__float16__(+1.83203125)
	mov ax,__float16__(-1.83203125)
	mov ax,__float16__(1.83203125e3)
	mov ax,__float16__(+1.83203125e3)
	mov ax,__float16__(-1.83203125e3)
	mov ax,__float16__(1.83203125e-3)
	mov ax,__float16__(+1.83203125e-3)
	mov ax,__float16__(-1.83203125e-3)
	mov ax,__float16__(1.83203125e-6)		; Denormal!
	mov ax,__float16__(+1.83203125e-6)		; Denormal!
	mov ax,__float16__(-1.83203125e-6)		; Denormal!
	mov ax,__float16__(__Infinity__)
	mov ax,__float16__(+__Infinity__)
	mov ax,__float16__(-__Infinity__)
	mov ax,__float16__(__NaN__)
	mov ax,__float16__(__QNaN__)
	mov ax,__float16__(__SNaN__)

; 32-bit
	mov eax,__float32__(1.0)
	mov eax,__float32__(+1.0)
	mov eax,__float32__(-1.0)
	mov eax,__float32__(0.0)
	mov eax,__float32__(+0.0)
	mov eax,__float32__(-0.0)
	mov eax,__float32__(1.83203125)
	mov eax,__float32__(+1.83203125)
	mov eax,__float32__(-1.83203125)
	mov eax,__float32__(1.83203125e15)
	mov eax,__float32__(+1.83203125e15)
	mov eax,__float32__(-1.83203125e15)
	mov eax,__float32__(1.83203125e-15)
	mov eax,__float32__(+1.83203125e-15)
	mov eax,__float32__(-1.83203125e-15)
	mov eax,__float32__(1.83203125e-40)		; Denormal!
	mov eax,__float32__(+1.83203125e-40)		; Denormal!
	mov eax,__float32__(-1.83203125e-40)		; Denormal!
	mov eax,__float32__(__Infinity__)
	mov eax,__float32__(+__Infinity__)
	mov eax,__float32__(-__Infinity__)
	mov eax,__float32__(__NaN__)
	mov eax,__float32__(__QNaN__)
	mov eax,__float32__(__SNaN__)

; 64-bit
	mov rax,__float64__(1.0)
	mov rax,__float64__(+1.0)
	mov rax,__float64__(-1.0)
	mov rax,__float64__(0.0)
	mov rax,__float64__(+0.0)
	mov rax,__float64__(-0.0)
	mov rax,__float64__(1.83203125)
	mov rax,__float64__(+1.83203125)
	mov rax,__float64__(-1.83203125)
	mov rax,__float64__(1.83203125e300)
	mov rax,__float64__(+1.83203125e300)
	mov rax,__float64__(-1.83203125e300)
	mov rax,__float64__(1.83203125e-300)
	mov rax,__float64__(+1.83203125e-300)
	mov rax,__float64__(-1.83203125e-300)
	mov rax,__float64__(1.83203125e-320)		; Denormal!
	mov rax,__float64__(+1.83203125e-320)		; Denormal!
	mov rax,__float64__(-1.83203125e-320)		; Denormal!
	mov rax,__float64__(__Infinity__)
	mov rax,__float64__(+__Infinity__)
	mov rax,__float64__(-__Infinity__)
	mov rax,__float64__(__NaN__)
	mov rax,__float64__(__QNaN__)
	mov rax,__float64__(__SNaN__)

; 80-bit
	mov rax,__float80m__(1.0)
	mov ax,__float80e__(1.0)
	mov rax,__float80m__(+1.0)
	mov ax,__float80e__(+1.0)
	mov rax,__float80m__(-1.0)
	mov ax,__float80e__(-1.0)
	mov rax,__float80m__(0.0)
	mov ax,__float80e__(0.0)
	mov rax,__float80m__(+0.0)
	mov ax,__float80e__(+0.0)
	mov rax,__float80m__(-0.0)
	mov ax,__float80e__(-0.0)
	mov rax,__float80m__(1.83203125)
	mov ax,__float80e__(1.83203125)
	mov rax,__float80m__(+1.83203125)
	mov ax,__float80e__(+1.83203125)
	mov rax,__float80m__(-1.83203125)
	mov ax,__float80e__(-1.83203125)
	mov rax,__float80m__(1.83203125e+4000)
	mov ax,__float80e__(1.83203125e+4000)
	mov rax,__float80m__(+1.83203125e+4000)
	mov ax,__float80e__(+1.83203125e+4000)
	mov rax,__float80m__(-1.83203125e+4000)
	mov ax,__float80e__(-1.83203125e+4000)
	mov rax,__float80m__(1.83203125e-4000)
	mov ax,__float80e__(1.83203125e-4000)
	mov rax,__float80m__(+1.83203125e-4000)
	mov ax,__float80e__(+1.83203125e-4000)
	mov rax,__float80m__(-1.83203125e-4000)
	mov ax,__float80e__(-1.83203125e-4000)
	mov rax,__float80m__(1.83203125e-4940)		; Denormal!
	mov ax,__float80e__(1.83203125e-4940)		; Denormal!
	mov rax,__float80m__(+1.83203125e-4940)		; Denormal!
	mov ax,__float80e__(+1.83203125e-4940)		; Denormal!
	mov rax,__float80m__(-1.83203125e-4940)		; Denormal!
	mov ax,__float80e__(-1.83203125e-4940)		; Denormal!
	mov rax,__float80m__(__Infinity__)
	mov ax,__float80e__(__Infinity__)
	mov rax,__float80m__(+__Infinity__)
	mov ax,__float80e__(+__Infinity__)
	mov rax,__float80m__(-__Infinity__)
	mov ax,__float80e__(-__Infinity__)
	mov rax,__float80m__(__NaN__)
	mov ax,__float80e__(__NaN__)
	mov rax,__float80m__(__QNaN__)
	mov ax,__float80e__(__QNaN__)
	mov rax,__float80m__(__SNaN__)
	mov ax,__float80e__(__SNaN__)

; 128-bit
	mov rax,__float128l__(1.0)
	mov rax,__float128h__(1.0)
	mov rax,__float128l__(+1.0)
	mov rax,__float128h__(+1.0)
	mov rax,__float128l__(-1.0)
	mov rax,__float128h__(-1.0)
	mov rax,__float128l__(0.0)
	mov rax,__float128h__(0.0)
	mov rax,__float128l__(+0.0)
	mov rax,__float128h__(+0.0)
	mov rax,__float128l__(-0.0)
	mov rax,__float128h__(-0.0)
	mov rax,__float128l__(1.83203125)
	mov rax,__float128h__(1.83203125)
	mov rax,__float128l__(+1.83203125)
	mov rax,__float128h__(+1.83203125)
	mov rax,__float128l__(-1.83203125)
	mov rax,__float128h__(-1.83203125)
	mov rax,__float128l__(1.83203125e+4000)
	mov rax,__float128h__(1.83203125e+4000)
	mov rax,__float128l__(+1.83203125e+4000)
	mov rax,__float128h__(+1.83203125e+4000)
	mov rax,__float128l__(-1.83203125e+4000)
	mov rax,__float128h__(-1.83203125e+4000)
	mov rax,__float128l__(1.83203125e-4000)
	mov rax,__float128h__(1.83203125e-4000)
	mov rax,__float128l__(+1.83203125e-4000)
	mov rax,__float128h__(+1.83203125e-4000)
	mov rax,__float128l__(-1.83203125e-4000)
	mov rax,__float128h__(-1.83203125e-4000)
	mov rax,__float128l__(1.83203125e-4940)		; Denormal!
	mov rax,__float128h__(1.83203125e-4940)		; Denormal!
	mov rax,__float128l__(+1.83203125e-4940)		; Denormal!
	mov rax,__float128h__(+1.83203125e-4940)		; Denormal!
	mov rax,__float128l__(-1.83203125e-4940)		; Denormal!
	mov rax,__float128h__(-1.83203125e-4940)		; Denormal!
	mov rax,__float128l__(__Infinity__)
	mov rax,__float128h__(__Infinity__)
	mov rax,__float128l__(+__Infinity__)
	mov rax,__float128h__(+__Infinity__)
	mov rax,__float128l__(-__Infinity__)
	mov rax,__float128h__(-__Infinity__)
	mov rax,__float128l__(__NaN__)
	mov rax,__float128h__(__NaN__)
	mov rax,__float128l__(__QNaN__)
	mov rax,__float128h__(__QNaN__)
	mov rax,__float128l__(__SNaN__)
	mov rax,__float128h__(__SNaN__)

;
; Test hexadecimal floating-point numbers
;

; 16-bit
	mov ax,__float16__(1.0)
	mov ax,__float16__(0x1.0)
	mov ax,__float16__(2.0)
	mov ax,__float16__(0x2.0)
	mov ax,__float16__(0x1.0p+1)
	mov ax,__float16__(0x1.0p-1)
	mov ax,__float16__(0x0.0)
	mov ax,__float16__(0x1.23456789)
	mov ax,__float16__(0x0.123456789)
	mov ax,__float16__(0x0.0000123456789)
	mov ax,__float16__(0x1.23456789p10)
	mov ax,__float16__(0x1.23456789p+10)
	mov ax,__float16__(0x1.23456789p-10)
	mov ax,__float16__(0x0.123456789p10)
	mov ax,__float16__(0x0.123456789p+10)
	mov ax,__float16__(0x0.123456789abcdef0123456789abcdef012345p-10)
	mov ax,__float16__(0x0.0000123456789)
	mov ax,__float16__(0x0.0000123456789p+10)
	mov ax,__float16__(0x0.0000123456789p-10)

; 32-bit
	mov eax,__float32__(1.0)
	mov eax,__float32__(0x1.0)
	mov eax,__float32__(2.0)
	mov eax,__float32__(0x2.0)
	mov eax,__float32__(0x1.0p+1)
	mov eax,__float32__(0x1.0p-1)
	mov eax,__float32__(0x0.0)
	mov eax,__float32__(0x1.23456789)
	mov eax,__float32__(0x0.123456789)
	mov eax,__float32__(0x0.0000123456789)
	mov eax,__float32__(0x1.23456789p10)
	mov eax,__float32__(0x1.23456789p+10)
	mov eax,__float32__(0x1.23456789p-10)
	mov eax,__float32__(0x0.123456789p10)
	mov eax,__float32__(0x0.123456789p+10)
	mov eax,__float32__(0x0.123456789abcdef0123456789abcdef012345p-10)
	mov eax,__float32__(0x0.0000123456789)
	mov eax,__float32__(0x0.0000123456789p+10)
	mov eax,__float32__(0x0.0000123456789p-10)
	mov eax,__float32__(0x123456789.0)
	mov eax,__float32__(0x0000123456789.0)
	mov eax,__float32__(0x123456789.0p+0)
	mov eax,__float32__(0x123456789.0p+64)

; 64-bit
	mov rax,__float64__(1.0)
	mov rax,__float64__(0x1.0)
	mov rax,__float64__(2.0)
	mov rax,__float64__(0x2.0)
	mov rax,__float64__(0x1.0p+1)
	mov rax,__float64__(0x1.0p-1)
	mov rax,__float64__(0x0.0)
	mov rax,__float64__(0x1.23456789)
	mov rax,__float64__(0x0.123456789)
	mov rax,__float64__(0x0.0000123456789)
	mov rax,__float64__(0x1.23456789p10)
	mov rax,__float64__(0x1.23456789p+10)
	mov rax,__float64__(0x1.23456789p-10)
	mov rax,__float64__(0x0.123456789p10)
	mov rax,__float64__(0x0.123456789p+10)
	mov rax,__float64__(0x0.123456789abcdef0123456789abcdef012345p-10)
	mov rax,__float64__(0x0.0000123456789)
	mov rax,__float64__(0x0.0000123456789p+10)
	mov rax,__float64__(0x0.0000123456789p-10)
	mov rax,__float64__(0x123456789.0)
	mov rax,__float64__(0x0000123456789.0)
	mov rax,__float64__(0x123456789.0p+0)
	mov rax,__float64__(0x123456789.0p+300)

; 80-bit
	mov rax,__float80m__(1.0)
	mov ax,__float80e__(1.0)
	mov rax,__float80m__(0x1.0)
	mov ax,__float80e__(0x1.0)
	mov rax,__float80m__(2.0)
	mov ax,__float80e__(2.0)
	mov rax,__float80m__(0x2.0)
	mov ax,__float80e__(0x2.0)
	mov rax,__float80m__(0x1.0p+1)
	mov ax,__float80e__(0x1.0p+1)
	mov rax,__float80m__(0x1.0p-1)
	mov ax,__float80e__(0x1.0p-1)
	mov rax,__float80m__(0x0.0)
	mov ax,__float80e__(0x0.0)
	mov rax,__float80m__(0x1.23456789)
	mov ax,__float80e__(0x1.23456789)
	mov rax,__float80m__(0x0.123456789)
	mov ax,__float80e__(0x0.123456789)
	mov rax,__float80m__(0x0.0000123456789)
	mov ax,__float80e__(0x0.0000123456789)
	mov rax,__float80m__(0x1.23456789p10)
	mov ax,__float80e__(0x1.23456789p10)
	mov rax,__float80m__(0x1.23456789p+10)
	mov ax,__float80e__(0x1.23456789p+10)
	mov rax,__float80m__(0x1.23456789p-10)
	mov ax,__float80e__(0x1.23456789p-10)
	mov rax,__float80m__(0x0.123456789p10)
	mov ax,__float80e__(0x0.123456789p10)
	mov rax,__float80m__(0x0.123456789p+10)
	mov ax,__float80e__(0x0.123456789p+10)
	mov rax,__float80m__(0x0.123456789abcdef0123456789abcdef012345p-10)
	mov ax,__float80e__(0x0.123456789abcdef0123456789abcdef012345p-10)
	mov rax,__float80m__(0x0.0000123456789)
	mov ax,__float80e__(0x0.0000123456789)
	mov rax,__float80m__(0x0.0000123456789p+10)
	mov ax,__float80e__(0x0.0000123456789p+10)
	mov rax,__float80m__(0x0.0000123456789p-10)
	mov ax,__float80e__(0x0.0000123456789p-10)
	mov rax,__float80m__(0x123456789.0)
	mov ax,__float80e__(0x123456789.0)
	mov rax,__float80m__(0x0000123456789.0)
	mov ax,__float80e__(0x0000123456789.0)
	mov rax,__float80m__(0x123456789.0p+0)
	mov ax,__float80e__(0x123456789.0p+0)
	mov rax,__float80m__(0x123456789.0p+1024)
	mov ax,__float80e__(0x123456789.0p+1024)

; 128-bit
	mov rax,__float128l__(1.0)
	mov rax,__float128h__(1.0)
	mov rax,__float128l__(0x1.0)
	mov rax,__float128h__(0x1.0)
	mov rax,__float128l__(2.0)
	mov rax,__float128h__(2.0)
	mov rax,__float128l__(0x2.0)
	mov rax,__float128h__(0x2.0)
	mov rax,__float128l__(0x1.0p+1)
	mov rax,__float128h__(0x1.0p+1)
	mov rax,__float128l__(0x1.0p-1)
	mov rax,__float128h__(0x1.0p-1)
	mov rax,__float128l__(0x0.0)
	mov rax,__float128h__(0x0.0)
	mov rax,__float128l__(0x1.23456789)
	mov rax,__float128h__(0x1.23456789)
	mov rax,__float128l__(0x0.123456789)
	mov rax,__float128h__(0x0.123456789)
	mov rax,__float128l__(0x0.0000123456789)
	mov rax,__float128h__(0x0.0000123456789)
	mov rax,__float128l__(0x1.23456789p10)
	mov rax,__float128h__(0x1.23456789p10)
	mov rax,__float128l__(0x1.23456789p+10)
	mov rax,__float128h__(0x1.23456789p+10)
	mov rax,__float128l__(0x1.23456789p-10)
	mov rax,__float128h__(0x1.23456789p-10)
	mov rax,__float128l__(0x0.123456789p10)
	mov rax,__float128h__(0x0.123456789p10)
	mov rax,__float128l__(0x0.123456789p+10)
	mov rax,__float128h__(0x0.123456789p+10)
	mov rax,__float128l__(0x0.123456789abcdef0123456789abcdef012345p-10)
	mov rax,__float128h__(0x0.123456789abcdef0123456789abcdef012345p-10)
	mov rax,__float128l__(0x0.0000123456789)
	mov rax,__float128h__(0x0.0000123456789)
	mov rax,__float128l__(0x0.0000123456789p+10)
	mov rax,__float128h__(0x0.0000123456789p+10)
	mov rax,__float128l__(0x0.0000123456789p-10)
	mov rax,__float128h__(0x0.0000123456789p-10)
	mov rax,__float128l__(0x123456789.0)
	mov rax,__float128h__(0x123456789.0)
	mov rax,__float128l__(0x0000123456789.0)
	mov rax,__float128h__(0x0000123456789.0)
	mov rax,__float128l__(0x123456789.0p+0)
	mov rax,__float128h__(0x123456789.0p+0)
	mov rax,__float128l__(0x123456789.0p+1024)
	mov rax,__float128h__(0x123456789.0p+1024)
