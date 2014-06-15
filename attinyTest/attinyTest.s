	.file	"attinyTest.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C++ (GCC) version 4.7.2 (avr)
 ; 	compiled by GNU C version 4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2336.11.00), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -I ../lib/TinyDebugSerial -I ../lib/core
 ;  -imultilib avr25 -MMD attinyTest.d -MQ attinyTest.s -D F_CPU=8000000L
 ;  attinyTest.cpp -mmcu=attiny85 -auxbase-strip attinyTest.s -g -Os -Wall
 ;  -ffunction-sections -fdata-sections -fverbose-asm -fno-rtti
 ;  -fno-enforce-eh-specs -fno-exceptions
 ;  options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
 ;  -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
 ;  -fcrossjumping -fcse-follow-jumps -fdata-sections -fdebug-types-section
 ;  -fdefer-pop -fdevirtualize -fdwarf2-cfi-asm -fearly-inlining
 ;  -feliminate-unused-debug-types -fexpensive-optimizations
 ;  -fforward-propagate -ffunction-cse -ffunction-sections -fgcse -fgcse-lm
 ;  -fgnu-runtime -fguess-branch-probability -fident -fif-conversion
 ;  -fif-conversion2 -findirect-inlining -finline -finline-atomics
 ;  -finline-functions -finline-functions-called-once
 ;  -finline-small-functions -fipa-cp -fipa-profile -fipa-pure-const
 ;  -fipa-reference -fipa-sra -fira-share-save-slots
 ;  -fira-share-spill-slots -fivopts -fkeep-static-consts
 ;  -fleading-underscore -fmath-errno -fmerge-constants
 ;  -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
 ;  -foptimize-register-move -foptimize-sibling-calls -fpartial-inlining
 ;  -fpeephole -fpeephole2 -fprefetch-loop-arrays -freg-struct-return
 ;  -fregmove -freorder-blocks -freorder-functions -frerun-cse-after-loop
 ;  -fsched-critical-path-heuristic -fsched-dep-count-heuristic
 ;  -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
 ;  -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
 ;  -fsched-stalled-insns-dep -fshow-column -fshrink-wrap -fsigned-zeros
 ;  -fsplit-ivs-in-unroller -fsplit-wide-types -fstrict-aliasing
 ;  -fstrict-overflow -fstrict-volatile-bitfields -fthread-jumps
 ;  -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
 ;  -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-copy-prop
 ;  -ftree-copyrename -ftree-dce -ftree-dominator-opts -ftree-dse
 ;  -ftree-forwprop -ftree-fre -ftree-loop-if-convert -ftree-loop-im
 ;  -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
 ;  -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
 ;  -ftree-sink -ftree-slp-vectorize -ftree-sra -ftree-switch-conversion
 ;  -ftree-tail-merge -ftree-ter -ftree-vect-loop-version -ftree-vrp
 ;  -funit-at-a-time -fverbose-asm -fzero-initialized-in-bss

	.text
.Ltext0:
	.section	.text._Z10analogReadh,"ax",@progbits
.global	_Z10analogReadh
	.type	_Z10analogReadh, @function
_Z10analogReadh:
.LFBB1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(6)	 ;  pin,
	brsh .L4	 ; ,
	mov r30,r24	 ;  tmp64, pin
	ldi r31,0	 ; 
	subi r30,lo8(-(_ZL11adc_mapping))	 ;  tmp64,
	sbci r31,hi8(-(_ZL11adc_mapping))	 ;  tmp64,
/* #APP */
 ;  41 "attinyTest.cpp" 1
	lpm r30, Z	 ;  D.3863
	
 ;  0 "" 2
/* #NOAPP */
	out 0x3,__zero_reg__	 ;  MEM[(volatile uint8_t *)35B],
	ori r30,lo8(-112)	 ;  D.3863,
	out 0x7,r30	 ;  MEM[(volatile uint8_t *)39B], D.3863
	ldi r18,lo8(1)	 ;  tmp68,
	ldi r19,0	 ; 
	mov r0,r24	 ; , pin
	rjmp 2f
	1:
	lsl r18	 ;  tmp68
	2:
	dec r0	 ; 
	brpl 1b
	out 0x14,r18	 ;  MEM[(volatile uint8_t *)52B], tmp68
	sbi 0x6,6	 ; ,
.L3:
	sbic 0x6,6	 ; ,
	rjmp .L3	 ; 
	in r24,0x4	 ;  low, MEM[(volatile uint8_t *)36B]
	in r25,0x5	 ;  high, MEM[(volatile uint8_t *)37B]
	out 0x14,__zero_reg__	 ;  MEM[(volatile uint8_t *)52B],
	mov r19,r25	 ;  high, high
	ldi r18,0	 ;  high
	or r18,r24	 ;  D.3858, low
	rjmp .L2	 ; 
.L4:
	ldi r18,0	 ;  D.3858
	ldi r19,0	 ;  D.3858
.L2:
	movw r24,r18	 ; ,
	ret
	.size	_Z10analogReadh, .-_Z10analogReadh
.Lscope1:
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.Ltext1:
	ldi r24,lo8(tdsw38400)	 ;  tmp50,
	ldi r25,hi8(tdsw38400)	 ; ,
	sts Serial+12+1,r25	 ;  MEM[(struct TinyDebugSerialWriter * *)&Serial + 12B], tmp50
	sts Serial+12,r24	 ;  MEM[(struct TinyDebugSerialWriter * *)&Serial + 12B], tmp50
	lds r30,tdsw38400	 ;  MEM[(struct TinyDebugSerialWriter *)&tdsw38400]._vptr.TinyDebugSerialWriter, MEM[(struct TinyDebugSerialWriter *)&tdsw38400]._vptr.TinyDebugSerialWriter
	lds r31,tdsw38400+1	 ;  MEM[(struct TinyDebugSerialWriter *)&tdsw38400]._vptr.TinyDebugSerialWriter, MEM[(struct TinyDebugSerialWriter *)&tdsw38400]._vptr.TinyDebugSerialWriter
	ld __tmp_reg__,Z+	 ;  *D.3954_20
	ld r31,Z	 ;  *D.3954_20, *D.3954_20
	mov r30,__tmp_reg__	 ;  *D.3954_20
	icall
.Ltext2:
	ldi r24,lo8(-122)	 ;  tmp54,
	out 0x6,r24	 ;  MEM[(volatile uint8_t *)38B], tmp54
	sbi 0x17,1	 ; ,
	sbi 0x17,0	 ; ,
	rcall _Z12millis_startv	 ; 
/* #APP */
 ;  66 "attinyTest.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ldi r24,0	 ; 
	ldi r25,0	 ; 
	ret
	.size	main, .-main
.Lscope2:
	.section	.text.startup._GLOBAL__sub_I_Serial,"ax",@progbits
	.type	_GLOBAL__sub_I_Serial, @function
_GLOBAL__sub_I_Serial:
.LFBB3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rjmp _ZN15TinyDebugSerialC1Ev	 ; 
	.size	_GLOBAL__sub_I_Serial, .-_GLOBAL__sub_I_Serial
.Lscope3:
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_Serial)
.global	Serial
	.section	.bss.Serial,"aw",@nobits
	.type	Serial, @object
	.size	Serial, 14
Serial:
	.zero	14
	.section	.progmem.data._ZL11adc_mapping,"a",@progbits
	.type	_ZL11adc_mapping, @object
	.size	_ZL11adc_mapping, 6
_ZL11adc_mapping:
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	2
	.byte	0
	.text
.Letext0:
	.ident	"GCC: (GNU) 4.7.2"
.global __do_clear_bss
