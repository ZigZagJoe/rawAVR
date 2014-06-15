	.file	"md5.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C++ (GCC) version 4.7.2 (avr)
 ; 	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -I ../lib/SDFatLib -I ../lib/core -imultilib avr5
 ;  -MMD md5.d -D F_CPU=20000000L md5.cpp -mmcu=atmega324pa -g -Os -Wall
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

	.stabs	"/Users/zigzagjoe/Documents/rawAVR/SDCard/",100,0,4,.Ltext0
	.stabs	"md5.cpp",100,0,4,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"__uint24:t(0,1)=@s24;r(0,1);0;077777777;",128,0,0,0
	.stabs	"__int24:t(0,2)=@s24;r(0,2);040000000;037777777;",128,0,0,0
	.stabs	"__builtin_va_list:t(0,3)=*(0,4)=(0,4)",128,0,0,0
	.stabs	"complex long double:t(0,5)=R3;8;0;",128,0,0,0
	.stabs	"complex double:t(0,6)=R3;8;0;",128,0,0,0
	.stabs	"complex float:t(0,7)=R3;8;0;",128,0,0,0
	.stabs	"complex int:t(0,8)=s4real:(0,9)=r(0,9);-32768;32767;,0,16;imag:(0,9),16,16;;",128,0,0,0
	.stabs	"long long unsigned int:t(0,10)=@s64;r(0,10);0;01777777777777777777777;",128,0,0,0
	.stabs	"long unsigned int:t(0,11)=@s32;r(0,11);0;037777777777;",128,0,0,0
	.stabs	"unsigned int:t(0,12)=r(0,12);0;0177777;",128,0,0,0
	.stabs	"unsigned char:t(0,13)=@s8;r(0,13);0;255;",128,0,0,0
	.stabs	"long long int:t(0,14)=@s64;r(0,14);01000000000000000000000;0777777777777777777777;",128,0,0,0
	.stabs	"long int:t(0,15)=@s32;r(0,15);020000000000;017777777777;",128,0,0,0
	.stabs	"int:t(0,9)",128,0,0,0
	.stabs	"signed char:t(0,16)=@s8;r(0,16);-128;127;",128,0,0,0
	.stabs	"char:t(0,17)=r(0,17);0;127;",128,0,0,0
	.stabs	"signed:t(0,9)",128,0,0,0
	.stabs	"unsigned long:t(0,11)",128,0,0,0
	.stabs	"long long unsigned:t(0,10)",128,0,0,0
	.stabs	"short int:t(0,18)=r(0,18);-32768;32767;",128,0,0,0
	.stabs	"short unsigned int:t(0,19)=r(0,19);0;0177777;",128,0,0,0
	.stabs	"unsigned short:t(0,19)",128,0,0,0
	.stabs	"float:t(0,20)=r(0,9);4;0;",128,0,0,0
	.stabs	"double:t(0,21)=r(0,9);4;0;",128,0,0,0
	.stabs	"long double:t(0,22)=r(0,9);4;0;",128,0,0,0
	.stabs	"void:t(0,4)",128,0,0,0
	.stabs	"wchar_t:t(0,23)=r(0,23);-32768;32767;",128,0,0,0
	.stabs	"bool:t(0,24)=@s8;-16;",128,0,0,0
	.stabs	"__vtbl_ptr_type:t(0,25)=*(0,26)=f(0,9)",128,0,0,0
	.stabs	"decltype(nullptr):t(0,27)=(0,27)",128,0,0,0
	.stabs	"int8_t:t(0,28)=(0,16)",128,0,121,0
	.stabs	"uint8_t:t(0,29)=(0,13)",128,0,122,0
	.stabs	"int16_t:t(0,30)=(0,9)",128,0,123,0
	.stabs	"uint16_t:t(0,31)=(0,12)",128,0,124,0
	.stabs	"int32_t:t(0,32)=(0,15)",128,0,125,0
	.stabs	"uint32_t:t(0,33)=(0,11)",128,0,126,0
	.stabs	"int64_t:t(0,34)=(0,14)",128,0,128,0
	.stabs	"uint64_t:t(0,35)=(0,10)",128,0,129,0
	.stabs	"intptr_t:t(0,36)=(0,30)",128,0,142,0
	.stabs	"uintptr_t:t(0,37)=(0,31)",128,0,147,0
	.stabs	"int_least8_t:t(0,38)=(0,28)",128,0,159,0
	.stabs	"uint_least8_t:t(0,39)=(0,29)",128,0,164,0
	.stabs	"int_least16_t:t(0,40)=(0,30)",128,0,169,0
	.stabs	"uint_least16_t:t(0,41)=(0,31)",128,0,174,0
	.stabs	"int_least32_t:t(0,42)=(0,32)",128,0,179,0
	.stabs	"uint_least32_t:t(0,43)=(0,33)",128,0,184,0
	.stabs	"int_least64_t:t(0,44)=(0,34)",128,0,192,0
	.stabs	"uint_least64_t:t(0,45)=(0,35)",128,0,199,0
	.stabs	"int_fast8_t:t(0,46)=(0,28)",128,0,213,0
	.stabs	"uint_fast8_t:t(0,47)=(0,29)",128,0,218,0
	.stabs	"int_fast16_t:t(0,48)=(0,30)",128,0,223,0
	.stabs	"uint_fast16_t:t(0,49)=(0,31)",128,0,228,0
	.stabs	"int_fast32_t:t(0,50)=(0,32)",128,0,233,0
	.stabs	"uint_fast32_t:t(0,51)=(0,33)",128,0,238,0
	.stabs	"int_fast64_t:t(0,52)=(0,34)",128,0,246,0
	.stabs	"uint_fast64_t:t(0,53)=(0,35)",128,0,253,0
	.stabs	"intmax_t:t(0,54)=(0,34)",128,0,273,0
	.stabs	"uintmax_t:t(0,55)=(0,35)",128,0,278,0
	.stabs	"int_farptr_t:t(0,56)=(0,32)",128,0,77,0
	.stabs	"uint_farptr_t:t(0,57)=(0,33)",128,0,81,0
	.stabs	"md5_byte_t:t(0,58)=(0,29)",128,0,53,0
	.stabs	"md5_word_t:t(0,59)=(0,33)",128,0,54,0
	.stabs	"md5_state_s:Tt(0,60)=s88count:(0,61)=ar(0,62)=r(0,62);0;0177777;;0;1;(0,59),0,64;abcd:(0,63)=ar(0,62);0;3;(0,59),64,128;buf:(0,64)=ar(0,62);0;63;(0,58),192,512;;",128,0,57,0
	.stabs	"md5_state_t:t(0,65)=(0,60)",128,0,61,0
	.stabs	"size_t:t(0,66)=(0,12)",128,0,213,0
	.stabs	"__gnuc_va_list:t(0,67)=(0,3)",128,0,40,0
	.stabs	"va_list:t(0,68)=(0,67)",128,0,102,0
	.stabs	"__file:Tt(0,69)=s14buf:(0,70)=*(0,17),0,16;unget:(0,13),16,8;flags:(0,29),24,8;size:(0,9),32,16;len:(0,9),48,16;put:(0,71)=*(0,72)=f(0,9),64,16;get:(0,73)=*(0,74)=f(0,9),80,16;udata:(0,75)=*(0,4),96,16;;",128,0,242,0
	.section	.text._Z11md5_processP11md5_state_sPKh,"ax",@progbits
	.stabs	"_Z11md5_processP11md5_state_sPKh:F(0,4)",36,0,110,_Z11md5_processP11md5_state_sPKh
	.stabs	"pms:p(0,76)=*(0,65)",160,0,110,89
	.stabs	"data:P(0,77)=*(0,78)=k(0,58)",64,0,110,2
.global	_Z11md5_processP11md5_state_sPKh
	.type	_Z11md5_processP11md5_state_sPKh, @function
_Z11md5_processP11md5_state_sPKh:
	.stabd	46,0,0
	.stabn	68,0,110,.LM0-.LFBB1
.LM0:
.LFBB1:
	push r2	 ; 
	push r3	 ; 
	push r4	 ; 
	push r5	 ; 
	push r6	 ; 
	push r7	 ; 
	push r8	 ; 
	push r9	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	subi r28,90	 ; ,
	sbc r29,__zero_reg__	 ; 
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 90 */
/* stack size = 108 */
.L__stack_usage = 108
	adiw r28,89-62	 ;  %sfp
	std Y+63,r25	 ;  pms
	std Y+62,r24	 ;  pms
	sbiw r28,89-62	 ;  %sfp
	movw r2,r22	 ;  data, data
.LBB2:
	.stabn	68,0,112,.LM1-.LFBB1
.LM1:
	movw r26,r24	 ; , pms
	adiw r26,8	 ;  pms_1(D)->abcd
	ld r4,X+	 ; 
	ld r5,X+	 ; 
	ld r6,X+	 ; 
	ld r7,X	 ; 
	sbiw r26,8+3	 ;  pms_1(D)->abcd
	adiw r28,81-60	 ;  %sfp
	std Y+60,r4	 ; 
	std Y+61,r5	 ; 
	std Y+62,r6	 ; 
	std Y+63,r7	 ; 
	sbiw r28,81-60	 ;  %sfp
	adiw r26,12	 ;  pms_1(D)->abcd
	ld r4,X+	 ; 
	ld r5,X+	 ; 
	ld r6,X+	 ; 
	ld r7,X	 ; 
	sbiw r26,12+3	 ;  pms_1(D)->abcd
	std Y+5,r4	 ;  %sfp,
	std Y+6,r5	 ;  %sfp,
	std Y+7,r6	 ;  %sfp,
	std Y+8,r7	 ;  %sfp,
	.stabn	68,0,113,.LM2-.LFBB1
.LM2:
	adiw r26,16	 ;  pms_1(D)->abcd
	ld r4,X+	 ; 
	ld r5,X+	 ; 
	ld r6,X+	 ; 
	ld r7,X	 ; 
	sbiw r26,16+3	 ;  pms_1(D)->abcd
	std Y+9,r4	 ;  %sfp,
	std Y+10,r5	 ;  %sfp,
	std Y+11,r6	 ;  %sfp,
	std Y+12,r7	 ;  %sfp,
	adiw r26,20	 ;  pms_1(D)->abcd
	ld r4,X+	 ; 
	ld r5,X+	 ; 
	ld r6,X+	 ; 
	ld r7,X	 ; 
	sbiw r26,20+3	 ;  pms_1(D)->abcd
	adiw r28,77-60	 ;  %sfp
	std Y+60,r4	 ; 
	std Y+61,r5	 ; 
	std Y+62,r6	 ; 
	std Y+63,r7	 ; 
	sbiw r28,77-60	 ;  %sfp
	.stabn	68,0,163,.LM3-.LFBB1
.LM3:
	movw r26,r22	 ; , data
	ld r4,X+	 ; 
	ld r5,X+	 ; 
	ld r6,X+	 ; 
	ld r7,X	 ; 
	std Y+13,r4	 ;  %sfp,
	std Y+14,r5	 ;  %sfp,
	std Y+15,r6	 ;  %sfp,
	std Y+16,r7	 ;  %sfp,
	adiw r28,81-60	 ;  %sfp
	ldd r16,Y+60	 ;  tmp600
	ldd r17,Y+61	 ;  tmp600
	ldd r18,Y+62	 ;  tmp600
	ldd r19,Y+63	 ;  tmp600
	sbiw r28,81-60	 ;  %sfp
	subi r16,-120	 ;  tmp600,
	sbci r17,91	 ; ,
	sbci r18,-107	 ; ,
	sbci r19,40	 ; ,
	ldd r24,Y+5	 ;  tmp598, %sfp
	ldd r25,Y+6	 ;  tmp598, %sfp
	ldd r26,Y+7	 ;  tmp598, %sfp
	ldd r27,Y+8	 ;  tmp598, %sfp
	com r24	 ;  tmp598
	com r25	 ;  tmp598
	com r26	 ;  tmp598
	com r27	 ;  tmp598
	adiw r28,77-60	 ;  %sfp
	ldd r4,Y+60	 ; 
	ldd r5,Y+61	 ; 
	ldd r6,Y+62	 ; 
	ldd r7,Y+63	 ; 
	sbiw r28,77-60	 ;  %sfp
	and r24,r4	 ;  tmp598,
	and r25,r5	 ;  tmp598,
	and r26,r6	 ;  tmp598,
	and r27,r7	 ;  tmp598,
	ldd r20,Y+9	 ;  tmp597, %sfp
	ldd r21,Y+10	 ;  tmp597, %sfp
	ldd r22,Y+11	 ;  tmp597, %sfp
	ldd r23,Y+12	 ;  tmp597, %sfp
	ldd r6,Y+5	 ; , %sfp
	ldd r7,Y+6	 ; , %sfp
	ldd r8,Y+7	 ; , %sfp
	ldd r9,Y+8	 ; , %sfp
	and r20,r6	 ;  tmp597,
	and r21,r7	 ;  tmp597,
	and r22,r8	 ;  tmp597,
	and r23,r9	 ;  tmp597,
	or r24,r20	 ;  tmp598, tmp597
	or r25,r21	 ;  tmp598, tmp597
	or r26,r22	 ;  tmp598, tmp597
	or r27,r23	 ;  tmp598, tmp597
	add r16,r24	 ;  tmp600, tmp598
	adc r17,r25	 ;  tmp600, tmp598
	adc r18,r26	 ;  tmp600, tmp598
	adc r19,r27	 ;  tmp600, tmp598
	ldd r8,Y+13	 ; , %sfp
	ldd r9,Y+14	 ; , %sfp
	ldd r10,Y+15	 ; , %sfp
	ldd r11,Y+16	 ; , %sfp
	add r16,r8	 ;  tmp600,
	adc r17,r9	 ;  tmp600,
	adc r18,r10	 ;  tmp600,
	adc r19,r11	 ;  tmp600,
	movw r26,r18	 ;  tmp601, tmp600
	movw r24,r16	 ;  tmp601, tmp600
	ldi r20,7	 ; ,
	1:
	lsl r24	 ;  tmp601
	rol r25	 ;  tmp601
	rol r26	 ;  tmp601
	rol r27	 ;  tmp601
	dec r20	 ; 
	brne 1b
	ldi r21,25	 ; ,
	1:
	lsr r19	 ;  a
	ror r18	 ;  a
	ror r17	 ;  a
	ror r16	 ;  a
	dec r21	 ; 
	brne 1b
	or r16,r24	 ;  a, tmp601
	or r17,r25	 ;  a, tmp601
	or r18,r26	 ;  a, tmp601
	or r19,r27	 ;  a, tmp601
	ldd r10,Y+5	 ; , %sfp
	ldd r11,Y+6	 ; , %sfp
	ldd r12,Y+7	 ; , %sfp
	ldd r13,Y+8	 ; , %sfp
	add r16,r10	 ;  a,
	adc r17,r11	 ;  a,
	adc r18,r12	 ;  a,
	adc r19,r13	 ;  a,
	.stabn	68,0,164,.LM4-.LFBB1
.LM4:
	movw r26,r2	 ; , data
	adiw r26,4	 ;  MEM[(const md5_word_t *)data_6(D) + 4B]
	ld r12,X+	 ; 
	ld r13,X+	 ; 
	ld r14,X+	 ; 
	ld r15,X	 ; 
	sbiw r26,4+3	 ;  MEM[(const md5_word_t *)data_6(D) + 4B]
	std Y+17,r12	 ;  %sfp,
	std Y+18,r13	 ;  %sfp,
	std Y+19,r14	 ;  %sfp,
	std Y+20,r15	 ;  %sfp,
	adiw r28,77-60	 ;  %sfp
	ldd r12,Y+60	 ;  tmp608
	ldd r13,Y+61	 ;  tmp608
	ldd r14,Y+62	 ;  tmp608
	ldd r15,Y+63	 ;  tmp608
	sbiw r28,77-60	 ;  %sfp
	ldi r27,-86	 ; ,
	sub r12,r27	 ;  tmp608,
	ldi r27,72	 ; ,
	sbc r13,r27	 ; ,
	ldi r27,56	 ; ,
	sbc r14,r27	 ; ,
	ldi r27,23	 ; ,
	sbc r15,r27	 ; ,
	ldd r4,Y+17	 ; , %sfp
	ldd r5,Y+18	 ; , %sfp
	ldd r6,Y+19	 ; , %sfp
	ldd r7,Y+20	 ; , %sfp
	add r12,r4	 ;  tmp608,
	adc r13,r5	 ;  tmp608,
	adc r14,r6	 ;  tmp608,
	adc r15,r7	 ;  tmp608,
	movw r26,r18	 ;  tmp607, a
	movw r24,r16	 ;  tmp607, a
	com r24	 ;  tmp607
	com r25	 ;  tmp607
	com r26	 ;  tmp607
	com r27	 ;  tmp607
	ldd r6,Y+9	 ; , %sfp
	ldd r7,Y+10	 ; , %sfp
	ldd r8,Y+11	 ; , %sfp
	ldd r9,Y+12	 ; , %sfp
	and r24,r6	 ;  tmp607,
	and r25,r7	 ;  tmp607,
	and r26,r8	 ;  tmp607,
	and r27,r9	 ;  tmp607,
	ldd r20,Y+5	 ;  tmp606, %sfp
	ldd r21,Y+6	 ;  tmp606, %sfp
	ldd r22,Y+7	 ;  tmp606, %sfp
	ldd r23,Y+8	 ;  tmp606, %sfp
	and r20,r16	 ;  tmp606, a
	and r21,r17	 ;  tmp606, a
	and r22,r18	 ;  tmp606, a
	and r23,r19	 ;  tmp606, a
	or r24,r20	 ;  tmp607, tmp606
	or r25,r21	 ;  tmp607, tmp606
	or r26,r22	 ;  tmp607, tmp606
	or r27,r23	 ;  tmp607, tmp606
	add r12,r24	 ;  tmp608, tmp607
	adc r13,r25	 ;  tmp608, tmp607
	adc r14,r26	 ;  tmp608, tmp607
	adc r15,r27	 ;  tmp608, tmp607
	movw r26,r14	 ;  tmp609, tmp608
	movw r24,r12	 ;  tmp609, tmp608
	ldi r22,12	 ; ,
	1:
	lsl r24	 ;  tmp609
	rol r25	 ;  tmp609
	rol r26	 ;  tmp609
	rol r27	 ;  tmp609
	dec r22	 ; 
	brne 1b
	ldi r23,20	 ; ,
	1:
	lsr r15	 ;  d
	ror r14	 ;  d
	ror r13	 ;  d
	ror r12	 ;  d
	dec r23	 ; 
	brne 1b
	or r12,r24	 ;  d, tmp609
	or r13,r25	 ;  d, tmp609
	or r14,r26	 ;  d, tmp609
	or r15,r27	 ;  d, tmp609
	add r12,r16	 ;  d, a
	adc r13,r17	 ;  d, a
	adc r14,r18	 ;  d, a
	adc r15,r19	 ;  d, a
	.stabn	68,0,165,.LM5-.LFBB1
.LM5:
	movw r26,r2	 ; , data
	adiw r26,8	 ;  MEM[(const md5_word_t *)data_6(D) + 8B]
	ld r8,X+	 ; 
	ld r9,X+	 ; 
	ld r10,X+	 ; 
	ld r11,X	 ; 
	sbiw r26,8+3	 ;  MEM[(const md5_word_t *)data_6(D) + 8B]
	std Y+21,r8	 ;  %sfp,
	std Y+22,r9	 ;  %sfp,
	std Y+23,r10	 ;  %sfp,
	std Y+24,r11	 ;  %sfp,
	ldd r20,Y+9	 ;  tmp616, %sfp
	ldd r21,Y+10	 ;  tmp616, %sfp
	ldd r22,Y+11	 ;  tmp616, %sfp
	ldd r23,Y+12	 ;  tmp616, %sfp
	subi r20,37	 ;  tmp616,
	sbci r21,-113	 ; ,
	sbci r22,-33	 ; ,
	sbci r23,-37	 ; ,
	add r20,r8	 ;  tmp616,
	adc r21,r9	 ;  tmp616,
	adc r22,r10	 ;  tmp616,
	adc r23,r11	 ;  tmp616,
	movw r26,r14	 ;  tmp615, d
	movw r24,r12	 ;  tmp615, d
	com r24	 ;  tmp615
	com r25	 ;  tmp615
	com r26	 ;  tmp615
	com r27	 ;  tmp615
	ldd r4,Y+5	 ; , %sfp
	ldd r5,Y+6	 ; , %sfp
	ldd r6,Y+7	 ; , %sfp
	ldd r7,Y+8	 ; , %sfp
	and r24,r4	 ;  tmp615,
	and r25,r5	 ;  tmp615,
	and r26,r6	 ;  tmp615,
	and r27,r7	 ;  tmp615,
	movw r8,r12	 ;  tmp614, d
	movw r10,r14	 ;  tmp614, d
	and r8,r16	 ;  tmp614, a
	and r9,r17	 ;  tmp614, a
	and r10,r18	 ;  tmp614, a
	and r11,r19	 ;  tmp614, a
	or r24,r8	 ;  tmp615, tmp614
	or r25,r9	 ;  tmp615, tmp614
	or r26,r10	 ;  tmp615, tmp614
	or r27,r11	 ;  tmp615, tmp614
	add r20,r24	 ;  tmp616, tmp615
	adc r21,r25	 ;  tmp616, tmp615
	adc r22,r26	 ;  tmp616, tmp615
	adc r23,r27	 ;  tmp616, tmp615
	movw r26,r22	 ;  tmp617, tmp616
	movw r24,r20	 ;  tmp617, tmp616
	ldi r30,17	 ; ,
	1:
	lsl r24	 ;  tmp617
	rol r25	 ;  tmp617
	rol r26	 ;  tmp617
	rol r27	 ;  tmp617
	dec r30	 ; 
	brne 1b
	ldi r31,15	 ; ,
	1:
	lsr r23	 ;  c
	ror r22	 ;  c
	ror r21	 ;  c
	ror r20	 ;  c
	dec r31	 ; 
	brne 1b
	or r20,r24	 ;  c, tmp617
	or r21,r25	 ;  c, tmp617
	or r22,r26	 ;  c, tmp617
	or r23,r27	 ;  c, tmp617
	add r20,r12	 ;  c, d
	adc r21,r13	 ;  c, d
	adc r22,r14	 ;  c, d
	adc r23,r15	 ;  c, d
	.stabn	68,0,166,.LM6-.LFBB1
.LM6:
	movw r26,r2	 ; , data
	adiw r26,12	 ;  MEM[(const md5_word_t *)data_6(D) + 12B]
	ld r6,X+	 ; 
	ld r7,X+	 ; 
	ld r8,X+	 ; 
	ld r9,X	 ; 
	sbiw r26,12+3	 ;  MEM[(const md5_word_t *)data_6(D) + 12B]
	std Y+25,r6	 ;  %sfp,
	std Y+26,r7	 ;  %sfp,
	std Y+27,r8	 ;  %sfp,
	std Y+28,r9	 ;  %sfp,
	ldd r8,Y+5	 ;  tmp624, %sfp
	ldd r9,Y+6	 ;  tmp624, %sfp
	ldd r10,Y+7	 ;  tmp624, %sfp
	ldd r11,Y+8	 ;  tmp624, %sfp
	ldi r27,18	 ; ,
	sub r8,r27	 ;  tmp624,
	ldi r27,49	 ; ,
	sbc r9,r27	 ; ,
	ldi r27,66	 ; ,
	sbc r10,r27	 ; ,
	ldi r27,62	 ; ,
	sbc r11,r27	 ; ,
	ldd r4,Y+25	 ; , %sfp
	ldd r5,Y+26	 ; , %sfp
	ldd r6,Y+27	 ; , %sfp
	ldd r7,Y+28	 ; , %sfp
	add r8,r4	 ;  tmp624,
	adc r9,r5	 ;  tmp624,
	adc r10,r6	 ;  tmp624,
	adc r11,r7	 ;  tmp624,
	movw r26,r22	 ;  tmp623, c
	movw r24,r20	 ;  tmp623, c
	com r24	 ;  tmp623
	com r25	 ;  tmp623
	com r26	 ;  tmp623
	com r27	 ;  tmp623
	and r24,r16	 ;  tmp623, a
	and r25,r17	 ;  tmp623, a
	and r26,r18	 ;  tmp623, a
	and r27,r19	 ;  tmp623, a
	movw r4,r20	 ;  tmp622, c
	movw r6,r22	 ;  tmp622, c
	and r4,r12	 ;  tmp622, d
	and r5,r13	 ;  tmp622, d
	and r6,r14	 ;  tmp622, d
	and r7,r15	 ;  tmp622, d
	or r24,r4	 ;  tmp623, tmp622
	or r25,r5	 ;  tmp623, tmp622
	or r26,r6	 ;  tmp623, tmp622
	or r27,r7	 ;  tmp623, tmp622
	add r8,r24	 ;  tmp624, tmp623
	adc r9,r25	 ;  tmp624, tmp623
	adc r10,r26	 ;  tmp624, tmp623
	adc r11,r27	 ;  tmp624, tmp623
	movw r26,r10	 ;  tmp625, tmp624
	movw r24,r8	 ;  tmp625, tmp624
	ldi r30,22	 ; ,
	1:
	lsl r24	 ;  tmp625
	rol r25	 ;  tmp625
	rol r26	 ;  tmp625
	rol r27	 ;  tmp625
	dec r30	 ; 
	brne 1b
	ldi r31,10	 ; ,
	1:
	lsr r11	 ;  b
	ror r10	 ;  b
	ror r9	 ;  b
	ror r8	 ;  b
	dec r31	 ; 
	brne 1b
	or r8,r24	 ;  b, tmp625
	or r9,r25	 ;  b, tmp625
	or r10,r26	 ;  b, tmp625
	or r11,r27	 ;  b, tmp625
	add r8,r20	 ;  b, c
	adc r9,r21	 ;  b, c
	adc r10,r22	 ;  b, c
	adc r11,r23	 ;  b, c
	.stabn	68,0,167,.LM7-.LFBB1
.LM7:
	movw r26,r2	 ; , data
	adiw r26,16	 ;  MEM[(const md5_word_t *)data_6(D) + 16B]
	ld r24,X+
	ld r25,X+
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	std Y+29,r24	 ;  %sfp,
	std Y+30,r25	 ;  %sfp,
	std Y+31,r26	 ;  %sfp,
	std Y+32,r27	 ;  %sfp,
	subi r24,81	 ;  tmp632,
	sbci r25,-16	 ; ,
	sbci r26,-125	 ; ,
	sbci r27,10	 ; ,
	add r24,r16	 ;  tmp632, a
	adc r25,r17	 ;  tmp632, a
	adc r26,r18	 ;  tmp632, a
	adc r27,r19	 ;  tmp632, a
	movw r18,r10	 ;  tmp631, b
	movw r16,r8	 ;  tmp631, b
	com r16	 ;  tmp631
	com r17	 ;  tmp631
	com r18	 ;  tmp631
	com r19	 ;  tmp631
	and r16,r12	 ;  tmp631, d
	and r17,r13	 ;  tmp631, d
	and r18,r14	 ;  tmp631, d
	and r19,r15	 ;  tmp631, d
	movw r4,r8	 ;  tmp630, b
	movw r6,r10	 ;  tmp630, b
	and r4,r20	 ;  tmp630, c
	and r5,r21	 ;  tmp630, c
	and r6,r22	 ;  tmp630, c
	and r7,r23	 ;  tmp630, c
	or r16,r4	 ;  tmp631, tmp630
	or r17,r5	 ;  tmp631, tmp630
	or r18,r6	 ;  tmp631, tmp630
	or r19,r7	 ;  tmp631, tmp630
	add r24,r16	 ;  tmp632, tmp631
	adc r25,r17	 ;  tmp632, tmp631
	adc r26,r18	 ;  tmp632, tmp631
	adc r27,r19	 ;  tmp632, tmp631
	movw r16,r24	 ;  tmp633, tmp632
	movw r18,r26	 ;  tmp633, tmp632
	ldi r30,7	 ; ,
	1:
	lsl r16	 ;  tmp633
	rol r17	 ;  tmp633
	rol r18	 ;  tmp633
	rol r19	 ;  tmp633
	dec r30	 ; 
	brne 1b
	ldi r31,25	 ; ,
	1:
	lsr r27	 ;  a
	ror r26	 ;  a
	ror r25	 ;  a
	ror r24	 ;  a
	dec r31	 ; 
	brne 1b
	or r24,r16	 ;  a, tmp633
	or r25,r17	 ;  a, tmp633
	or r26,r18	 ;  a, tmp633
	or r27,r19	 ;  a, tmp633
	add r24,r8	 ;  a, b
	adc r25,r9	 ;  a, b
	adc r26,r10	 ;  a, b
	adc r27,r11	 ;  a, b
	.stabn	68,0,168,.LM8-.LFBB1
.LM8:
	movw r30,r2	 ; , data
	ldd r4,Z+20	 ; , MEM[(const md5_word_t *)data_6(D) + 20B]
	ldd r5,Z+21	 ; , MEM[(const md5_word_t *)data_6(D) + 20B]
	ldd r6,Z+22	 ; , MEM[(const md5_word_t *)data_6(D) + 20B]
	ldd r7,Z+23	 ; , MEM[(const md5_word_t *)data_6(D) + 20B]
	std Y+33,r4	 ;  %sfp,
	std Y+34,r5	 ;  %sfp,
	std Y+35,r6	 ;  %sfp,
	std Y+36,r7	 ;  %sfp,
	movw r18,r6	 ;  tmp640,
	movw r16,r4	 ;  tmp640,
	subi r16,-42	 ;  tmp640,
	sbci r17,57	 ; ,
	sbci r18,120	 ; ,
	sbci r19,-72	 ; ,
	add r16,r12	 ;  tmp640, d
	adc r17,r13	 ;  tmp640, d
	adc r18,r14	 ;  tmp640, d
	adc r19,r15	 ;  tmp640, d
	movw r12,r24	 ;  tmp639, a
	movw r14,r26	 ;  tmp639, a
	com r12	 ;  tmp639
	com r13	 ;  tmp639
	com r14	 ;  tmp639
	com r15	 ;  tmp639
	and r12,r20	 ;  tmp639, c
	and r13,r21	 ;  tmp639, c
	and r14,r22	 ;  tmp639, c
	and r15,r23	 ;  tmp639, c
	movw r4,r24	 ;  tmp638, a
	movw r6,r26	 ;  tmp638, a
	and r4,r8	 ;  tmp638, b
	and r5,r9	 ;  tmp638, b
	and r6,r10	 ;  tmp638, b
	and r7,r11	 ;  tmp638, b
	or r12,r4	 ;  tmp639, tmp638
	or r13,r5	 ;  tmp639, tmp638
	or r14,r6	 ;  tmp639, tmp638
	or r15,r7	 ;  tmp639, tmp638
	add r16,r12	 ;  tmp640, tmp639
	adc r17,r13	 ;  tmp640, tmp639
	adc r18,r14	 ;  tmp640, tmp639
	adc r19,r15	 ;  tmp640, tmp639
	movw r12,r16	 ;  tmp641, tmp640
	movw r14,r18	 ;  tmp641, tmp640
	mov r0,r27	 ; ,
	ldi r27,12	 ; ,
	1:
	lsl r12	 ;  tmp641
	rol r13	 ;  tmp641
	rol r14	 ;  tmp641
	rol r15	 ;  tmp641
	dec r27	 ; 
	brne 1b
	mov r27,r0	 ; ,
	mov r0,r31	 ; ,
	ldi r31,20	 ; ,
	1:
	lsr r19	 ;  d
	ror r18	 ;  d
	ror r17	 ;  d
	ror r16	 ;  d
	dec r31	 ; 
	brne 1b
	mov r31,r0	 ; ,
	or r16,r12	 ;  d, tmp641
	or r17,r13	 ;  d, tmp641
	or r18,r14	 ;  d, tmp641
	or r19,r15	 ;  d, tmp641
	add r16,r24	 ;  d, a
	adc r17,r25	 ;  d, a
	adc r18,r26	 ;  d, a
	adc r19,r27	 ;  d, a
	.stabn	68,0,169,.LM9-.LFBB1
.LM9:
	ldd r4,Z+24	 ; , MEM[(const md5_word_t *)data_6(D) + 24B]
	ldd r5,Z+25	 ; , MEM[(const md5_word_t *)data_6(D) + 24B]
	ldd r6,Z+26	 ; , MEM[(const md5_word_t *)data_6(D) + 24B]
	ldd r7,Z+27	 ; , MEM[(const md5_word_t *)data_6(D) + 24B]
	std Y+37,r4	 ;  %sfp,
	std Y+38,r5	 ;  %sfp,
	std Y+39,r6	 ;  %sfp,
	std Y+40,r7	 ;  %sfp,
	movw r14,r6	 ;  tmp648,
	movw r12,r4	 ;  tmp648,
	ldi r31,-19	 ; ,
	sub r12,r31	 ;  tmp648,
	ldi r31,-71	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,-49	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,87	 ; ,
	sbc r15,r31	 ; ,
	add r12,r20	 ;  tmp648, c
	adc r13,r21	 ;  tmp648, c
	adc r14,r22	 ;  tmp648, c
	adc r15,r23	 ;  tmp648, c
	movw r22,r18	 ;  tmp647, d
	movw r20,r16	 ;  tmp647, d
	com r20	 ;  tmp647
	com r21	 ;  tmp647
	com r22	 ;  tmp647
	com r23	 ;  tmp647
	and r20,r8	 ;  tmp647, b
	and r21,r9	 ;  tmp647, b
	and r22,r10	 ;  tmp647, b
	and r23,r11	 ;  tmp647, b
	movw r4,r16	 ;  tmp646, d
	movw r6,r18	 ;  tmp646, d
	and r4,r24	 ;  tmp646, a
	and r5,r25	 ;  tmp646, a
	and r6,r26	 ;  tmp646, a
	and r7,r27	 ;  tmp646, a
	or r20,r4	 ;  tmp647, tmp646
	or r21,r5	 ;  tmp647, tmp646
	or r22,r6	 ;  tmp647, tmp646
	or r23,r7	 ;  tmp647, tmp646
	add r12,r20	 ;  tmp648, tmp647
	adc r13,r21	 ;  tmp648, tmp647
	adc r14,r22	 ;  tmp648, tmp647
	adc r15,r23	 ;  tmp648, tmp647
	movw r22,r14	 ;  tmp649, tmp648
	movw r20,r12	 ;  tmp649, tmp648
	ldi r30,17	 ; ,
	1:
	lsl r20	 ;  tmp649
	rol r21	 ;  tmp649
	rol r22	 ;  tmp649
	rol r23	 ;  tmp649
	dec r30	 ; 
	brne 1b
	ldi r31,15	 ; ,
	1:
	lsr r15	 ;  c
	ror r14	 ;  c
	ror r13	 ;  c
	ror r12	 ;  c
	dec r31	 ; 
	brne 1b
	or r12,r20	 ;  c, tmp649
	or r13,r21	 ;  c, tmp649
	or r14,r22	 ;  c, tmp649
	or r15,r23	 ;  c, tmp649
	add r12,r16	 ;  c, d
	adc r13,r17	 ;  c, d
	adc r14,r18	 ;  c, d
	adc r15,r19	 ;  c, d
	.stabn	68,0,170,.LM10-.LFBB1
.LM10:
	movw r30,r2	 ; , data
	ldd r4,Z+28	 ; , MEM[(const md5_word_t *)data_6(D) + 28B]
	ldd r5,Z+29	 ; , MEM[(const md5_word_t *)data_6(D) + 28B]
	ldd r6,Z+30	 ; , MEM[(const md5_word_t *)data_6(D) + 28B]
	ldd r7,Z+31	 ; , MEM[(const md5_word_t *)data_6(D) + 28B]
	std Y+41,r4	 ;  %sfp,
	std Y+42,r5	 ;  %sfp,
	std Y+43,r6	 ;  %sfp,
	std Y+44,r7	 ;  %sfp,
	movw r22,r6	 ;  tmp656,
	movw r20,r4	 ;  tmp656,
	subi r20,-1	 ;  tmp656,
	sbci r21,106	 ; ,
	sbci r22,-71	 ; ,
	sbci r23,2	 ; ,
	add r20,r8	 ;  tmp656, b
	adc r21,r9	 ;  tmp656, b
	adc r22,r10	 ;  tmp656, b
	adc r23,r11	 ;  tmp656, b
	movw r8,r12	 ;  tmp655, c
	movw r10,r14	 ;  tmp655, c
	com r8	 ;  tmp655
	com r9	 ;  tmp655
	com r10	 ;  tmp655
	com r11	 ;  tmp655
	and r8,r24	 ;  tmp655, a
	and r9,r25	 ;  tmp655, a
	and r10,r26	 ;  tmp655, a
	and r11,r27	 ;  tmp655, a
	movw r4,r12	 ;  tmp654, c
	movw r6,r14	 ;  tmp654, c
	and r4,r16	 ;  tmp654, d
	and r5,r17	 ;  tmp654, d
	and r6,r18	 ;  tmp654, d
	and r7,r19	 ;  tmp654, d
	or r8,r4	 ;  tmp655, tmp654
	or r9,r5	 ;  tmp655, tmp654
	or r10,r6	 ;  tmp655, tmp654
	or r11,r7	 ;  tmp655, tmp654
	add r20,r8	 ;  tmp656, tmp655
	adc r21,r9	 ;  tmp656, tmp655
	adc r22,r10	 ;  tmp656, tmp655
	adc r23,r11	 ;  tmp656, tmp655
	movw r8,r20	 ;  tmp657, tmp656
	movw r10,r22	 ;  tmp657, tmp656
	mov r0,r23	 ; ,
	ldi r23,22	 ; ,
	1:
	lsl r8	 ;  tmp657
	rol r9	 ;  tmp657
	rol r10	 ;  tmp657
	rol r11	 ;  tmp657
	dec r23	 ; 
	brne 1b
	mov r23,r0	 ; ,
	mov r0,r19	 ; ,
	ldi r19,10	 ; ,
	1:
	lsr r23	 ;  b
	ror r22	 ;  b
	ror r21	 ;  b
	ror r20	 ;  b
	dec r19	 ; 
	brne 1b
	mov r19,r0	 ; ,
	or r20,r8	 ;  b, tmp657
	or r21,r9	 ;  b, tmp657
	or r22,r10	 ;  b, tmp657
	or r23,r11	 ;  b, tmp657
	add r20,r12	 ;  b, c
	adc r21,r13	 ;  b, c
	adc r22,r14	 ;  b, c
	adc r23,r15	 ;  b, c
	.stabn	68,0,171,.LM11-.LFBB1
.LM11:
	ldd r4,Z+32	 ; , MEM[(const md5_word_t *)data_6(D) + 32B]
	ldd r5,Z+33	 ; , MEM[(const md5_word_t *)data_6(D) + 32B]
	ldd r6,Z+34	 ; , MEM[(const md5_word_t *)data_6(D) + 32B]
	ldd r7,Z+35	 ; , MEM[(const md5_word_t *)data_6(D) + 32B]
	std Y+45,r4	 ;  %sfp,
	std Y+46,r5	 ;  %sfp,
	std Y+47,r6	 ;  %sfp,
	std Y+48,r7	 ;  %sfp,
	movw r10,r6	 ;  tmp664,
	movw r8,r4	 ;  tmp664,
	ldi r31,40	 ; ,
	sub r8,r31	 ;  tmp664,
	ldi r31,103	 ; ,
	sbc r9,r31	 ; ,
	ldi r31,127	 ; ,
	sbc r10,r31	 ; ,
	ldi r31,-106	 ; ,
	sbc r11,r31	 ; ,
	add r8,r24	 ;  tmp664, a
	adc r9,r25	 ;  tmp664, a
	adc r10,r26	 ;  tmp664, a
	adc r11,r27	 ;  tmp664, a
	movw r26,r22	 ;  tmp663, b
	movw r24,r20	 ;  tmp663, b
	com r24	 ;  tmp663
	com r25	 ;  tmp663
	com r26	 ;  tmp663
	com r27	 ;  tmp663
	and r24,r16	 ;  tmp663, d
	and r25,r17	 ;  tmp663, d
	and r26,r18	 ;  tmp663, d
	and r27,r19	 ;  tmp663, d
	movw r4,r20	 ;  tmp662, b
	movw r6,r22	 ;  tmp662, b
	and r4,r12	 ;  tmp662, c
	and r5,r13	 ;  tmp662, c
	and r6,r14	 ;  tmp662, c
	and r7,r15	 ;  tmp662, c
	or r24,r4	 ;  tmp663, tmp662
	or r25,r5	 ;  tmp663, tmp662
	or r26,r6	 ;  tmp663, tmp662
	or r27,r7	 ;  tmp663, tmp662
	add r8,r24	 ;  tmp664, tmp663
	adc r9,r25	 ;  tmp664, tmp663
	adc r10,r26	 ;  tmp664, tmp663
	adc r11,r27	 ;  tmp664, tmp663
	movw r26,r10	 ;  tmp665, tmp664
	movw r24,r8	 ;  tmp665, tmp664
	ldi r30,7	 ; ,
	1:
	lsl r24	 ;  tmp665
	rol r25	 ;  tmp665
	rol r26	 ;  tmp665
	rol r27	 ;  tmp665
	dec r30	 ; 
	brne 1b
	ldi r31,25	 ; ,
	1:
	lsr r11	 ;  a
	ror r10	 ;  a
	ror r9	 ;  a
	ror r8	 ;  a
	dec r31	 ; 
	brne 1b
	or r8,r24	 ;  a, tmp665
	or r9,r25	 ;  a, tmp665
	or r10,r26	 ;  a, tmp665
	or r11,r27	 ;  a, tmp665
	add r8,r20	 ;  a, b
	adc r9,r21	 ;  a, b
	adc r10,r22	 ;  a, b
	adc r11,r23	 ;  a, b
	.stabn	68,0,172,.LM12-.LFBB1
.LM12:
	movw r26,r2	 ; , data
	adiw r26,36	 ;  MEM[(const md5_word_t *)data_6(D) + 36B]
	ld r4,X+	 ; 
	ld r5,X+	 ; 
	ld r6,X+	 ; 
	ld r7,X	 ; 
	sbiw r26,36+3	 ;  MEM[(const md5_word_t *)data_6(D) + 36B]
	std Y+49,r4	 ;  %sfp,
	std Y+50,r5	 ;  %sfp,
	std Y+51,r6	 ;  %sfp,
	std Y+52,r7	 ;  %sfp,
	movw r26,r6	 ;  tmp672,
	movw r24,r4	 ;  tmp672,
	subi r24,81	 ;  tmp672,
	sbci r25,8	 ; ,
	sbci r26,-69	 ; ,
	sbci r27,116	 ; ,
	add r24,r16	 ;  tmp672, d
	adc r25,r17	 ;  tmp672, d
	adc r26,r18	 ;  tmp672, d
	adc r27,r19	 ;  tmp672, d
	movw r18,r10	 ;  tmp671, a
	movw r16,r8	 ;  tmp671, a
	com r16	 ;  tmp671
	com r17	 ;  tmp671
	com r18	 ;  tmp671
	com r19	 ;  tmp671
	and r16,r12	 ;  tmp671, c
	and r17,r13	 ;  tmp671, c
	and r18,r14	 ;  tmp671, c
	and r19,r15	 ;  tmp671, c
	movw r4,r8	 ;  tmp670, a
	movw r6,r10	 ;  tmp670, a
	and r4,r20	 ;  tmp670, b
	and r5,r21	 ;  tmp670, b
	and r6,r22	 ;  tmp670, b
	and r7,r23	 ;  tmp670, b
	or r16,r4	 ;  tmp671, tmp670
	or r17,r5	 ;  tmp671, tmp670
	or r18,r6	 ;  tmp671, tmp670
	or r19,r7	 ;  tmp671, tmp670
	add r24,r16	 ;  tmp672, tmp671
	adc r25,r17	 ;  tmp672, tmp671
	adc r26,r18	 ;  tmp672, tmp671
	adc r27,r19	 ;  tmp672, tmp671
	movw r16,r24	 ;  tmp673, tmp672
	movw r18,r26	 ;  tmp673, tmp672
	ldi r30,12	 ; ,
	1:
	lsl r16	 ;  tmp673
	rol r17	 ;  tmp673
	rol r18	 ;  tmp673
	rol r19	 ;  tmp673
	dec r30	 ; 
	brne 1b
	ldi r31,20	 ; ,
	1:
	lsr r27	 ;  d
	ror r26	 ;  d
	ror r25	 ;  d
	ror r24	 ;  d
	dec r31	 ; 
	brne 1b
	or r24,r16	 ;  d, tmp673
	or r25,r17	 ;  d, tmp673
	or r26,r18	 ;  d, tmp673
	or r27,r19	 ;  d, tmp673
	add r24,r8	 ;  d, a
	adc r25,r9	 ;  d, a
	adc r26,r10	 ;  d, a
	adc r27,r11	 ;  d, a
	.stabn	68,0,173,.LM13-.LFBB1
.LM13:
	movw r30,r2	 ; , data
	ldd r4,Z+40	 ; , MEM[(const md5_word_t *)data_6(D) + 40B]
	ldd r5,Z+41	 ; , MEM[(const md5_word_t *)data_6(D) + 40B]
	ldd r6,Z+42	 ; , MEM[(const md5_word_t *)data_6(D) + 40B]
	ldd r7,Z+43	 ; , MEM[(const md5_word_t *)data_6(D) + 40B]
	std Y+53,r4	 ;  %sfp,
	std Y+54,r5	 ;  %sfp,
	std Y+55,r6	 ;  %sfp,
	std Y+56,r7	 ;  %sfp,
	movw r18,r6	 ;  tmp680,
	movw r16,r4	 ;  tmp680,
	subi r16,79	 ;  tmp680,
	sbci r17,-92	 ; ,
	sbc r18,__zero_reg__	 ; 
	sbc r19,__zero_reg__	 ; 
	add r16,r12	 ;  tmp680, c
	adc r17,r13	 ;  tmp680, c
	adc r18,r14	 ;  tmp680, c
	adc r19,r15	 ;  tmp680, c
	movw r12,r24	 ;  tmp679, d
	movw r14,r26	 ;  tmp679, d
	com r12	 ;  tmp679
	com r13	 ;  tmp679
	com r14	 ;  tmp679
	com r15	 ;  tmp679
	and r12,r20	 ;  tmp679, b
	and r13,r21	 ;  tmp679, b
	and r14,r22	 ;  tmp679, b
	and r15,r23	 ;  tmp679, b
	movw r4,r24	 ;  tmp678, d
	movw r6,r26	 ;  tmp678, d
	and r4,r8	 ;  tmp678, a
	and r5,r9	 ;  tmp678, a
	and r6,r10	 ;  tmp678, a
	and r7,r11	 ;  tmp678, a
	or r12,r4	 ;  tmp679, tmp678
	or r13,r5	 ;  tmp679, tmp678
	or r14,r6	 ;  tmp679, tmp678
	or r15,r7	 ;  tmp679, tmp678
	add r16,r12	 ;  tmp680, tmp679
	adc r17,r13	 ;  tmp680, tmp679
	adc r18,r14	 ;  tmp680, tmp679
	adc r19,r15	 ;  tmp680, tmp679
	movw r12,r16	 ;  tmp681, tmp680
	movw r14,r18	 ;  tmp681, tmp680
	mov r0,r27	 ; ,
	ldi r27,17	 ; ,
	1:
	lsl r12	 ;  tmp681
	rol r13	 ;  tmp681
	rol r14	 ;  tmp681
	rol r15	 ;  tmp681
	dec r27	 ; 
	brne 1b
	mov r27,r0	 ; ,
	mov r0,r31	 ; ,
	ldi r31,15	 ; ,
	1:
	lsr r19	 ;  c
	ror r18	 ;  c
	ror r17	 ;  c
	ror r16	 ;  c
	dec r31	 ; 
	brne 1b
	mov r31,r0	 ; ,
	or r16,r12	 ;  c, tmp681
	or r17,r13	 ;  c, tmp681
	or r18,r14	 ;  c, tmp681
	or r19,r15	 ;  c, tmp681
	add r16,r24	 ;  c, d
	adc r17,r25	 ;  c, d
	adc r18,r26	 ;  c, d
	adc r19,r27	 ;  c, d
	.stabn	68,0,174,.LM14-.LFBB1
.LM14:
	ldd r4,Z+44	 ; , MEM[(const md5_word_t *)data_6(D) + 44B]
	ldd r5,Z+45	 ; , MEM[(const md5_word_t *)data_6(D) + 44B]
	ldd r6,Z+46	 ; , MEM[(const md5_word_t *)data_6(D) + 44B]
	ldd r7,Z+47	 ; , MEM[(const md5_word_t *)data_6(D) + 44B]
	std Y+57,r4	 ;  %sfp,
	std Y+58,r5	 ;  %sfp,
	std Y+59,r6	 ;  %sfp,
	std Y+60,r7	 ;  %sfp,
	movw r14,r6	 ;  tmp688,
	movw r12,r4	 ;  tmp688,
	ldi r31,66	 ; ,
	sub r12,r31	 ;  tmp688,
	ldi r31,40	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,-93	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,118	 ; ,
	sbc r15,r31	 ; ,
	add r12,r20	 ;  tmp688, b
	adc r13,r21	 ;  tmp688, b
	adc r14,r22	 ;  tmp688, b
	adc r15,r23	 ;  tmp688, b
	movw r22,r18	 ;  tmp687, c
	movw r20,r16	 ;  tmp687, c
	com r20	 ;  tmp687
	com r21	 ;  tmp687
	com r22	 ;  tmp687
	com r23	 ;  tmp687
	and r20,r8	 ;  tmp687, a
	and r21,r9	 ;  tmp687, a
	and r22,r10	 ;  tmp687, a
	and r23,r11	 ;  tmp687, a
	movw r4,r16	 ;  tmp686, c
	movw r6,r18	 ;  tmp686, c
	and r4,r24	 ;  tmp686, d
	and r5,r25	 ;  tmp686, d
	and r6,r26	 ;  tmp686, d
	and r7,r27	 ;  tmp686, d
	or r20,r4	 ;  tmp687, tmp686
	or r21,r5	 ;  tmp687, tmp686
	or r22,r6	 ;  tmp687, tmp686
	or r23,r7	 ;  tmp687, tmp686
	add r12,r20	 ;  tmp688, tmp687
	adc r13,r21	 ;  tmp688, tmp687
	adc r14,r22	 ;  tmp688, tmp687
	adc r15,r23	 ;  tmp688, tmp687
	movw r22,r14	 ;  tmp689, tmp688
	movw r20,r12	 ;  tmp689, tmp688
	ldi r30,22	 ; ,
	1:
	lsl r20	 ;  tmp689
	rol r21	 ;  tmp689
	rol r22	 ;  tmp689
	rol r23	 ;  tmp689
	dec r30	 ; 
	brne 1b
	ldi r31,10	 ; ,
	1:
	lsr r15	 ;  b
	ror r14	 ;  b
	ror r13	 ;  b
	ror r12	 ;  b
	dec r31	 ; 
	brne 1b
	or r12,r20	 ;  b, tmp689
	or r13,r21	 ;  b, tmp689
	or r14,r22	 ;  b, tmp689
	or r15,r23	 ;  b, tmp689
	add r12,r16	 ;  b, c
	adc r13,r17	 ;  b, c
	adc r14,r18	 ;  b, c
	adc r15,r19	 ;  b, c
	.stabn	68,0,175,.LM15-.LFBB1
.LM15:
	movw r30,r2	 ; , data
	ldd r4,Z+48	 ; , MEM[(const md5_word_t *)data_6(D) + 48B]
	ldd r5,Z+49	 ; , MEM[(const md5_word_t *)data_6(D) + 48B]
	ldd r6,Z+50	 ; , MEM[(const md5_word_t *)data_6(D) + 48B]
	ldd r7,Z+51	 ; , MEM[(const md5_word_t *)data_6(D) + 48B]
	adiw r28,61-60	 ;  %sfp
	std Y+60,r4	 ; 
	std Y+61,r5	 ; 
	std Y+62,r6	 ; 
	std Y+63,r7	 ; 
	sbiw r28,61-60	 ;  %sfp
	movw r22,r6	 ;  tmp696,
	movw r20,r4	 ;  tmp696,
	subi r20,-34	 ;  tmp696,
	sbci r21,-18	 ; ,
	sbci r22,111	 ; ,
	sbci r23,-108	 ; ,
	add r20,r8	 ;  tmp696, a
	adc r21,r9	 ;  tmp696, a
	adc r22,r10	 ;  tmp696, a
	adc r23,r11	 ;  tmp696, a
	movw r8,r12	 ;  tmp695, b
	movw r10,r14	 ;  tmp695, b
	com r8	 ;  tmp695
	com r9	 ;  tmp695
	com r10	 ;  tmp695
	com r11	 ;  tmp695
	and r8,r24	 ;  tmp695, d
	and r9,r25	 ;  tmp695, d
	and r10,r26	 ;  tmp695, d
	and r11,r27	 ;  tmp695, d
	movw r4,r12	 ;  tmp694, b
	movw r6,r14	 ;  tmp694, b
	and r4,r16	 ;  tmp694, c
	and r5,r17	 ;  tmp694, c
	and r6,r18	 ;  tmp694, c
	and r7,r19	 ;  tmp694, c
	or r8,r4	 ;  tmp695, tmp694
	or r9,r5	 ;  tmp695, tmp694
	or r10,r6	 ;  tmp695, tmp694
	or r11,r7	 ;  tmp695, tmp694
	add r20,r8	 ;  tmp696, tmp695
	adc r21,r9	 ;  tmp696, tmp695
	adc r22,r10	 ;  tmp696, tmp695
	adc r23,r11	 ;  tmp696, tmp695
	movw r8,r20	 ;  tmp697, tmp696
	movw r10,r22	 ;  tmp697, tmp696
	set
	bld __zero_reg__,7-1	 ; ,
	1:
	lsl r8	 ;  tmp697
	rol r9	 ;  tmp697
	rol r10	 ;  tmp697
	rol r11	 ;  tmp697
	lsr __zero_reg__	 ; 
	brne 1b
	movw r4,r20	 ;  a, tmp696
	movw r6,r22	 ;  a, tmp696
	ldi r20,25	 ; ,
	1:
	lsr r7	 ;  a
	ror r6	 ;  a
	ror r5	 ;  a
	ror r4	 ;  a
	dec r20	 ; 
	brne 1b
	or r4,r8	 ;  a, tmp697
	or r5,r9	 ;  a, tmp697
	or r6,r10	 ;  a, tmp697
	or r7,r11	 ;  a, tmp697
	add r4,r12	 ;  a, b
	adc r5,r13	 ;  a, b
	adc r6,r14	 ;  a, b
	adc r7,r15	 ;  a, b
	.stabn	68,0,176,.LM16-.LFBB1
.LM16:
	ldd r8,Z+52	 ; , MEM[(const md5_word_t *)data_6(D) + 52B]
	ldd r9,Z+53	 ; , MEM[(const md5_word_t *)data_6(D) + 52B]
	ldd r10,Z+54	 ; , MEM[(const md5_word_t *)data_6(D) + 52B]
	ldd r11,Z+55	 ; , MEM[(const md5_word_t *)data_6(D) + 52B]
	adiw r28,65-60	 ;  %sfp
	std Y+60,r8	 ; 
	std Y+61,r9	 ; 
	std Y+62,r10	 ; 
	std Y+63,r11	 ; 
	sbiw r28,65-60	 ;  %sfp
	movw r22,r10	 ;  tmp704,
	movw r20,r8	 ;  tmp704,
	subi r20,109	 ;  tmp704,
	sbci r21,-114	 ; ,
	sbci r22,103	 ; ,
	sbci r23,2	 ; ,
	add r20,r24	 ;  tmp704, d
	adc r21,r25	 ;  tmp704, d
	adc r22,r26	 ;  tmp704, d
	adc r23,r27	 ;  tmp704, d
	movw r26,r6	 ;  tmp703, a
	movw r24,r4	 ;  tmp703, a
	com r24	 ;  tmp703
	com r25	 ;  tmp703
	com r26	 ;  tmp703
	com r27	 ;  tmp703
	and r24,r16	 ;  tmp703, c
	and r25,r17	 ;  tmp703, c
	and r26,r18	 ;  tmp703, c
	and r27,r19	 ;  tmp703, c
	movw r10,r6	 ;  tmp702, a
	movw r8,r4	 ;  tmp702, a
	and r8,r12	 ;  tmp702, b
	and r9,r13	 ;  tmp702, b
	and r10,r14	 ;  tmp702, b
	and r11,r15	 ;  tmp702, b
	or r24,r8	 ;  tmp703, tmp702
	or r25,r9	 ;  tmp703, tmp702
	or r26,r10	 ;  tmp703, tmp702
	or r27,r11	 ;  tmp703, tmp702
	add r20,r24	 ;  tmp704, tmp703
	adc r21,r25	 ;  tmp704, tmp703
	adc r22,r26	 ;  tmp704, tmp703
	adc r23,r27	 ;  tmp704, tmp703
	movw r26,r22	 ;  tmp705, tmp704
	movw r24,r20	 ;  tmp705, tmp704
	mov r0,r23	 ; ,
	ldi r23,12	 ; ,
	1:
	lsl r24	 ;  tmp705
	rol r25	 ;  tmp705
	rol r26	 ;  tmp705
	rol r27	 ;  tmp705
	dec r23	 ; 
	brne 1b
	mov r23,r0	 ; ,
	mov r0,r19	 ; ,
	ldi r19,20	 ; ,
	1:
	lsr r23	 ;  d
	ror r22	 ;  d
	ror r21	 ;  d
	ror r20	 ;  d
	dec r19	 ; 
	brne 1b
	mov r19,r0	 ; ,
	or r20,r24	 ;  d, tmp705
	or r21,r25	 ;  d, tmp705
	or r22,r26	 ;  d, tmp705
	or r23,r27	 ;  d, tmp705
	add r20,r4	 ;  d, a
	adc r21,r5	 ;  d, a
	adc r22,r6	 ;  d, a
	adc r23,r7	 ;  d, a
	.stabn	68,0,177,.LM17-.LFBB1
.LM17:
	movw r8,r20	 ; , d
	movw r10,r22	 ; , d
	com r8	 ; 
	com r9	 ; 
	com r10	 ; 
	com r11	 ; 
	std Y+1,r8	 ;  %sfp,
	std Y+2,r9	 ;  %sfp,
	std Y+3,r10	 ;  %sfp,
	std Y+4,r11	 ;  %sfp,
	ldd r24,Z+56	 ; , MEM[(const md5_word_t *)data_6(D) + 56B]
	ldd r25,Z+57	 ; , MEM[(const md5_word_t *)data_6(D) + 56B]
	ldd r26,Z+58	 ; , MEM[(const md5_word_t *)data_6(D) + 56B]
	ldd r27,Z+59	 ; , MEM[(const md5_word_t *)data_6(D) + 56B]
	adiw r28,69-60	 ;  %sfp
	std Y+60,r24	 ; 
	std Y+61,r25	 ; 
	std Y+62,r26	 ; 
	std Y+63,r27	 ; 
	sbiw r28,69-60	 ;  %sfp
	subi r24,114	 ;  tmp711,
	sbci r25,-68	 ; ,
	sbci r26,-122	 ; ,
	sbci r27,89	 ; ,
	add r24,r16	 ;  tmp711, c
	adc r25,r17	 ;  tmp711, c
	adc r26,r18	 ;  tmp711, c
	adc r27,r19	 ;  tmp711, c
	movw r18,r10	 ;  tmp710,
	movw r16,r8	 ;  tmp710,
	and r16,r12	 ;  tmp710, b
	and r17,r13	 ;  tmp710, b
	and r18,r14	 ;  tmp710, b
	and r19,r15	 ;  tmp710, b
	movw r8,r20	 ;  tmp709, d
	movw r10,r22	 ;  tmp709, d
	and r8,r4	 ;  tmp709, a
	and r9,r5	 ;  tmp709, a
	and r10,r6	 ;  tmp709, a
	and r11,r7	 ;  tmp709, a
	or r16,r8	 ;  tmp710, tmp709
	or r17,r9	 ;  tmp710, tmp709
	or r18,r10	 ;  tmp710, tmp709
	or r19,r11	 ;  tmp710, tmp709
	add r24,r16	 ;  tmp711, tmp710
	adc r25,r17	 ;  tmp711, tmp710
	adc r26,r18	 ;  tmp711, tmp710
	adc r27,r19	 ;  tmp711, tmp710
	movw r16,r24	 ;  tmp712, tmp711
	movw r18,r26	 ;  tmp712, tmp711
	mov r0,r31	 ; ,
	ldi r31,17	 ; ,
	1:
	lsl r16	 ;  tmp712
	rol r17	 ;  tmp712
	rol r18	 ;  tmp712
	rol r19	 ;  tmp712
	dec r31	 ; 
	brne 1b
	mov r31,r0	 ; ,
	mov r0,r23	 ; ,
	ldi r23,15	 ; ,
	1:
	lsr r27	 ;  c
	ror r26	 ;  c
	ror r25	 ;  c
	ror r24	 ;  c
	dec r23	 ; 
	brne 1b
	mov r23,r0	 ; ,
	or r24,r16	 ;  c, tmp712
	or r25,r17	 ;  c, tmp712
	or r26,r18	 ;  c, tmp712
	or r27,r19	 ;  c, tmp712
	add r24,r20	 ;  c, d
	adc r25,r21	 ;  c, d
	adc r26,r22	 ;  c, d
	adc r27,r23	 ;  c, d
	.stabn	68,0,178,.LM18-.LFBB1
.LM18:
	movw r8,r24	 ; , c
	movw r10,r26	 ; , c
	com r8	 ; 
	com r9	 ; 
	com r10	 ; 
	com r11	 ; 
	adiw r28,85-60	 ;  %sfp
	std Y+60,r8	 ; 
	std Y+61,r9	 ; 
	std Y+62,r10	 ; 
	std Y+63,r11	 ; 
	sbiw r28,85-60	 ;  %sfp
	ldd r16,Z+60	 ; , MEM[(const md5_word_t *)data_6(D) + 60B]
	ldd r17,Z+61	 ; , MEM[(const md5_word_t *)data_6(D) + 60B]
	ldd r18,Z+62	 ; , MEM[(const md5_word_t *)data_6(D) + 60B]
	ldd r19,Z+63	 ; , MEM[(const md5_word_t *)data_6(D) + 60B]
	adiw r28,73-60	 ;  %sfp
	std Y+60,r16	 ; 
	std Y+61,r17	 ; 
	std Y+62,r18	 ; 
	std Y+63,r19	 ; 
	sbiw r28,73-60	 ;  %sfp
	subi r16,-33	 ;  tmp718,
	sbci r17,-9	 ; ,
	sbci r18,75	 ; ,
	sbci r19,-74	 ; ,
	add r16,r12	 ;  tmp718, b
	adc r17,r13	 ;  tmp718, b
	adc r18,r14	 ;  tmp718, b
	adc r19,r15	 ;  tmp718, b
	movw r14,r10	 ;  tmp717,
	movw r12,r8	 ;  tmp717,
	and r12,r4	 ;  tmp717, a
	and r13,r5	 ;  tmp717, a
	and r14,r6	 ;  tmp717, a
	and r15,r7	 ;  tmp717, a
	movw r8,r24	 ;  tmp716, c
	movw r10,r26	 ;  tmp716, c
	and r8,r20	 ;  tmp716, d
	and r9,r21	 ;  tmp716, d
	and r10,r22	 ;  tmp716, d
	and r11,r23	 ;  tmp716, d
	or r12,r8	 ;  tmp717, tmp716
	or r13,r9	 ;  tmp717, tmp716
	or r14,r10	 ;  tmp717, tmp716
	or r15,r11	 ;  tmp717, tmp716
	add r16,r12	 ;  tmp718, tmp717
	adc r17,r13	 ;  tmp718, tmp717
	adc r18,r14	 ;  tmp718, tmp717
	adc r19,r15	 ;  tmp718, tmp717
	movw r12,r16	 ;  tmp719, tmp718
	movw r14,r18	 ;  tmp719, tmp718
	ldi r30,22	 ; ,
	1:
	lsl r12	 ;  tmp719
	rol r13	 ;  tmp719
	rol r14	 ;  tmp719
	rol r15	 ;  tmp719
	dec r30	 ; 
	brne 1b
	ldi r31,10	 ; ,
	1:
	lsr r19	 ;  b
	ror r18	 ;  b
	ror r17	 ;  b
	ror r16	 ;  b
	dec r31	 ; 
	brne 1b
	or r16,r12	 ;  b, tmp719
	or r17,r13	 ;  b, tmp719
	or r18,r14	 ;  b, tmp719
	or r19,r15	 ;  b, tmp719
	add r16,r24	 ;  b, c
	adc r17,r25	 ;  b, c
	adc r18,r26	 ;  b, c
	adc r19,r27	 ;  b, c
	.stabn	68,0,189,.LM19-.LFBB1
.LM19:
	ldd r12,Y+17	 ;  tmp725, %sfp
	ldd r13,Y+18	 ;  tmp725, %sfp
	ldd r14,Y+19	 ;  tmp725, %sfp
	ldd r15,Y+20	 ;  tmp725, %sfp
	ldi r31,-98	 ; ,
	sub r12,r31	 ;  tmp725,
	ldi r31,-38	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,-31	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,9	 ; ,
	sbc r15,r31	 ; ,
	add r12,r4	 ;  tmp725, a
	adc r13,r5	 ;  tmp725, a
	adc r14,r6	 ;  tmp725, a
	adc r15,r7	 ;  tmp725, a
	movw r8,r16	 ;  tmp724, b
	movw r10,r18	 ;  tmp724, b
	and r8,r20	 ;  tmp724, d
	and r9,r21	 ;  tmp724, d
	and r10,r22	 ;  tmp724, d
	and r11,r23	 ;  tmp724, d
	ldd r4,Y+1	 ;  tmp723, %sfp
	ldd r5,Y+2	 ;  tmp723, %sfp
	ldd r6,Y+3	 ;  tmp723, %sfp
	ldd r7,Y+4	 ;  tmp723, %sfp
	and r4,r24	 ;  tmp723, c
	and r5,r25	 ;  tmp723, c
	and r6,r26	 ;  tmp723, c
	and r7,r27	 ;  tmp723, c
	or r8,r4	 ;  tmp724, tmp723
	or r9,r5	 ;  tmp724, tmp723
	or r10,r6	 ;  tmp724, tmp723
	or r11,r7	 ;  tmp724, tmp723
	add r12,r8	 ;  tmp725, tmp724
	adc r13,r9	 ;  tmp725, tmp724
	adc r14,r10	 ;  tmp725, tmp724
	adc r15,r11	 ;  tmp725, tmp724
	movw r4,r12	 ;  tmp726, tmp725
	movw r6,r14	 ;  tmp726, tmp725
	ldi r30,5	 ; ,
	1:
	lsl r4	 ;  tmp726
	rol r5	 ;  tmp726
	rol r6	 ;  tmp726
	rol r7	 ;  tmp726
	dec r30	 ; 
	brne 1b
	ldi r31,27	 ; ,
	1:
	lsr r15	 ;  a
	ror r14	 ;  a
	ror r13	 ;  a
	ror r12	 ;  a
	dec r31	 ; 
	brne 1b
	or r12,r4	 ;  a, tmp726
	or r13,r5	 ;  a, tmp726
	or r14,r6	 ;  a, tmp726
	or r15,r7	 ;  a, tmp726
	add r12,r16	 ;  a, b
	adc r13,r17	 ;  a, b
	adc r14,r18	 ;  a, b
	adc r15,r19	 ;  a, b
	.stabn	68,0,190,.LM20-.LFBB1
.LM20:
	ldd r4,Y+37	 ;  tmp732, %sfp
	ldd r5,Y+38	 ;  tmp732, %sfp
	ldd r6,Y+39	 ;  tmp732, %sfp
	ldd r7,Y+40	 ;  tmp732, %sfp
	ldi r30,-64	 ; ,
	sub r4,r30	 ;  tmp732,
	ldi r30,76	 ; ,
	sbc r5,r30	 ; ,
	ldi r30,-65	 ; ,
	sbc r6,r30	 ; ,
	ldi r30,63	 ; ,
	sbc r7,r30	 ; ,
	add r4,r20	 ;  tmp732, d
	adc r5,r21	 ;  tmp732, d
	adc r6,r22	 ;  tmp732, d
	adc r7,r23	 ;  tmp732, d
	movw r22,r14	 ;  tmp731, a
	movw r20,r12	 ;  tmp731, a
	and r20,r24	 ;  tmp731, c
	and r21,r25	 ;  tmp731, c
	and r22,r26	 ;  tmp731, c
	and r23,r27	 ;  tmp731, c
	adiw r28,85-60	 ;  %sfp
	ldd r8,Y+60	 ;  tmp730
	ldd r9,Y+61	 ;  tmp730
	ldd r10,Y+62	 ;  tmp730
	ldd r11,Y+63	 ;  tmp730
	sbiw r28,85-60	 ;  %sfp
	and r8,r16	 ;  tmp730, b
	and r9,r17	 ;  tmp730, b
	and r10,r18	 ;  tmp730, b
	and r11,r19	 ;  tmp730, b
	or r20,r8	 ;  tmp731, tmp730
	or r21,r9	 ;  tmp731, tmp730
	or r22,r10	 ;  tmp731, tmp730
	or r23,r11	 ;  tmp731, tmp730
	add r4,r20	 ;  tmp732, tmp731
	adc r5,r21	 ;  tmp732, tmp731
	adc r6,r22	 ;  tmp732, tmp731
	adc r7,r23	 ;  tmp732, tmp731
	movw r22,r6	 ;  tmp733, tmp732
	movw r20,r4	 ;  tmp733, tmp732
	ldi r30,9	 ; ,
	1:
	lsl r20	 ;  tmp733
	rol r21	 ;  tmp733
	rol r22	 ;  tmp733
	rol r23	 ;  tmp733
	dec r30	 ; 
	brne 1b
	ldi r31,23	 ; ,
	1:
	lsr r7	 ;  d
	ror r6	 ;  d
	ror r5	 ;  d
	ror r4	 ;  d
	dec r31	 ; 
	brne 1b
	or r4,r20	 ;  d, tmp733
	or r5,r21	 ;  d, tmp733
	or r6,r22	 ;  d, tmp733
	or r7,r23	 ;  d, tmp733
	add r4,r12	 ;  d, a
	adc r5,r13	 ;  d, a
	adc r6,r14	 ;  d, a
	adc r7,r15	 ;  d, a
	.stabn	68,0,191,.LM21-.LFBB1
.LM21:
	ldd r8,Y+57	 ;  tmp740, %sfp
	ldd r9,Y+58	 ;  tmp740, %sfp
	ldd r10,Y+59	 ;  tmp740, %sfp
	ldd r11,Y+60	 ;  tmp740, %sfp
	ldi r31,-81	 ; ,
	sub r8,r31	 ;  tmp740,
	ldi r31,-91	 ; ,
	sbc r9,r31	 ; ,
	ldi r31,-95	 ; ,
	sbc r10,r31	 ; ,
	ldi r31,-39	 ; ,
	sbc r11,r31	 ; ,
	add r8,r24	 ;  tmp740, c
	adc r9,r25	 ;  tmp740, c
	adc r10,r26	 ;  tmp740, c
	adc r11,r27	 ;  tmp740, c
	movw r26,r6	 ;  tmp739, d
	movw r24,r4	 ;  tmp739, d
	and r24,r16	 ;  tmp739, b
	and r25,r17	 ;  tmp739, b
	and r26,r18	 ;  tmp739, b
	and r27,r19	 ;  tmp739, b
	movw r22,r18	 ;  tmp738, b
	movw r20,r16	 ;  tmp738, b
	com r20	 ;  tmp738
	com r21	 ;  tmp738
	com r22	 ;  tmp738
	com r23	 ;  tmp738
	and r20,r12	 ;  tmp738, a
	and r21,r13	 ;  tmp738, a
	and r22,r14	 ;  tmp738, a
	and r23,r15	 ;  tmp738, a
	or r24,r20	 ;  tmp739, tmp738
	or r25,r21	 ;  tmp739, tmp738
	or r26,r22	 ;  tmp739, tmp738
	or r27,r23	 ;  tmp739, tmp738
	add r8,r24	 ;  tmp740, tmp739
	adc r9,r25	 ;  tmp740, tmp739
	adc r10,r26	 ;  tmp740, tmp739
	adc r11,r27	 ;  tmp740, tmp739
	movw r26,r10	 ;  tmp741, tmp740
	movw r24,r8	 ;  tmp741, tmp740
	ldi r20,14	 ; ,
	1:
	lsl r24	 ;  tmp741
	rol r25	 ;  tmp741
	rol r26	 ;  tmp741
	rol r27	 ;  tmp741
	dec r20	 ; 
	brne 1b
	ldi r21,18	 ; ,
	1:
	lsr r11	 ;  c
	ror r10	 ;  c
	ror r9	 ;  c
	ror r8	 ;  c
	dec r21	 ; 
	brne 1b
	or r8,r24	 ;  c, tmp741
	or r9,r25	 ;  c, tmp741
	or r10,r26	 ;  c, tmp741
	or r11,r27	 ;  c, tmp741
	add r8,r4	 ;  c, d
	adc r9,r5	 ;  c, d
	adc r10,r6	 ;  c, d
	adc r11,r7	 ;  c, d
	.stabn	68,0,192,.LM22-.LFBB1
.LM22:
	ldd r24,Y+13	 ;  tmp748, %sfp
	ldd r25,Y+14	 ;  tmp748, %sfp
	ldd r26,Y+15	 ;  tmp748, %sfp
	ldd r27,Y+16	 ;  tmp748, %sfp
	subi r24,86	 ;  tmp748,
	sbci r25,56	 ; ,
	sbci r26,73	 ; ,
	sbci r27,22	 ; ,
	add r24,r16	 ;  tmp748, b
	adc r25,r17	 ;  tmp748, b
	adc r26,r18	 ;  tmp748, b
	adc r27,r19	 ;  tmp748, b
	movw r22,r10	 ;  tmp747, c
	movw r20,r8	 ;  tmp747, c
	and r20,r12	 ;  tmp747, a
	and r21,r13	 ;  tmp747, a
	and r22,r14	 ;  tmp747, a
	and r23,r15	 ;  tmp747, a
	movw r18,r14	 ;  tmp746, a
	movw r16,r12	 ;  tmp746, a
	com r16	 ;  tmp746
	com r17	 ;  tmp746
	com r18	 ;  tmp746
	com r19	 ;  tmp746
	and r16,r4	 ;  tmp746, d
	and r17,r5	 ;  tmp746, d
	and r18,r6	 ;  tmp746, d
	and r19,r7	 ;  tmp746, d
	or r20,r16	 ;  tmp747, tmp746
	or r21,r17	 ;  tmp747, tmp746
	or r22,r18	 ;  tmp747, tmp746
	or r23,r19	 ;  tmp747, tmp746
	add r24,r20	 ;  tmp748, tmp747
	adc r25,r21	 ;  tmp748, tmp747
	adc r26,r22	 ;  tmp748, tmp747
	adc r27,r23	 ;  tmp748, tmp747
	movw r20,r24	 ;  tmp749, tmp748
	movw r22,r26	 ;  tmp749, tmp748
	ldi r30,20	 ; ,
	1:
	lsl r20	 ;  tmp749
	rol r21	 ;  tmp749
	rol r22	 ;  tmp749
	rol r23	 ;  tmp749
	dec r30	 ; 
	brne 1b
	movw r16,r24	 ;  b, tmp748
	movw r18,r26	 ;  b, tmp748
	ldi r31,12	 ; ,
	1:
	lsr r19	 ;  b
	ror r18	 ;  b
	ror r17	 ;  b
	ror r16	 ;  b
	dec r31	 ; 
	brne 1b
	or r16,r20	 ;  b, tmp749
	or r17,r21	 ;  b, tmp749
	or r18,r22	 ;  b, tmp749
	or r19,r23	 ;  b, tmp749
	add r16,r8	 ;  b, c
	adc r17,r9	 ;  b, c
	adc r18,r10	 ;  b, c
	adc r19,r11	 ;  b, c
	.stabn	68,0,193,.LM23-.LFBB1
.LM23:
	ldd r24,Y+33	 ;  tmp756, %sfp
	ldd r25,Y+34	 ;  tmp756, %sfp
	ldd r26,Y+35	 ;  tmp756, %sfp
	ldd r27,Y+36	 ;  tmp756, %sfp
	subi r24,-93	 ;  tmp756,
	sbci r25,-17	 ; ,
	sbci r26,-48	 ; ,
	sbci r27,41	 ; ,
	add r24,r12	 ;  tmp756, a
	adc r25,r13	 ;  tmp756, a
	adc r26,r14	 ;  tmp756, a
	adc r27,r15	 ;  tmp756, a
	movw r22,r18	 ;  tmp755, b
	movw r20,r16	 ;  tmp755, b
	and r20,r4	 ;  tmp755, d
	and r21,r5	 ;  tmp755, d
	and r22,r6	 ;  tmp755, d
	and r23,r7	 ;  tmp755, d
	movw r14,r6	 ;  tmp754, d
	movw r12,r4	 ;  tmp754, d
	com r12	 ;  tmp754
	com r13	 ;  tmp754
	com r14	 ;  tmp754
	com r15	 ;  tmp754
	and r12,r8	 ;  tmp754, c
	and r13,r9	 ;  tmp754, c
	and r14,r10	 ;  tmp754, c
	and r15,r11	 ;  tmp754, c
	or r20,r12	 ;  tmp755, tmp754
	or r21,r13	 ;  tmp755, tmp754
	or r22,r14	 ;  tmp755, tmp754
	or r23,r15	 ;  tmp755, tmp754
	add r24,r20	 ;  tmp756, tmp755
	adc r25,r21	 ;  tmp756, tmp755
	adc r26,r22	 ;  tmp756, tmp755
	adc r27,r23	 ;  tmp756, tmp755
	movw r20,r24	 ;  tmp757, tmp756
	movw r22,r26	 ;  tmp757, tmp756
	ldi r30,5	 ; ,
	1:
	lsl r20	 ;  tmp757
	rol r21	 ;  tmp757
	rol r22	 ;  tmp757
	rol r23	 ;  tmp757
	dec r30	 ; 
	brne 1b
	movw r12,r24	 ; , tmp756
	movw r14,r26	 ; , tmp756
	ldi r31,27	 ; ,
	1:
	lsr r15	 ; 
	ror r14	 ; 
	ror r13	 ; 
	ror r12	 ; 
	dec r31	 ; 
	brne 1b
	or r12,r20	 ; , tmp757
	or r13,r21	 ; , tmp757
	or r14,r22	 ; , tmp757
	or r15,r23	 ; , tmp757
	add r12,r16	 ; , b
	adc r13,r17	 ; , b
	adc r14,r18	 ; , b
	adc r15,r19	 ; , b
	std Y+1,r12	 ;  %sfp,
	std Y+2,r13	 ;  %sfp,
	std Y+3,r14	 ;  %sfp,
	std Y+4,r15	 ;  %sfp,
	.stabn	68,0,194,.LM24-.LFBB1
.LM24:
	ldd r20,Y+53	 ;  tmp764, %sfp
	ldd r21,Y+54	 ;  tmp764, %sfp
	ldd r22,Y+55	 ;  tmp764, %sfp
	ldd r23,Y+56	 ;  tmp764, %sfp
	subi r20,-83	 ;  tmp764,
	sbci r21,-21	 ; ,
	sbci r22,-69	 ; ,
	sbci r23,-3	 ; ,
	add r20,r4	 ;  tmp764, d
	adc r21,r5	 ;  tmp764, d
	adc r22,r6	 ;  tmp764, d
	adc r23,r7	 ;  tmp764, d
	movw r26,r14	 ;  tmp763,
	movw r24,r12	 ;  tmp763,
	and r24,r8	 ;  tmp763, c
	and r25,r9	 ;  tmp763, c
	and r26,r10	 ;  tmp763, c
	and r27,r11	 ;  tmp763, c
	movw r14,r10	 ;  tmp762, c
	movw r12,r8	 ;  tmp762, c
	com r12	 ;  tmp762
	com r13	 ;  tmp762
	com r14	 ;  tmp762
	com r15	 ;  tmp762
	and r12,r16	 ;  tmp762, b
	and r13,r17	 ;  tmp762, b
	and r14,r18	 ;  tmp762, b
	and r15,r19	 ;  tmp762, b
	or r24,r12	 ;  tmp763, tmp762
	or r25,r13	 ;  tmp763, tmp762
	or r26,r14	 ;  tmp763, tmp762
	or r27,r15	 ;  tmp763, tmp762
	add r20,r24	 ;  tmp764, tmp763
	adc r21,r25	 ;  tmp764, tmp763
	adc r22,r26	 ;  tmp764, tmp763
	adc r23,r27	 ;  tmp764, tmp763
	movw r26,r22	 ;  tmp765, tmp764
	movw r24,r20	 ;  tmp765, tmp764
	ldi r30,9	 ; ,
	1:
	lsl r24	 ;  tmp765
	rol r25	 ;  tmp765
	rol r26	 ;  tmp765
	rol r27	 ;  tmp765
	dec r30	 ; 
	brne 1b
	ldi r31,23	 ; ,
	1:
	lsr r23	 ;  d
	ror r22	 ;  d
	ror r21	 ;  d
	ror r20	 ;  d
	dec r31	 ; 
	brne 1b
	or r20,r24	 ;  d, tmp765
	or r21,r25	 ;  d, tmp765
	or r22,r26	 ;  d, tmp765
	or r23,r27	 ;  d, tmp765
	ldd r24,Y+1	 ; , %sfp
	ldd r25,Y+2	 ; , %sfp
	ldd r26,Y+3	 ; , %sfp
	ldd r27,Y+4	 ; , %sfp
	add r20,r24	 ;  d,
	adc r21,r25	 ;  d,
	adc r22,r26	 ;  d,
	adc r23,r27	 ;  d,
	.stabn	68,0,195,.LM25-.LFBB1
.LM25:
	adiw r28,73-60	 ;  %sfp
	ldd r24,Y+60	 ;  tmp772
	ldd r25,Y+61	 ;  tmp772
	ldd r26,Y+62	 ;  tmp772
	ldd r27,Y+63	 ;  tmp772
	sbiw r28,73-60	 ;  %sfp
	subi r24,127	 ;  tmp772,
	sbci r25,25	 ; ,
	sbci r26,94	 ; ,
	sbci r27,39	 ; ,
	add r24,r8	 ;  tmp772, c
	adc r25,r9	 ;  tmp772, c
	adc r26,r10	 ;  tmp772, c
	adc r27,r11	 ;  tmp772, c
	movw r12,r20	 ;  tmp771, d
	movw r14,r22	 ;  tmp771, d
	and r12,r16	 ;  tmp771, b
	and r13,r17	 ;  tmp771, b
	and r14,r18	 ;  tmp771, b
	and r15,r19	 ;  tmp771, b
	movw r8,r16	 ;  tmp770, b
	movw r10,r18	 ;  tmp770, b
	com r8	 ;  tmp770
	com r9	 ;  tmp770
	com r10	 ;  tmp770
	com r11	 ;  tmp770
	ldd r4,Y+1	 ; , %sfp
	ldd r5,Y+2	 ; , %sfp
	ldd r6,Y+3	 ; , %sfp
	ldd r7,Y+4	 ; , %sfp
	and r8,r4	 ;  tmp770,
	and r9,r5	 ;  tmp770,
	and r10,r6	 ;  tmp770,
	and r11,r7	 ;  tmp770,
	or r12,r8	 ;  tmp771, tmp770
	or r13,r9	 ;  tmp771, tmp770
	or r14,r10	 ;  tmp771, tmp770
	or r15,r11	 ;  tmp771, tmp770
	add r24,r12	 ;  tmp772, tmp771
	adc r25,r13	 ;  tmp772, tmp771
	adc r26,r14	 ;  tmp772, tmp771
	adc r27,r15	 ;  tmp772, tmp771
	movw r12,r24	 ;  tmp773, tmp772
	movw r14,r26	 ;  tmp773, tmp772
	ldi r30,14	 ; ,
	1:
	lsl r12	 ;  tmp773
	rol r13	 ;  tmp773
	rol r14	 ;  tmp773
	rol r15	 ;  tmp773
	dec r30	 ; 
	brne 1b
	ldi r31,18	 ; ,
	1:
	lsr r27	 ;  c
	ror r26	 ;  c
	ror r25	 ;  c
	ror r24	 ;  c
	dec r31	 ; 
	brne 1b
	or r24,r12	 ;  c, tmp773
	or r25,r13	 ;  c, tmp773
	or r26,r14	 ;  c, tmp773
	or r27,r15	 ;  c, tmp773
	add r24,r20	 ;  c, d
	adc r25,r21	 ;  c, d
	adc r26,r22	 ;  c, d
	adc r27,r23	 ;  c, d
	.stabn	68,0,196,.LM26-.LFBB1
.LM26:
	ldd r8,Y+29	 ;  tmp780, %sfp
	ldd r9,Y+30	 ;  tmp780, %sfp
	ldd r10,Y+31	 ;  tmp780, %sfp
	ldd r11,Y+32	 ;  tmp780, %sfp
	ldi r30,56	 ; ,
	sub r8,r30	 ;  tmp780,
	ldi r30,4	 ; ,
	sbc r9,r30	 ; ,
	ldi r30,44	 ; ,
	sbc r10,r30	 ; ,
	ldi r30,24	 ; ,
	sbc r11,r30	 ; ,
	add r8,r16	 ;  tmp780, b
	adc r9,r17	 ;  tmp780, b
	adc r10,r18	 ;  tmp780, b
	adc r11,r19	 ;  tmp780, b
	movw r18,r6	 ;  tmp779,
	movw r16,r4	 ;  tmp779,
	and r16,r24	 ;  tmp779, c
	and r17,r25	 ;  tmp779, c
	and r18,r26	 ;  tmp779, c
	and r19,r27	 ;  tmp779, c
	movw r14,r6	 ;  tmp778,
	movw r12,r4	 ;  tmp778,
	com r12	 ;  tmp778
	com r13	 ;  tmp778
	com r14	 ;  tmp778
	com r15	 ;  tmp778
	and r12,r20	 ;  tmp778, d
	and r13,r21	 ;  tmp778, d
	and r14,r22	 ;  tmp778, d
	and r15,r23	 ;  tmp778, d
	or r16,r12	 ;  tmp779, tmp778
	or r17,r13	 ;  tmp779, tmp778
	or r18,r14	 ;  tmp779, tmp778
	or r19,r15	 ;  tmp779, tmp778
	add r8,r16	 ;  tmp780, tmp779
	adc r9,r17	 ;  tmp780, tmp779
	adc r10,r18	 ;  tmp780, tmp779
	adc r11,r19	 ;  tmp780, tmp779
	movw r18,r10	 ;  tmp781, tmp780
	movw r16,r8	 ;  tmp781, tmp780
	ldi r30,20	 ; ,
	1:
	lsl r16	 ;  tmp781
	rol r17	 ;  tmp781
	rol r18	 ;  tmp781
	rol r19	 ;  tmp781
	dec r30	 ; 
	brne 1b
	ldi r31,12	 ; ,
	1:
	lsr r11	 ;  b
	ror r10	 ;  b
	ror r9	 ;  b
	ror r8	 ;  b
	dec r31	 ; 
	brne 1b
	or r8,r16	 ;  b, tmp781
	or r9,r17	 ;  b, tmp781
	or r10,r18	 ;  b, tmp781
	or r11,r19	 ;  b, tmp781
	add r8,r24	 ;  b, c
	adc r9,r25	 ;  b, c
	adc r10,r26	 ;  b, c
	adc r11,r27	 ;  b, c
	.stabn	68,0,197,.LM27-.LFBB1
.LM27:
	ldd r12,Y+49	 ;  tmp788, %sfp
	ldd r13,Y+50	 ;  tmp788, %sfp
	ldd r14,Y+51	 ;  tmp788, %sfp
	ldd r15,Y+52	 ;  tmp788, %sfp
	ldi r31,26	 ; ,
	sub r12,r31	 ;  tmp788,
	ldi r31,50	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,30	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,-34	 ; ,
	sbc r15,r31	 ; ,
	add r12,r4	 ;  tmp788,
	adc r13,r5	 ;  tmp788,
	adc r14,r6	 ;  tmp788,
	adc r15,r7	 ;  tmp788,
	movw r18,r10	 ;  tmp787, b
	movw r16,r8	 ;  tmp787, b
	and r16,r20	 ;  tmp787, d
	and r17,r21	 ;  tmp787, d
	and r18,r22	 ;  tmp787, d
	and r19,r23	 ;  tmp787, d
	movw r4,r20	 ;  tmp786, d
	movw r6,r22	 ;  tmp786, d
	com r4	 ;  tmp786
	com r5	 ;  tmp786
	com r6	 ;  tmp786
	com r7	 ;  tmp786
	and r4,r24	 ;  tmp786, c
	and r5,r25	 ;  tmp786, c
	and r6,r26	 ;  tmp786, c
	and r7,r27	 ;  tmp786, c
	or r16,r4	 ;  tmp787, tmp786
	or r17,r5	 ;  tmp787, tmp786
	or r18,r6	 ;  tmp787, tmp786
	or r19,r7	 ;  tmp787, tmp786
	add r12,r16	 ;  tmp788, tmp787
	adc r13,r17	 ;  tmp788, tmp787
	adc r14,r18	 ;  tmp788, tmp787
	adc r15,r19	 ;  tmp788, tmp787
	movw r18,r14	 ;  tmp789, tmp788
	movw r16,r12	 ;  tmp789, tmp788
	ldi r30,5	 ; ,
	1:
	lsl r16	 ;  tmp789
	rol r17	 ;  tmp789
	rol r18	 ;  tmp789
	rol r19	 ;  tmp789
	dec r30	 ; 
	brne 1b
	ldi r31,27	 ; ,
	1:
	lsr r15	 ;  a
	ror r14	 ;  a
	ror r13	 ;  a
	ror r12	 ;  a
	dec r31	 ; 
	brne 1b
	or r12,r16	 ;  a, tmp789
	or r13,r17	 ;  a, tmp789
	or r14,r18	 ;  a, tmp789
	or r15,r19	 ;  a, tmp789
	add r12,r8	 ;  a, b
	adc r13,r9	 ;  a, b
	adc r14,r10	 ;  a, b
	adc r15,r11	 ;  a, b
	.stabn	68,0,198,.LM28-.LFBB1
.LM28:
	adiw r28,69-60	 ;  %sfp
	ldd r16,Y+60	 ;  tmp796
	ldd r17,Y+61	 ;  tmp796
	ldd r18,Y+62	 ;  tmp796
	ldd r19,Y+63	 ;  tmp796
	sbiw r28,69-60	 ;  %sfp
	subi r16,42	 ;  tmp796,
	sbci r17,-8	 ; ,
	sbci r18,-56	 ; ,
	sbci r19,60	 ; ,
	add r16,r20	 ;  tmp796, d
	adc r17,r21	 ;  tmp796, d
	adc r18,r22	 ;  tmp796, d
	adc r19,r23	 ;  tmp796, d
	movw r22,r14	 ;  tmp795, a
	movw r20,r12	 ;  tmp795, a
	and r20,r24	 ;  tmp795, c
	and r21,r25	 ;  tmp795, c
	and r22,r26	 ;  tmp795, c
	and r23,r27	 ;  tmp795, c
	movw r4,r24	 ;  tmp794, c
	movw r6,r26	 ;  tmp794, c
	com r4	 ;  tmp794
	com r5	 ;  tmp794
	com r6	 ;  tmp794
	com r7	 ;  tmp794
	and r4,r8	 ;  tmp794, b
	and r5,r9	 ;  tmp794, b
	and r6,r10	 ;  tmp794, b
	and r7,r11	 ;  tmp794, b
	or r20,r4	 ;  tmp795, tmp794
	or r21,r5	 ;  tmp795, tmp794
	or r22,r6	 ;  tmp795, tmp794
	or r23,r7	 ;  tmp795, tmp794
	add r16,r20	 ;  tmp796, tmp795
	adc r17,r21	 ;  tmp796, tmp795
	adc r18,r22	 ;  tmp796, tmp795
	adc r19,r23	 ;  tmp796, tmp795
	movw r22,r18	 ;  tmp797, tmp796
	movw r20,r16	 ;  tmp797, tmp796
	ldi r30,9	 ; ,
	1:
	lsl r20	 ;  tmp797
	rol r21	 ;  tmp797
	rol r22	 ;  tmp797
	rol r23	 ;  tmp797
	dec r30	 ; 
	brne 1b
	ldi r31,23	 ; ,
	1:
	lsr r19	 ;  d
	ror r18	 ;  d
	ror r17	 ;  d
	ror r16	 ;  d
	dec r31	 ; 
	brne 1b
	or r16,r20	 ;  d, tmp797
	or r17,r21	 ;  d, tmp797
	or r18,r22	 ;  d, tmp797
	or r19,r23	 ;  d, tmp797
	add r16,r12	 ;  d, a
	adc r17,r13	 ;  d, a
	adc r18,r14	 ;  d, a
	adc r19,r15	 ;  d, a
	.stabn	68,0,199,.LM29-.LFBB1
.LM29:
	ldd r4,Y+25	 ;  tmp804, %sfp
	ldd r5,Y+26	 ;  tmp804, %sfp
	ldd r6,Y+27	 ;  tmp804, %sfp
	ldd r7,Y+28	 ;  tmp804, %sfp
	ldi r20,121	 ; ,
	sub r4,r20	 ;  tmp804,
	ldi r20,-14	 ; ,
	sbc r5,r20	 ; ,
	ldi r20,42	 ; ,
	sbc r6,r20	 ; ,
	ldi r20,11	 ; ,
	sbc r7,r20	 ; ,
	add r4,r24	 ;  tmp804, c
	adc r5,r25	 ;  tmp804, c
	adc r6,r26	 ;  tmp804, c
	adc r7,r27	 ;  tmp804, c
	movw r26,r18	 ;  tmp803, d
	movw r24,r16	 ;  tmp803, d
	and r24,r8	 ;  tmp803, b
	and r25,r9	 ;  tmp803, b
	and r26,r10	 ;  tmp803, b
	and r27,r11	 ;  tmp803, b
	movw r22,r10	 ;  tmp802, b
	movw r20,r8	 ;  tmp802, b
	com r20	 ;  tmp802
	com r21	 ;  tmp802
	com r22	 ;  tmp802
	com r23	 ;  tmp802
	and r20,r12	 ;  tmp802, a
	and r21,r13	 ;  tmp802, a
	and r22,r14	 ;  tmp802, a
	and r23,r15	 ;  tmp802, a
	or r24,r20	 ;  tmp803, tmp802
	or r25,r21	 ;  tmp803, tmp802
	or r26,r22	 ;  tmp803, tmp802
	or r27,r23	 ;  tmp803, tmp802
	add r4,r24	 ;  tmp804, tmp803
	adc r5,r25	 ;  tmp804, tmp803
	adc r6,r26	 ;  tmp804, tmp803
	adc r7,r27	 ;  tmp804, tmp803
	movw r26,r6	 ;  tmp805, tmp804
	movw r24,r4	 ;  tmp805, tmp804
	ldi r20,14	 ; ,
	1:
	lsl r24	 ;  tmp805
	rol r25	 ;  tmp805
	rol r26	 ;  tmp805
	rol r27	 ;  tmp805
	dec r20	 ; 
	brne 1b
	ldi r21,18	 ; ,
	1:
	lsr r7	 ;  c
	ror r6	 ;  c
	ror r5	 ;  c
	ror r4	 ;  c
	dec r21	 ; 
	brne 1b
	or r4,r24	 ;  c, tmp805
	or r5,r25	 ;  c, tmp805
	or r6,r26	 ;  c, tmp805
	or r7,r27	 ;  c, tmp805
	add r4,r16	 ;  c, d
	adc r5,r17	 ;  c, d
	adc r6,r18	 ;  c, d
	adc r7,r19	 ;  c, d
	.stabn	68,0,200,.LM30-.LFBB1
.LM30:
	ldd r20,Y+45	 ;  tmp812, %sfp
	ldd r21,Y+46	 ;  tmp812, %sfp
	ldd r22,Y+47	 ;  tmp812, %sfp
	ldd r23,Y+48	 ;  tmp812, %sfp
	subi r20,19	 ;  tmp812,
	sbci r21,-21	 ; ,
	sbci r22,-91	 ; ,
	sbci r23,-70	 ; ,
	add r20,r8	 ;  tmp812, b
	adc r21,r9	 ;  tmp812, b
	adc r22,r10	 ;  tmp812, b
	adc r23,r11	 ;  tmp812, b
	movw r26,r6	 ;  tmp811, c
	movw r24,r4	 ;  tmp811, c
	and r24,r12	 ;  tmp811, a
	and r25,r13	 ;  tmp811, a
	and r26,r14	 ;  tmp811, a
	and r27,r15	 ;  tmp811, a
	movw r8,r12	 ;  tmp810, a
	movw r10,r14	 ;  tmp810, a
	com r8	 ;  tmp810
	com r9	 ;  tmp810
	com r10	 ;  tmp810
	com r11	 ;  tmp810
	and r8,r16	 ;  tmp810, d
	and r9,r17	 ;  tmp810, d
	and r10,r18	 ;  tmp810, d
	and r11,r19	 ;  tmp810, d
	or r24,r8	 ;  tmp811, tmp810
	or r25,r9	 ;  tmp811, tmp810
	or r26,r10	 ;  tmp811, tmp810
	or r27,r11	 ;  tmp811, tmp810
	add r20,r24	 ;  tmp812, tmp811
	adc r21,r25	 ;  tmp812, tmp811
	adc r22,r26	 ;  tmp812, tmp811
	adc r23,r27	 ;  tmp812, tmp811
	movw r26,r22	 ;  tmp813, tmp812
	movw r24,r20	 ;  tmp813, tmp812
	ldi r30,20	 ; ,
	1:
	lsl r24	 ;  tmp813
	rol r25	 ;  tmp813
	rol r26	 ;  tmp813
	rol r27	 ;  tmp813
	dec r30	 ; 
	brne 1b
	ldi r31,12	 ; ,
	1:
	lsr r23	 ;  b
	ror r22	 ;  b
	ror r21	 ;  b
	ror r20	 ;  b
	dec r31	 ; 
	brne 1b
	or r20,r24	 ;  b, tmp813
	or r21,r25	 ;  b, tmp813
	or r22,r26	 ;  b, tmp813
	or r23,r27	 ;  b, tmp813
	add r20,r4	 ;  b, c
	adc r21,r5	 ;  b, c
	adc r22,r6	 ;  b, c
	adc r23,r7	 ;  b, c
	.stabn	68,0,201,.LM31-.LFBB1
.LM31:
	adiw r28,65-60	 ;  %sfp
	ldd r24,Y+60	 ;  tmp820
	ldd r25,Y+61	 ;  tmp820
	ldd r26,Y+62	 ;  tmp820
	ldd r27,Y+63	 ;  tmp820
	sbiw r28,65-60	 ;  %sfp
	subi r24,-5	 ;  tmp820,
	sbci r25,22	 ; ,
	sbci r26,28	 ; ,
	sbci r27,86	 ; ,
	add r24,r12	 ;  tmp820, a
	adc r25,r13	 ;  tmp820, a
	adc r26,r14	 ;  tmp820, a
	adc r27,r15	 ;  tmp820, a
	movw r12,r20	 ;  tmp819, b
	movw r14,r22	 ;  tmp819, b
	and r12,r16	 ;  tmp819, d
	and r13,r17	 ;  tmp819, d
	and r14,r18	 ;  tmp819, d
	and r15,r19	 ;  tmp819, d
	movw r8,r16	 ;  tmp818, d
	movw r10,r18	 ;  tmp818, d
	com r8	 ;  tmp818
	com r9	 ;  tmp818
	com r10	 ;  tmp818
	com r11	 ;  tmp818
	and r8,r4	 ;  tmp818, c
	and r9,r5	 ;  tmp818, c
	and r10,r6	 ;  tmp818, c
	and r11,r7	 ;  tmp818, c
	or r12,r8	 ;  tmp819, tmp818
	or r13,r9	 ;  tmp819, tmp818
	or r14,r10	 ;  tmp819, tmp818
	or r15,r11	 ;  tmp819, tmp818
	add r24,r12	 ;  tmp820, tmp819
	adc r25,r13	 ;  tmp820, tmp819
	adc r26,r14	 ;  tmp820, tmp819
	adc r27,r15	 ;  tmp820, tmp819
	movw r12,r24	 ;  tmp821, tmp820
	movw r14,r26	 ;  tmp821, tmp820
	ldi r30,5	 ; ,
	1:
	lsl r12	 ;  tmp821
	rol r13	 ;  tmp821
	rol r14	 ;  tmp821
	rol r15	 ;  tmp821
	dec r30	 ; 
	brne 1b
	ldi r31,27	 ; ,
	1:
	lsr r27	 ;  a
	ror r26	 ;  a
	ror r25	 ;  a
	ror r24	 ;  a
	dec r31	 ; 
	brne 1b
	or r24,r12	 ;  a, tmp821
	or r25,r13	 ;  a, tmp821
	or r26,r14	 ;  a, tmp821
	or r27,r15	 ;  a, tmp821
	add r24,r20	 ;  a, b
	adc r25,r21	 ;  a, b
	adc r26,r22	 ;  a, b
	adc r27,r23	 ;  a, b
	.stabn	68,0,202,.LM32-.LFBB1
.LM32:
	ldd r12,Y+21	 ;  tmp828, %sfp
	ldd r13,Y+22	 ;  tmp828, %sfp
	ldd r14,Y+23	 ;  tmp828, %sfp
	ldd r15,Y+24	 ;  tmp828, %sfp
	ldi r30,8	 ; ,
	sub r12,r30	 ;  tmp828,
	ldi r30,92	 ; ,
	sbc r13,r30	 ; ,
	ldi r30,16	 ; ,
	sbc r14,r30	 ; ,
	ldi r30,3	 ; ,
	sbc r15,r30	 ; ,
	add r12,r16	 ;  tmp828, d
	adc r13,r17	 ;  tmp828, d
	adc r14,r18	 ;  tmp828, d
	adc r15,r19	 ;  tmp828, d
	movw r16,r24	 ;  tmp827, a
	movw r18,r26	 ;  tmp827, a
	and r16,r4	 ;  tmp827, c
	and r17,r5	 ;  tmp827, c
	and r18,r6	 ;  tmp827, c
	and r19,r7	 ;  tmp827, c
	movw r10,r6	 ;  tmp826, c
	movw r8,r4	 ;  tmp826, c
	com r8	 ;  tmp826
	com r9	 ;  tmp826
	com r10	 ;  tmp826
	com r11	 ;  tmp826
	and r8,r20	 ;  tmp826, b
	and r9,r21	 ;  tmp826, b
	and r10,r22	 ;  tmp826, b
	and r11,r23	 ;  tmp826, b
	or r16,r8	 ;  tmp827, tmp826
	or r17,r9	 ;  tmp827, tmp826
	or r18,r10	 ;  tmp827, tmp826
	or r19,r11	 ;  tmp827, tmp826
	add r12,r16	 ;  tmp828, tmp827
	adc r13,r17	 ;  tmp828, tmp827
	adc r14,r18	 ;  tmp828, tmp827
	adc r15,r19	 ;  tmp828, tmp827
	movw r18,r14	 ;  tmp829, tmp828
	movw r16,r12	 ;  tmp829, tmp828
	ldi r30,9	 ; ,
	1:
	lsl r16	 ;  tmp829
	rol r17	 ;  tmp829
	rol r18	 ;  tmp829
	rol r19	 ;  tmp829
	dec r30	 ; 
	brne 1b
	ldi r31,23	 ; ,
	1:
	lsr r15	 ;  d
	ror r14	 ;  d
	ror r13	 ;  d
	ror r12	 ;  d
	dec r31	 ; 
	brne 1b
	or r12,r16	 ;  d, tmp829
	or r13,r17	 ;  d, tmp829
	or r14,r18	 ;  d, tmp829
	or r15,r19	 ;  d, tmp829
	add r12,r24	 ;  d, a
	adc r13,r25	 ;  d, a
	adc r14,r26	 ;  d, a
	adc r15,r27	 ;  d, a
	.stabn	68,0,203,.LM33-.LFBB1
.LM33:
	ldd r16,Y+41	 ;  tmp836, %sfp
	ldd r17,Y+42	 ;  tmp836, %sfp
	ldd r18,Y+43	 ;  tmp836, %sfp
	ldd r19,Y+44	 ;  tmp836, %sfp
	subi r16,39	 ;  tmp836,
	sbci r17,-3	 ; ,
	sbci r18,-112	 ; ,
	sbci r19,-104	 ; ,
	add r16,r4	 ;  tmp836, c
	adc r17,r5	 ;  tmp836, c
	adc r18,r6	 ;  tmp836, c
	adc r19,r7	 ;  tmp836, c
	movw r8,r12	 ;  tmp835, d
	movw r10,r14	 ;  tmp835, d
	and r8,r20	 ;  tmp835, b
	and r9,r21	 ;  tmp835, b
	and r10,r22	 ;  tmp835, b
	and r11,r23	 ;  tmp835, b
	movw r4,r20	 ;  tmp834, b
	movw r6,r22	 ;  tmp834, b
	com r4	 ;  tmp834
	com r5	 ;  tmp834
	com r6	 ;  tmp834
	com r7	 ;  tmp834
	and r4,r24	 ;  tmp834, a
	and r5,r25	 ;  tmp834, a
	and r6,r26	 ;  tmp834, a
	and r7,r27	 ;  tmp834, a
	or r8,r4	 ;  tmp835, tmp834
	or r9,r5	 ;  tmp835, tmp834
	or r10,r6	 ;  tmp835, tmp834
	or r11,r7	 ;  tmp835, tmp834
	add r16,r8	 ;  tmp836, tmp835
	adc r17,r9	 ;  tmp836, tmp835
	adc r18,r10	 ;  tmp836, tmp835
	adc r19,r11	 ;  tmp836, tmp835
	movw r8,r16	 ;  tmp837, tmp836
	movw r10,r18	 ;  tmp837, tmp836
	ldi r30,14	 ; ,
	1:
	lsl r8	 ;  tmp837
	rol r9	 ;  tmp837
	rol r10	 ;  tmp837
	rol r11	 ;  tmp837
	dec r30	 ; 
	brne 1b
	ldi r31,18	 ; ,
	1:
	lsr r19	 ;  c
	ror r18	 ;  c
	ror r17	 ;  c
	ror r16	 ;  c
	dec r31	 ; 
	brne 1b
	or r16,r8	 ;  c, tmp837
	or r17,r9	 ;  c, tmp837
	or r18,r10	 ;  c, tmp837
	or r19,r11	 ;  c, tmp837
	add r16,r12	 ;  c, d
	adc r17,r13	 ;  c, d
	adc r18,r14	 ;  c, d
	adc r19,r15	 ;  c, d
	.stabn	68,0,204,.LM34-.LFBB1
.LM34:
	adiw r28,61-60	 ;  %sfp
	ldd r8,Y+60	 ;  tmp844
	ldd r9,Y+61	 ;  tmp844
	ldd r10,Y+62	 ;  tmp844
	ldd r11,Y+63	 ;  tmp844
	sbiw r28,61-60	 ;  %sfp
	ldi r31,118	 ; ,
	sub r8,r31	 ;  tmp844,
	ldi r31,-77	 ; ,
	sbc r9,r31	 ; ,
	ldi r31,-43	 ; ,
	sbc r10,r31	 ; ,
	ldi r31,114	 ; ,
	sbc r11,r31	 ; ,
	add r8,r20	 ;  tmp844, b
	adc r9,r21	 ;  tmp844, b
	adc r10,r22	 ;  tmp844, b
	adc r11,r23	 ;  tmp844, b
	movw r22,r18	 ;  tmp843, c
	movw r20,r16	 ;  tmp843, c
	and r20,r24	 ;  tmp843, a
	and r21,r25	 ;  tmp843, a
	and r22,r26	 ;  tmp843, a
	and r23,r27	 ;  tmp843, a
	movw r4,r24	 ;  tmp842, a
	movw r6,r26	 ;  tmp842, a
	com r4	 ;  tmp842
	com r5	 ;  tmp842
	com r6	 ;  tmp842
	com r7	 ;  tmp842
	and r4,r12	 ;  tmp842, d
	and r5,r13	 ;  tmp842, d
	and r6,r14	 ;  tmp842, d
	and r7,r15	 ;  tmp842, d
	or r20,r4	 ;  tmp843, tmp842
	or r21,r5	 ;  tmp843, tmp842
	or r22,r6	 ;  tmp843, tmp842
	or r23,r7	 ;  tmp843, tmp842
	add r8,r20	 ;  tmp844, tmp843
	adc r9,r21	 ;  tmp844, tmp843
	adc r10,r22	 ;  tmp844, tmp843
	adc r11,r23	 ;  tmp844, tmp843
	movw r22,r10	 ;  tmp845, tmp844
	movw r20,r8	 ;  tmp845, tmp844
	ldi r30,20	 ; ,
	1:
	lsl r20	 ;  tmp845
	rol r21	 ;  tmp845
	rol r22	 ;  tmp845
	rol r23	 ;  tmp845
	dec r30	 ; 
	brne 1b
	ldi r31,12	 ; ,
	1:
	lsr r11	 ;  b
	ror r10	 ;  b
	ror r9	 ;  b
	ror r8	 ;  b
	dec r31	 ; 
	brne 1b
	or r8,r20	 ;  b, tmp845
	or r9,r21	 ;  b, tmp845
	or r10,r22	 ;  b, tmp845
	or r11,r23	 ;  b, tmp845
	add r8,r16	 ;  b, c
	adc r9,r17	 ;  b, c
	adc r10,r18	 ;  b, c
	adc r11,r19	 ;  b, c
	.stabn	68,0,215,.LM35-.LFBB1
.LM35:
	ldd r20,Y+33	 ;  tmp850, %sfp
	ldd r21,Y+34	 ;  tmp850, %sfp
	ldd r22,Y+35	 ;  tmp850, %sfp
	ldd r23,Y+36	 ;  tmp850, %sfp
	subi r20,-66	 ;  tmp850,
	sbci r21,-58	 ; ,
	sbci r22,5	 ; ,
	sbc r23,__zero_reg__	 ; 
	add r20,r24	 ;  tmp850, a
	adc r21,r25	 ;  tmp850, a
	adc r22,r26	 ;  tmp850, a
	adc r23,r27	 ;  tmp850, a
	movw r26,r18	 ;  tmp849, c
	movw r24,r16	 ;  tmp849, c
	eor r24,r12	 ;  tmp849, d
	eor r25,r13	 ;  tmp849, d
	eor r26,r14	 ;  tmp849, d
	eor r27,r15	 ;  tmp849, d
	eor r24,r8	 ;  tmp849, b
	eor r25,r9	 ;  tmp849, b
	eor r26,r10	 ;  tmp849, b
	eor r27,r11	 ;  tmp849, b
	add r20,r24	 ;  tmp850, tmp849
	adc r21,r25	 ;  tmp850, tmp849
	adc r22,r26	 ;  tmp850, tmp849
	adc r23,r27	 ;  tmp850, tmp849
	movw r26,r22	 ;  tmp851, tmp850
	movw r24,r20	 ;  tmp851, tmp850
	ldi r30,4	 ; ,
	1:
	lsl r24	 ;  tmp851
	rol r25	 ;  tmp851
	rol r26	 ;  tmp851
	rol r27	 ;  tmp851
	dec r30	 ; 
	brne 1b
	ldi r31,28	 ; ,
	1:
	lsr r23	 ;  a
	ror r22	 ;  a
	ror r21	 ;  a
	ror r20	 ;  a
	dec r31	 ; 
	brne 1b
	or r20,r24	 ;  a, tmp851
	or r21,r25	 ;  a, tmp851
	or r22,r26	 ;  a, tmp851
	or r23,r27	 ;  a, tmp851
	add r20,r8	 ;  a, b
	adc r21,r9	 ;  a, b
	adc r22,r10	 ;  a, b
	adc r23,r11	 ;  a, b
	.stabn	68,0,216,.LM36-.LFBB1
.LM36:
	ldd r24,Y+45	 ;  tmp856, %sfp
	ldd r25,Y+46	 ;  tmp856, %sfp
	ldd r26,Y+47	 ;  tmp856, %sfp
	ldd r27,Y+48	 ;  tmp856, %sfp
	subi r24,127	 ;  tmp856,
	sbci r25,9	 ; ,
	sbci r26,-114	 ; ,
	sbci r27,120	 ; ,
	add r24,r12	 ;  tmp856, d
	adc r25,r13	 ;  tmp856, d
	adc r26,r14	 ;  tmp856, d
	adc r27,r15	 ;  tmp856, d
	movw r14,r10	 ;  tmp855, b
	movw r12,r8	 ;  tmp855, b
	eor r12,r16	 ;  tmp855, c
	eor r13,r17	 ;  tmp855, c
	eor r14,r18	 ;  tmp855, c
	eor r15,r19	 ;  tmp855, c
	eor r12,r20	 ;  tmp855, a
	eor r13,r21	 ;  tmp855, a
	eor r14,r22	 ;  tmp855, a
	eor r15,r23	 ;  tmp855, a
	add r24,r12	 ;  tmp856, tmp855
	adc r25,r13	 ;  tmp856, tmp855
	adc r26,r14	 ;  tmp856, tmp855
	adc r27,r15	 ;  tmp856, tmp855
	movw r12,r24	 ;  tmp857, tmp856
	movw r14,r26	 ;  tmp857, tmp856
	ldi r30,11	 ; ,
	1:
	lsl r12	 ;  tmp857
	rol r13	 ;  tmp857
	rol r14	 ;  tmp857
	rol r15	 ;  tmp857
	dec r30	 ; 
	brne 1b
	ldi r31,21	 ; ,
	1:
	lsr r27	 ;  d
	ror r26	 ;  d
	ror r25	 ;  d
	ror r24	 ;  d
	dec r31	 ; 
	brne 1b
	or r24,r12	 ;  d, tmp857
	or r25,r13	 ;  d, tmp857
	or r26,r14	 ;  d, tmp857
	or r27,r15	 ;  d, tmp857
	add r24,r20	 ;  d, a
	adc r25,r21	 ;  d, a
	adc r26,r22	 ;  d, a
	adc r27,r23	 ;  d, a
	.stabn	68,0,217,.LM37-.LFBB1
.LM37:
	ldd r12,Y+57	 ;  tmp862, %sfp
	ldd r13,Y+58	 ;  tmp862, %sfp
	ldd r14,Y+59	 ;  tmp862, %sfp
	ldd r15,Y+60	 ;  tmp862, %sfp
	ldi r30,-34	 ; ,
	sub r12,r30	 ;  tmp862,
	ldi r30,-98	 ; ,
	sbc r13,r30	 ; ,
	ldi r30,98	 ; ,
	sbc r14,r30	 ; ,
	ldi r30,-110	 ; ,
	sbc r15,r30	 ; ,
	add r12,r16	 ;  tmp862, c
	adc r13,r17	 ;  tmp862, c
	adc r14,r18	 ;  tmp862, c
	adc r15,r19	 ;  tmp862, c
	movw r16,r20	 ;  tmp861, a
	movw r18,r22	 ;  tmp861, a
	eor r16,r8	 ;  tmp861, b
	eor r17,r9	 ;  tmp861, b
	eor r18,r10	 ;  tmp861, b
	eor r19,r11	 ;  tmp861, b
	eor r16,r24	 ;  tmp861, d
	eor r17,r25	 ;  tmp861, d
	eor r18,r26	 ;  tmp861, d
	eor r19,r27	 ;  tmp861, d
	add r12,r16	 ;  tmp862, tmp861
	adc r13,r17	 ;  tmp862, tmp861
	adc r14,r18	 ;  tmp862, tmp861
	adc r15,r19	 ;  tmp862, tmp861
	movw r18,r12	 ;  c, tmp862
	movw r16,r14	 ;  c,
	add r16,r24	 ;  c, d
	adc r17,r25	 ;  c, d
	adc r18,r26	 ;  c, d
	adc r19,r27	 ;  c, d
	.stabn	68,0,218,.LM38-.LFBB1
.LM38:
	adiw r28,69-60	 ;  %sfp
	ldd r12,Y+60	 ;  tmp867
	ldd r13,Y+61	 ;  tmp867
	ldd r14,Y+62	 ;  tmp867
	ldd r15,Y+63	 ;  tmp867
	sbiw r28,69-60	 ;  %sfp
	ldi r30,-12	 ; ,
	sub r12,r30	 ;  tmp867,
	ldi r30,-57	 ; ,
	sbc r13,r30	 ; ,
	ldi r30,26	 ; ,
	sbc r14,r30	 ; ,
	ldi r30,2	 ; ,
	sbc r15,r30	 ; ,
	add r12,r8	 ;  tmp867, b
	adc r13,r9	 ;  tmp867, b
	adc r14,r10	 ;  tmp867, b
	adc r15,r11	 ;  tmp867, b
	movw r8,r24	 ;  tmp866, d
	movw r10,r26	 ;  tmp866, d
	eor r8,r20	 ;  tmp866, a
	eor r9,r21	 ;  tmp866, a
	eor r10,r22	 ;  tmp866, a
	eor r11,r23	 ;  tmp866, a
	eor r8,r16	 ;  tmp866, c
	eor r9,r17	 ;  tmp866, c
	eor r10,r18	 ;  tmp866, c
	eor r11,r19	 ;  tmp866, c
	add r12,r8	 ;  tmp867, tmp866
	adc r13,r9	 ;  tmp867, tmp866
	adc r14,r10	 ;  tmp867, tmp866
	adc r15,r11	 ;  tmp867, tmp866
	movw r8,r12	 ;  tmp868, tmp867
	movw r10,r14	 ;  tmp868, tmp867
	ldi r30,23	 ; ,
	1:
	lsl r8	 ;  tmp868
	rol r9	 ;  tmp868
	rol r10	 ;  tmp868
	rol r11	 ;  tmp868
	dec r30	 ; 
	brne 1b
	ldi r31,9	 ; ,
	1:
	lsr r15	 ;  b
	ror r14	 ;  b
	ror r13	 ;  b
	ror r12	 ;  b
	dec r31	 ; 
	brne 1b
	or r12,r8	 ;  b, tmp868
	or r13,r9	 ;  b, tmp868
	or r14,r10	 ;  b, tmp868
	or r15,r11	 ;  b, tmp868
	add r12,r16	 ;  b, c
	adc r13,r17	 ;  b, c
	adc r14,r18	 ;  b, c
	adc r15,r19	 ;  b, c
	.stabn	68,0,219,.LM39-.LFBB1
.LM39:
	ldd r8,Y+17	 ;  tmp873, %sfp
	ldd r9,Y+18	 ;  tmp873, %sfp
	ldd r10,Y+19	 ;  tmp873, %sfp
	ldd r11,Y+20	 ;  tmp873, %sfp
	ldi r31,-68	 ; ,
	sub r8,r31	 ;  tmp873,
	ldi r31,21	 ; ,
	sbc r9,r31	 ; ,
	ldi r31,65	 ; ,
	sbc r10,r31	 ; ,
	ldi r31,91	 ; ,
	sbc r11,r31	 ; ,
	add r8,r20	 ;  tmp873, a
	adc r9,r21	 ;  tmp873, a
	adc r10,r22	 ;  tmp873, a
	adc r11,r23	 ;  tmp873, a
	movw r22,r18	 ;  tmp872, c
	movw r20,r16	 ;  tmp872, c
	eor r20,r24	 ;  tmp872, d
	eor r21,r25	 ;  tmp872, d
	eor r22,r26	 ;  tmp872, d
	eor r23,r27	 ;  tmp872, d
	eor r20,r12	 ;  tmp872, b
	eor r21,r13	 ;  tmp872, b
	eor r22,r14	 ;  tmp872, b
	eor r23,r15	 ;  tmp872, b
	add r8,r20	 ;  tmp873, tmp872
	adc r9,r21	 ;  tmp873, tmp872
	adc r10,r22	 ;  tmp873, tmp872
	adc r11,r23	 ;  tmp873, tmp872
	movw r22,r10	 ;  tmp874, tmp873
	movw r20,r8	 ;  tmp874, tmp873
	ldi r30,4	 ; ,
	1:
	lsl r20	 ;  tmp874
	rol r21	 ;  tmp874
	rol r22	 ;  tmp874
	rol r23	 ;  tmp874
	dec r30	 ; 
	brne 1b
	ldi r31,28	 ; ,
	1:
	lsr r11	 ;  a
	ror r10	 ;  a
	ror r9	 ;  a
	ror r8	 ;  a
	dec r31	 ; 
	brne 1b
	or r8,r20	 ;  a, tmp874
	or r9,r21	 ;  a, tmp874
	or r10,r22	 ;  a, tmp874
	or r11,r23	 ;  a, tmp874
	add r8,r12	 ;  a, b
	adc r9,r13	 ;  a, b
	adc r10,r14	 ;  a, b
	adc r11,r15	 ;  a, b
	.stabn	68,0,220,.LM40-.LFBB1
.LM40:
	ldd r20,Y+29	 ;  tmp879, %sfp
	ldd r21,Y+30	 ;  tmp879, %sfp
	ldd r22,Y+31	 ;  tmp879, %sfp
	ldd r23,Y+32	 ;  tmp879, %sfp
	subi r20,87	 ;  tmp879,
	sbci r21,48	 ; ,
	sbci r22,33	 ; ,
	sbci r23,-76	 ; ,
	add r20,r24	 ;  tmp879, d
	adc r21,r25	 ;  tmp879, d
	adc r22,r26	 ;  tmp879, d
	adc r23,r27	 ;  tmp879, d
	movw r26,r14	 ;  tmp878, b
	movw r24,r12	 ;  tmp878, b
	eor r24,r16	 ;  tmp878, c
	eor r25,r17	 ;  tmp878, c
	eor r26,r18	 ;  tmp878, c
	eor r27,r19	 ;  tmp878, c
	eor r24,r8	 ;  tmp878, a
	eor r25,r9	 ;  tmp878, a
	eor r26,r10	 ;  tmp878, a
	eor r27,r11	 ;  tmp878, a
	add r20,r24	 ;  tmp879, tmp878
	adc r21,r25	 ;  tmp879, tmp878
	adc r22,r26	 ;  tmp879, tmp878
	adc r23,r27	 ;  tmp879, tmp878
	movw r26,r22	 ;  tmp880, tmp879
	movw r24,r20	 ;  tmp880, tmp879
	ldi r30,11	 ; ,
	1:
	lsl r24	 ;  tmp880
	rol r25	 ;  tmp880
	rol r26	 ;  tmp880
	rol r27	 ;  tmp880
	dec r30	 ; 
	brne 1b
	ldi r31,21	 ; ,
	1:
	lsr r23	 ;  d
	ror r22	 ;  d
	ror r21	 ;  d
	ror r20	 ;  d
	dec r31	 ; 
	brne 1b
	or r20,r24	 ;  d, tmp880
	or r21,r25	 ;  d, tmp880
	or r22,r26	 ;  d, tmp880
	or r23,r27	 ;  d, tmp880
	add r20,r8	 ;  d, a
	adc r21,r9	 ;  d, a
	adc r22,r10	 ;  d, a
	adc r23,r11	 ;  d, a
	.stabn	68,0,221,.LM41-.LFBB1
.LM41:
	ldd r24,Y+41	 ;  tmp885, %sfp
	ldd r25,Y+42	 ;  tmp885, %sfp
	ldd r26,Y+43	 ;  tmp885, %sfp
	ldd r27,Y+44	 ;  tmp885, %sfp
	subi r24,-96	 ;  tmp885,
	sbci r25,-76	 ; ,
	sbci r26,68	 ; ,
	sbci r27,9	 ; ,
	add r24,r16	 ;  tmp885, c
	adc r25,r17	 ;  tmp885, c
	adc r26,r18	 ;  tmp885, c
	adc r27,r19	 ;  tmp885, c
	movw r18,r10	 ;  tmp884, a
	movw r16,r8	 ;  tmp884, a
	eor r16,r12	 ;  tmp884, b
	eor r17,r13	 ;  tmp884, b
	eor r18,r14	 ;  tmp884, b
	eor r19,r15	 ;  tmp884, b
	eor r16,r20	 ;  tmp884, d
	eor r17,r21	 ;  tmp884, d
	eor r18,r22	 ;  tmp884, d
	eor r19,r23	 ;  tmp884, d
	add r24,r16	 ;  tmp885, tmp884
	adc r25,r17	 ;  tmp885, tmp884
	adc r26,r18	 ;  tmp885, tmp884
	adc r27,r19	 ;  tmp885, tmp884
	movw r4,r24	 ; , c
	movw r24,r26	 ;  c,
	movw r26,r4	 ;  c,
	add r24,r20	 ;  c, d
	adc r25,r21	 ;  c, d
	adc r26,r22	 ;  c, d
	adc r27,r23	 ;  c, d
	.stabn	68,0,222,.LM42-.LFBB1
.LM42:
	ldd r16,Y+53	 ;  tmp890, %sfp
	ldd r17,Y+54	 ;  tmp890, %sfp
	ldd r18,Y+55	 ;  tmp890, %sfp
	ldd r19,Y+56	 ;  tmp890, %sfp
	subi r16,-112	 ;  tmp890,
	sbci r17,67	 ; ,
	sbci r18,64	 ; ,
	sbci r19,65	 ; ,
	add r16,r12	 ;  tmp890, b
	adc r17,r13	 ;  tmp890, b
	adc r18,r14	 ;  tmp890, b
	adc r19,r15	 ;  tmp890, b
	movw r12,r20	 ;  tmp889, d
	movw r14,r22	 ;  tmp889, d
	eor r12,r8	 ;  tmp889, a
	eor r13,r9	 ;  tmp889, a
	eor r14,r10	 ;  tmp889, a
	eor r15,r11	 ;  tmp889, a
	eor r12,r24	 ;  tmp889, c
	eor r13,r25	 ;  tmp889, c
	eor r14,r26	 ;  tmp889, c
	eor r15,r27	 ;  tmp889, c
	add r16,r12	 ;  tmp890, tmp889
	adc r17,r13	 ;  tmp890, tmp889
	adc r18,r14	 ;  tmp890, tmp889
	adc r19,r15	 ;  tmp890, tmp889
	movw r12,r16	 ;  tmp891, tmp890
	movw r14,r18	 ;  tmp891, tmp890
	ldi r30,23	 ; ,
	1:
	lsl r12	 ;  tmp891
	rol r13	 ;  tmp891
	rol r14	 ;  tmp891
	rol r15	 ;  tmp891
	dec r30	 ; 
	brne 1b
	ldi r31,9	 ; ,
	1:
	lsr r19	 ;  b
	ror r18	 ;  b
	ror r17	 ;  b
	ror r16	 ;  b
	dec r31	 ; 
	brne 1b
	or r16,r12	 ;  b, tmp891
	or r17,r13	 ;  b, tmp891
	or r18,r14	 ;  b, tmp891
	or r19,r15	 ;  b, tmp891
	add r16,r24	 ;  b, c
	adc r17,r25	 ;  b, c
	adc r18,r26	 ;  b, c
	adc r19,r27	 ;  b, c
	.stabn	68,0,223,.LM43-.LFBB1
.LM43:
	adiw r28,65-60	 ;  %sfp
	ldd r12,Y+60	 ;  tmp896
	ldd r13,Y+61	 ;  tmp896
	ldd r14,Y+62	 ;  tmp896
	ldd r15,Y+63	 ;  tmp896
	sbiw r28,65-60	 ;  %sfp
	ldi r30,58	 ; ,
	sub r12,r30	 ;  tmp896,
	ldi r30,-127	 ; ,
	sbc r13,r30	 ; ,
	ldi r30,100	 ; ,
	sbc r14,r30	 ; ,
	ldi r30,-41	 ; ,
	sbc r15,r30	 ; ,
	add r12,r8	 ;  tmp896, a
	adc r13,r9	 ;  tmp896, a
	adc r14,r10	 ;  tmp896, a
	adc r15,r11	 ;  tmp896, a
	movw r8,r24	 ;  tmp895, c
	movw r10,r26	 ;  tmp895, c
	eor r8,r20	 ;  tmp895, d
	eor r9,r21	 ;  tmp895, d
	eor r10,r22	 ;  tmp895, d
	eor r11,r23	 ;  tmp895, d
	eor r8,r16	 ;  tmp895, b
	eor r9,r17	 ;  tmp895, b
	eor r10,r18	 ;  tmp895, b
	eor r11,r19	 ;  tmp895, b
	add r12,r8	 ;  tmp896, tmp895
	adc r13,r9	 ;  tmp896, tmp895
	adc r14,r10	 ;  tmp896, tmp895
	adc r15,r11	 ;  tmp896, tmp895
	movw r8,r12	 ;  tmp897, tmp896
	movw r10,r14	 ;  tmp897, tmp896
	ldi r30,4	 ; ,
	1:
	lsl r8	 ;  tmp897
	rol r9	 ;  tmp897
	rol r10	 ;  tmp897
	rol r11	 ;  tmp897
	dec r30	 ; 
	brne 1b
	ldi r31,28	 ; ,
	1:
	lsr r15	 ;  a
	ror r14	 ;  a
	ror r13	 ;  a
	ror r12	 ;  a
	dec r31	 ; 
	brne 1b
	or r12,r8	 ;  a, tmp897
	or r13,r9	 ;  a, tmp897
	or r14,r10	 ;  a, tmp897
	or r15,r11	 ;  a, tmp897
	add r12,r16	 ;  a, b
	adc r13,r17	 ;  a, b
	adc r14,r18	 ;  a, b
	adc r15,r19	 ;  a, b
	.stabn	68,0,224,.LM44-.LFBB1
.LM44:
	ldd r8,Y+13	 ;  tmp902, %sfp
	ldd r9,Y+14	 ;  tmp902, %sfp
	ldd r10,Y+15	 ;  tmp902, %sfp
	ldd r11,Y+16	 ;  tmp902, %sfp
	ldi r31,6	 ; ,
	sub r8,r31	 ;  tmp902,
	ldi r31,-40	 ; ,
	sbc r9,r31	 ; ,
	ldi r31,94	 ; ,
	sbc r10,r31	 ; ,
	ldi r31,21	 ; ,
	sbc r11,r31	 ; ,
	add r8,r20	 ;  tmp902, d
	adc r9,r21	 ;  tmp902, d
	adc r10,r22	 ;  tmp902, d
	adc r11,r23	 ;  tmp902, d
	movw r22,r18	 ;  tmp901, b
	movw r20,r16	 ;  tmp901, b
	eor r20,r24	 ;  tmp901, c
	eor r21,r25	 ;  tmp901, c
	eor r22,r26	 ;  tmp901, c
	eor r23,r27	 ;  tmp901, c
	eor r20,r12	 ;  tmp901, a
	eor r21,r13	 ;  tmp901, a
	eor r22,r14	 ;  tmp901, a
	eor r23,r15	 ;  tmp901, a
	add r8,r20	 ;  tmp902, tmp901
	adc r9,r21	 ;  tmp902, tmp901
	adc r10,r22	 ;  tmp902, tmp901
	adc r11,r23	 ;  tmp902, tmp901
	movw r22,r10	 ;  tmp903, tmp902
	movw r20,r8	 ;  tmp903, tmp902
	ldi r30,11	 ; ,
	1:
	lsl r20	 ;  tmp903
	rol r21	 ;  tmp903
	rol r22	 ;  tmp903
	rol r23	 ;  tmp903
	dec r30	 ; 
	brne 1b
	ldi r31,21	 ; ,
	1:
	lsr r11	 ;  d
	ror r10	 ;  d
	ror r9	 ;  d
	ror r8	 ;  d
	dec r31	 ; 
	brne 1b
	or r8,r20	 ;  d, tmp903
	or r9,r21	 ;  d, tmp903
	or r10,r22	 ;  d, tmp903
	or r11,r23	 ;  d, tmp903
	add r8,r12	 ;  d, a
	adc r9,r13	 ;  d, a
	adc r10,r14	 ;  d, a
	adc r11,r15	 ;  d, a
	.stabn	68,0,225,.LM45-.LFBB1
.LM45:
	ldd r20,Y+25	 ;  tmp908, %sfp
	ldd r21,Y+26	 ;  tmp908, %sfp
	ldd r22,Y+27	 ;  tmp908, %sfp
	ldd r23,Y+28	 ;  tmp908, %sfp
	subi r20,123	 ;  tmp908,
	sbci r21,-49	 ; ,
	sbci r22,16	 ; ,
	sbci r23,43	 ; ,
	add r20,r24	 ;  tmp908, c
	adc r21,r25	 ;  tmp908, c
	adc r22,r26	 ;  tmp908, c
	adc r23,r27	 ;  tmp908, c
	movw r26,r14	 ;  tmp907, a
	movw r24,r12	 ;  tmp907, a
	eor r24,r16	 ;  tmp907, b
	eor r25,r17	 ;  tmp907, b
	eor r26,r18	 ;  tmp907, b
	eor r27,r19	 ;  tmp907, b
	eor r24,r8	 ;  tmp907, d
	eor r25,r9	 ;  tmp907, d
	eor r26,r10	 ;  tmp907, d
	eor r27,r11	 ;  tmp907, d
	add r20,r24	 ;  tmp908, tmp907
	adc r21,r25	 ;  tmp908, tmp907
	adc r22,r26	 ;  tmp908, tmp907
	adc r23,r27	 ;  tmp908, tmp907
	movw r26,r20	 ;  c, tmp908
	movw r24,r22	 ;  c,
	add r24,r8	 ;  c, d
	adc r25,r9	 ;  c, d
	adc r26,r10	 ;  c, d
	adc r27,r11	 ;  c, d
	.stabn	68,0,226,.LM46-.LFBB1
.LM46:
	ldd r20,Y+37	 ;  tmp913, %sfp
	ldd r21,Y+38	 ;  tmp913, %sfp
	ldd r22,Y+39	 ;  tmp913, %sfp
	ldd r23,Y+40	 ;  tmp913, %sfp
	subi r20,-5	 ;  tmp913,
	sbci r21,-30	 ; ,
	sbci r22,119	 ; ,
	sbci r23,-5	 ; ,
	add r20,r16	 ;  tmp913, b
	adc r21,r17	 ;  tmp913, b
	adc r22,r18	 ;  tmp913, b
	adc r23,r19	 ;  tmp913, b
	movw r18,r10	 ;  tmp912, d
	movw r16,r8	 ;  tmp912, d
	eor r16,r12	 ;  tmp912, a
	eor r17,r13	 ;  tmp912, a
	eor r18,r14	 ;  tmp912, a
	eor r19,r15	 ;  tmp912, a
	eor r16,r24	 ;  tmp912, c
	eor r17,r25	 ;  tmp912, c
	eor r18,r26	 ;  tmp912, c
	eor r19,r27	 ;  tmp912, c
	add r20,r16	 ;  tmp913, tmp912
	adc r21,r17	 ;  tmp913, tmp912
	adc r22,r18	 ;  tmp913, tmp912
	adc r23,r19	 ;  tmp913, tmp912
	movw r16,r20	 ;  tmp914, tmp913
	movw r18,r22	 ;  tmp914, tmp913
	ldi r30,23	 ; ,
	1:
	lsl r16	 ;  tmp914
	rol r17	 ;  tmp914
	rol r18	 ;  tmp914
	rol r19	 ;  tmp914
	dec r30	 ; 
	brne 1b
	ldi r31,9	 ; ,
	1:
	lsr r23	 ;  b
	ror r22	 ;  b
	ror r21	 ;  b
	ror r20	 ;  b
	dec r31	 ; 
	brne 1b
	or r20,r16	 ;  b, tmp914
	or r21,r17	 ;  b, tmp914
	or r22,r18	 ;  b, tmp914
	or r23,r19	 ;  b, tmp914
	add r20,r24	 ;  b, c
	adc r21,r25	 ;  b, c
	adc r22,r26	 ;  b, c
	adc r23,r27	 ;  b, c
	.stabn	68,0,227,.LM47-.LFBB1
.LM47:
	ldd r16,Y+49	 ;  tmp919, %sfp
	ldd r17,Y+50	 ;  tmp919, %sfp
	ldd r18,Y+51	 ;  tmp919, %sfp
	ldd r19,Y+52	 ;  tmp919, %sfp
	subi r16,-57	 ;  tmp919,
	sbci r17,47	 ; ,
	sbci r18,43	 ; ,
	sbci r19,38	 ; ,
	add r16,r12	 ;  tmp919, a
	adc r17,r13	 ;  tmp919, a
	adc r18,r14	 ;  tmp919, a
	adc r19,r15	 ;  tmp919, a
	movw r12,r24	 ;  tmp918, c
	movw r14,r26	 ;  tmp918, c
	eor r12,r8	 ;  tmp918, d
	eor r13,r9	 ;  tmp918, d
	eor r14,r10	 ;  tmp918, d
	eor r15,r11	 ;  tmp918, d
	eor r12,r20	 ;  tmp918, b
	eor r13,r21	 ;  tmp918, b
	eor r14,r22	 ;  tmp918, b
	eor r15,r23	 ;  tmp918, b
	add r16,r12	 ;  tmp919, tmp918
	adc r17,r13	 ;  tmp919, tmp918
	adc r18,r14	 ;  tmp919, tmp918
	adc r19,r15	 ;  tmp919, tmp918
	movw r12,r16	 ;  tmp920, tmp919
	movw r14,r18	 ;  tmp920, tmp919
	ldi r30,4	 ; ,
	1:
	lsl r12	 ;  tmp920
	rol r13	 ;  tmp920
	rol r14	 ;  tmp920
	rol r15	 ;  tmp920
	dec r30	 ; 
	brne 1b
	ldi r31,28	 ; ,
	1:
	lsr r19	 ;  a
	ror r18	 ;  a
	ror r17	 ;  a
	ror r16	 ;  a
	dec r31	 ; 
	brne 1b
	or r16,r12	 ;  a, tmp920
	or r17,r13	 ;  a, tmp920
	or r18,r14	 ;  a, tmp920
	or r19,r15	 ;  a, tmp920
	add r16,r20	 ;  a, b
	adc r17,r21	 ;  a, b
	adc r18,r22	 ;  a, b
	adc r19,r23	 ;  a, b
	.stabn	68,0,228,.LM48-.LFBB1
.LM48:
	adiw r28,61-60	 ;  %sfp
	ldd r12,Y+60	 ;  tmp925
	ldd r13,Y+61	 ;  tmp925
	ldd r14,Y+62	 ;  tmp925
	ldd r15,Y+63	 ;  tmp925
	sbiw r28,61-60	 ;  %sfp
	ldi r30,27	 ; ,
	sub r12,r30	 ;  tmp925,
	ldi r30,102	 ; ,
	sbc r13,r30	 ; ,
	ldi r30,36	 ; ,
	sbc r14,r30	 ; ,
	ldi r30,25	 ; ,
	sbc r15,r30	 ; ,
	add r12,r8	 ;  tmp925, d
	adc r13,r9	 ;  tmp925, d
	adc r14,r10	 ;  tmp925, d
	adc r15,r11	 ;  tmp925, d
	movw r8,r20	 ;  tmp924, b
	movw r10,r22	 ;  tmp924, b
	eor r8,r24	 ;  tmp924, c
	eor r9,r25	 ;  tmp924, c
	eor r10,r26	 ;  tmp924, c
	eor r11,r27	 ;  tmp924, c
	eor r8,r16	 ;  tmp924, a
	eor r9,r17	 ;  tmp924, a
	eor r10,r18	 ;  tmp924, a
	eor r11,r19	 ;  tmp924, a
	add r12,r8	 ;  tmp925, tmp924
	adc r13,r9	 ;  tmp925, tmp924
	adc r14,r10	 ;  tmp925, tmp924
	adc r15,r11	 ;  tmp925, tmp924
	movw r8,r12	 ;  tmp926, tmp925
	movw r10,r14	 ;  tmp926, tmp925
	ldi r30,11	 ; ,
	1:
	lsl r8	 ;  tmp926
	rol r9	 ;  tmp926
	rol r10	 ;  tmp926
	rol r11	 ;  tmp926
	dec r30	 ; 
	brne 1b
	ldi r31,21	 ; ,
	1:
	lsr r15	 ;  d
	ror r14	 ;  d
	ror r13	 ;  d
	ror r12	 ;  d
	dec r31	 ; 
	brne 1b
	or r12,r8	 ;  d, tmp926
	or r13,r9	 ;  d, tmp926
	or r14,r10	 ;  d, tmp926
	or r15,r11	 ;  d, tmp926
	add r12,r16	 ;  d, a
	adc r13,r17	 ;  d, a
	adc r14,r18	 ;  d, a
	adc r15,r19	 ;  d, a
	.stabn	68,0,229,.LM49-.LFBB1
.LM49:
	adiw r28,73-60	 ;  %sfp
	ldd r8,Y+60	 ;  tmp931
	ldd r9,Y+61	 ;  tmp931
	ldd r10,Y+62	 ;  tmp931
	ldd r11,Y+63	 ;  tmp931
	sbiw r28,73-60	 ;  %sfp
	ldi r31,8	 ; ,
	sub r8,r31	 ;  tmp931,
	ldi r31,-125	 ; ,
	sbc r9,r31	 ; ,
	ldi r31,93	 ; ,
	sbc r10,r31	 ; ,
	ldi r31,-32	 ; ,
	sbc r11,r31	 ; ,
	add r8,r24	 ;  tmp931, c
	adc r9,r25	 ;  tmp931, c
	adc r10,r26	 ;  tmp931, c
	adc r11,r27	 ;  tmp931, c
	movw r26,r18	 ;  tmp930, a
	movw r24,r16	 ;  tmp930, a
	eor r24,r20	 ;  tmp930, b
	eor r25,r21	 ;  tmp930, b
	eor r26,r22	 ;  tmp930, b
	eor r27,r23	 ;  tmp930, b
	eor r24,r12	 ;  tmp930, d
	eor r25,r13	 ;  tmp930, d
	eor r26,r14	 ;  tmp930, d
	eor r27,r15	 ;  tmp930, d
	add r8,r24	 ;  tmp931, tmp930
	adc r9,r25	 ;  tmp931, tmp930
	adc r10,r26	 ;  tmp931, tmp930
	adc r11,r27	 ;  tmp931, tmp930
	movw r26,r8	 ;  c, tmp931
	movw r24,r10	 ;  c,
	add r24,r12	 ;  c, d
	adc r25,r13	 ;  c, d
	adc r26,r14	 ;  c, d
	adc r27,r15	 ;  c, d
	.stabn	68,0,230,.LM50-.LFBB1
.LM50:
	ldd r8,Y+21	 ;  tmp936, %sfp
	ldd r9,Y+22	 ;  tmp936, %sfp
	ldd r10,Y+23	 ;  tmp936, %sfp
	ldd r11,Y+24	 ;  tmp936, %sfp
	ldi r30,-101	 ; ,
	sub r8,r30	 ;  tmp936,
	ldi r30,-87	 ; ,
	sbc r9,r30	 ; ,
	ldi r30,83	 ; ,
	sbc r10,r30	 ; ,
	ldi r30,59	 ; ,
	sbc r11,r30	 ; ,
	add r8,r20	 ;  tmp936, b
	adc r9,r21	 ;  tmp936, b
	adc r10,r22	 ;  tmp936, b
	adc r11,r23	 ;  tmp936, b
	movw r22,r14	 ;  tmp935, d
	movw r20,r12	 ;  tmp935, d
	eor r20,r16	 ;  tmp935, a
	eor r21,r17	 ;  tmp935, a
	eor r22,r18	 ;  tmp935, a
	eor r23,r19	 ;  tmp935, a
	eor r20,r24	 ;  tmp935, c
	eor r21,r25	 ;  tmp935, c
	eor r22,r26	 ;  tmp935, c
	eor r23,r27	 ;  tmp935, c
	add r8,r20	 ;  tmp936, tmp935
	adc r9,r21	 ;  tmp936, tmp935
	adc r10,r22	 ;  tmp936, tmp935
	adc r11,r23	 ;  tmp936, tmp935
	movw r22,r10	 ;  tmp937, tmp936
	movw r20,r8	 ;  tmp937, tmp936
	ldi r30,23	 ; ,
	1:
	lsl r20	 ;  tmp937
	rol r21	 ;  tmp937
	rol r22	 ;  tmp937
	rol r23	 ;  tmp937
	dec r30	 ; 
	brne 1b
	ldi r31,9	 ; ,
	1:
	lsr r11	 ;  b
	ror r10	 ;  b
	ror r9	 ;  b
	ror r8	 ;  b
	dec r31	 ; 
	brne 1b
	or r8,r20	 ;  b, tmp937
	or r9,r21	 ;  b, tmp937
	or r10,r22	 ;  b, tmp937
	or r11,r23	 ;  b, tmp937
	add r8,r24	 ;  b, c
	adc r9,r25	 ;  b, c
	adc r10,r26	 ;  b, c
	adc r11,r27	 ;  b, c
	.stabn	68,0,241,.LM51-.LFBB1
.LM51:
	ldd r20,Y+13	 ;  tmp943, %sfp
	ldd r21,Y+14	 ;  tmp943, %sfp
	ldd r22,Y+15	 ;  tmp943, %sfp
	ldd r23,Y+16	 ;  tmp943, %sfp
	subi r20,-68	 ;  tmp943,
	sbci r21,-35	 ; ,
	sbci r22,-42	 ; ,
	sbci r23,11	 ; ,
	add r20,r16	 ;  tmp943, a
	adc r21,r17	 ;  tmp943, a
	adc r22,r18	 ;  tmp943, a
	adc r23,r19	 ;  tmp943, a
	movw r18,r14	 ;  tmp942, d
	movw r16,r12	 ;  tmp942, d
	com r16	 ;  tmp942
	com r17	 ;  tmp942
	com r18	 ;  tmp942
	com r19	 ;  tmp942
	or r16,r8	 ;  tmp942, b
	or r17,r9	 ;  tmp942, b
	or r18,r10	 ;  tmp942, b
	or r19,r11	 ;  tmp942, b
	eor r16,r24	 ;  tmp942, c
	eor r17,r25	 ;  tmp942, c
	eor r18,r26	 ;  tmp942, c
	eor r19,r27	 ;  tmp942, c
	add r20,r16	 ;  tmp943, tmp942
	adc r21,r17	 ;  tmp943, tmp942
	adc r22,r18	 ;  tmp943, tmp942
	adc r23,r19	 ;  tmp943, tmp942
	movw r16,r20	 ;  tmp944, tmp943
	movw r18,r22	 ;  tmp944, tmp943
	ldi r30,6	 ; ,
	1:
	lsl r16	 ;  tmp944
	rol r17	 ;  tmp944
	rol r18	 ;  tmp944
	rol r19	 ;  tmp944
	dec r30	 ; 
	brne 1b
	ldi r31,26	 ; ,
	1:
	lsr r23	 ;  a
	ror r22	 ;  a
	ror r21	 ;  a
	ror r20	 ;  a
	dec r31	 ; 
	brne 1b
	or r20,r16	 ;  a, tmp944
	or r21,r17	 ;  a, tmp944
	or r22,r18	 ;  a, tmp944
	or r23,r19	 ;  a, tmp944
	add r20,r8	 ;  a, b
	adc r21,r9	 ;  a, b
	adc r22,r10	 ;  a, b
	adc r23,r11	 ;  a, b
	.stabn	68,0,242,.LM52-.LFBB1
.LM52:
	ldd r16,Y+41	 ;  tmp950, %sfp
	ldd r17,Y+42	 ;  tmp950, %sfp
	ldd r18,Y+43	 ;  tmp950, %sfp
	ldd r19,Y+44	 ;  tmp950, %sfp
	subi r16,105	 ;  tmp950,
	sbc r17,__zero_reg__	 ; 
	sbci r18,-43	 ; ,
	sbci r19,-68	 ; ,
	add r16,r12	 ;  tmp950, d
	adc r17,r13	 ;  tmp950, d
	adc r18,r14	 ;  tmp950, d
	adc r19,r15	 ;  tmp950, d
	movw r12,r24	 ;  tmp949, c
	movw r14,r26	 ;  tmp949, c
	com r12	 ;  tmp949
	com r13	 ;  tmp949
	com r14	 ;  tmp949
	com r15	 ;  tmp949
	or r12,r20	 ;  tmp949, a
	or r13,r21	 ;  tmp949, a
	or r14,r22	 ;  tmp949, a
	or r15,r23	 ;  tmp949, a
	eor r12,r8	 ;  tmp949, b
	eor r13,r9	 ;  tmp949, b
	eor r14,r10	 ;  tmp949, b
	eor r15,r11	 ;  tmp949, b
	add r16,r12	 ;  tmp950, tmp949
	adc r17,r13	 ;  tmp950, tmp949
	adc r18,r14	 ;  tmp950, tmp949
	adc r19,r15	 ;  tmp950, tmp949
	movw r12,r16	 ;  tmp951, tmp950
	movw r14,r18	 ;  tmp951, tmp950
	ldi r30,10	 ; ,
	1:
	lsl r12	 ;  tmp951
	rol r13	 ;  tmp951
	rol r14	 ;  tmp951
	rol r15	 ;  tmp951
	dec r30	 ; 
	brne 1b
	ldi r31,22	 ; ,
	1:
	lsr r19	 ;  d
	ror r18	 ;  d
	ror r17	 ;  d
	ror r16	 ;  d
	dec r31	 ; 
	brne 1b
	or r16,r12	 ;  d, tmp951
	or r17,r13	 ;  d, tmp951
	or r18,r14	 ;  d, tmp951
	or r19,r15	 ;  d, tmp951
	add r16,r20	 ;  d, a
	adc r17,r21	 ;  d, a
	adc r18,r22	 ;  d, a
	adc r19,r23	 ;  d, a
	.stabn	68,0,243,.LM53-.LFBB1
.LM53:
	adiw r28,69-60	 ;  %sfp
	ldd r12,Y+60	 ;  tmp957
	ldd r13,Y+61	 ;  tmp957
	ldd r14,Y+62	 ;  tmp957
	ldd r15,Y+63	 ;  tmp957
	sbiw r28,69-60	 ;  %sfp
	ldi r31,89	 ; ,
	sub r12,r31	 ;  tmp957,
	ldi r31,-36	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,107	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,84	 ; ,
	sbc r15,r31	 ; ,
	add r12,r24	 ;  tmp957, c
	adc r13,r25	 ;  tmp957, c
	adc r14,r26	 ;  tmp957, c
	adc r15,r27	 ;  tmp957, c
	movw r26,r10	 ;  tmp956, b
	movw r24,r8	 ;  tmp956, b
	com r24	 ;  tmp956
	com r25	 ;  tmp956
	com r26	 ;  tmp956
	com r27	 ;  tmp956
	or r24,r16	 ;  tmp956, d
	or r25,r17	 ;  tmp956, d
	or r26,r18	 ;  tmp956, d
	or r27,r19	 ;  tmp956, d
	eor r24,r20	 ;  tmp956, a
	eor r25,r21	 ;  tmp956, a
	eor r26,r22	 ;  tmp956, a
	eor r27,r23	 ;  tmp956, a
	add r12,r24	 ;  tmp957, tmp956
	adc r13,r25	 ;  tmp957, tmp956
	adc r14,r26	 ;  tmp957, tmp956
	adc r15,r27	 ;  tmp957, tmp956
	movw r26,r14	 ;  tmp958, tmp957
	movw r24,r12	 ;  tmp958, tmp957
	ldi r30,15	 ; ,
	1:
	lsl r24	 ;  tmp958
	rol r25	 ;  tmp958
	rol r26	 ;  tmp958
	rol r27	 ;  tmp958
	dec r30	 ; 
	brne 1b
	ldi r31,17	 ; ,
	1:
	lsr r15	 ;  c
	ror r14	 ;  c
	ror r13	 ;  c
	ror r12	 ;  c
	dec r31	 ; 
	brne 1b
	or r12,r24	 ;  c, tmp958
	or r13,r25	 ;  c, tmp958
	or r14,r26	 ;  c, tmp958
	or r15,r27	 ;  c, tmp958
	add r12,r16	 ;  c, d
	adc r13,r17	 ;  c, d
	adc r14,r18	 ;  c, d
	adc r15,r19	 ;  c, d
	.stabn	68,0,244,.LM54-.LFBB1
.LM54:
	ldd r24,Y+33	 ;  tmp964, %sfp
	ldd r25,Y+34	 ;  tmp964, %sfp
	ldd r26,Y+35	 ;  tmp964, %sfp
	ldd r27,Y+36	 ;  tmp964, %sfp
	subi r24,-57	 ;  tmp964,
	sbci r25,95	 ; ,
	sbci r26,108	 ; ,
	sbci r27,3	 ; ,
	add r24,r8	 ;  tmp964, b
	adc r25,r9	 ;  tmp964, b
	adc r26,r10	 ;  tmp964, b
	adc r27,r11	 ;  tmp964, b
	movw r8,r20	 ;  tmp963, a
	movw r10,r22	 ;  tmp963, a
	com r8	 ;  tmp963
	com r9	 ;  tmp963
	com r10	 ;  tmp963
	com r11	 ;  tmp963
	or r8,r12	 ;  tmp963, c
	or r9,r13	 ;  tmp963, c
	or r10,r14	 ;  tmp963, c
	or r11,r15	 ;  tmp963, c
	eor r8,r16	 ;  tmp963, d
	eor r9,r17	 ;  tmp963, d
	eor r10,r18	 ;  tmp963, d
	eor r11,r19	 ;  tmp963, d
	add r24,r8	 ;  tmp964, tmp963
	adc r25,r9	 ;  tmp964, tmp963
	adc r26,r10	 ;  tmp964, tmp963
	adc r27,r11	 ;  tmp964, tmp963
	movw r8,r24	 ;  tmp965, tmp964
	movw r10,r26	 ;  tmp965, tmp964
	ldi r30,21	 ; ,
	1:
	lsl r8	 ;  tmp965
	rol r9	 ;  tmp965
	rol r10	 ;  tmp965
	rol r11	 ;  tmp965
	dec r30	 ; 
	brne 1b
	ldi r31,11	 ; ,
	1:
	lsr r27	 ;  b
	ror r26	 ;  b
	ror r25	 ;  b
	ror r24	 ;  b
	dec r31	 ; 
	brne 1b
	or r24,r8	 ;  b, tmp965
	or r25,r9	 ;  b, tmp965
	or r26,r10	 ;  b, tmp965
	or r27,r11	 ;  b, tmp965
	add r24,r12	 ;  b, c
	adc r25,r13	 ;  b, c
	adc r26,r14	 ;  b, c
	adc r27,r15	 ;  b, c
	.stabn	68,0,245,.LM55-.LFBB1
.LM55:
	adiw r28,61-60	 ;  %sfp
	ldd r8,Y+60	 ;  tmp971
	ldd r9,Y+61	 ;  tmp971
	ldd r10,Y+62	 ;  tmp971
	ldd r11,Y+63	 ;  tmp971
	sbiw r28,61-60	 ;  %sfp
	ldi r30,61	 ; ,
	sub r8,r30	 ;  tmp971,
	ldi r30,-90	 ; ,
	sbc r9,r30	 ; ,
	ldi r30,-92	 ; ,
	sbc r10,r30	 ; ,
	ldi r30,-102	 ; ,
	sbc r11,r30	 ; ,
	add r8,r20	 ;  tmp971, a
	adc r9,r21	 ;  tmp971, a
	adc r10,r22	 ;  tmp971, a
	adc r11,r23	 ;  tmp971, a
	movw r22,r18	 ;  tmp970, d
	movw r20,r16	 ;  tmp970, d
	com r20	 ;  tmp970
	com r21	 ;  tmp970
	com r22	 ;  tmp970
	com r23	 ;  tmp970
	or r20,r24	 ;  tmp970, b
	or r21,r25	 ;  tmp970, b
	or r22,r26	 ;  tmp970, b
	or r23,r27	 ;  tmp970, b
	eor r20,r12	 ;  tmp970, c
	eor r21,r13	 ;  tmp970, c
	eor r22,r14	 ;  tmp970, c
	eor r23,r15	 ;  tmp970, c
	add r8,r20	 ;  tmp971, tmp970
	adc r9,r21	 ;  tmp971, tmp970
	adc r10,r22	 ;  tmp971, tmp970
	adc r11,r23	 ;  tmp971, tmp970
	movw r22,r10	 ;  tmp972, tmp971
	movw r20,r8	 ;  tmp972, tmp971
	ldi r30,6	 ; ,
	1:
	lsl r20	 ;  tmp972
	rol r21	 ;  tmp972
	rol r22	 ;  tmp972
	rol r23	 ;  tmp972
	dec r30	 ; 
	brne 1b
	ldi r31,26	 ; ,
	1:
	lsr r11	 ;  a
	ror r10	 ;  a
	ror r9	 ;  a
	ror r8	 ;  a
	dec r31	 ; 
	brne 1b
	or r8,r20	 ;  a, tmp972
	or r9,r21	 ;  a, tmp972
	or r10,r22	 ;  a, tmp972
	or r11,r23	 ;  a, tmp972
	add r8,r24	 ;  a, b
	adc r9,r25	 ;  a, b
	adc r10,r26	 ;  a, b
	adc r11,r27	 ;  a, b
	.stabn	68,0,246,.LM56-.LFBB1
.LM56:
	ldd r20,Y+25	 ;  tmp978, %sfp
	ldd r21,Y+26	 ;  tmp978, %sfp
	ldd r22,Y+27	 ;  tmp978, %sfp
	ldd r23,Y+28	 ;  tmp978, %sfp
	subi r20,110	 ;  tmp978,
	sbci r21,51	 ; ,
	sbci r22,-13	 ; ,
	sbci r23,112	 ; ,
	add r20,r16	 ;  tmp978, d
	adc r21,r17	 ;  tmp978, d
	adc r22,r18	 ;  tmp978, d
	adc r23,r19	 ;  tmp978, d
	movw r18,r14	 ;  tmp977, c
	movw r16,r12	 ;  tmp977, c
	com r16	 ;  tmp977
	com r17	 ;  tmp977
	com r18	 ;  tmp977
	com r19	 ;  tmp977
	or r16,r8	 ;  tmp977, a
	or r17,r9	 ;  tmp977, a
	or r18,r10	 ;  tmp977, a
	or r19,r11	 ;  tmp977, a
	eor r16,r24	 ;  tmp977, b
	eor r17,r25	 ;  tmp977, b
	eor r18,r26	 ;  tmp977, b
	eor r19,r27	 ;  tmp977, b
	add r20,r16	 ;  tmp978, tmp977
	adc r21,r17	 ;  tmp978, tmp977
	adc r22,r18	 ;  tmp978, tmp977
	adc r23,r19	 ;  tmp978, tmp977
	movw r16,r20	 ;  tmp979, tmp978
	movw r18,r22	 ;  tmp979, tmp978
	ldi r30,10	 ; ,
	1:
	lsl r16	 ;  tmp979
	rol r17	 ;  tmp979
	rol r18	 ;  tmp979
	rol r19	 ;  tmp979
	dec r30	 ; 
	brne 1b
	ldi r31,22	 ; ,
	1:
	lsr r23	 ;  d
	ror r22	 ;  d
	ror r21	 ;  d
	ror r20	 ;  d
	dec r31	 ; 
	brne 1b
	or r20,r16	 ;  d, tmp979
	or r21,r17	 ;  d, tmp979
	or r22,r18	 ;  d, tmp979
	or r23,r19	 ;  d, tmp979
	add r20,r8	 ;  d, a
	adc r21,r9	 ;  d, a
	adc r22,r10	 ;  d, a
	adc r23,r11	 ;  d, a
	.stabn	68,0,247,.LM57-.LFBB1
.LM57:
	ldd r16,Y+53	 ;  tmp985, %sfp
	ldd r17,Y+54	 ;  tmp985, %sfp
	ldd r18,Y+55	 ;  tmp985, %sfp
	ldd r19,Y+56	 ;  tmp985, %sfp
	subi r16,-125	 ;  tmp985,
	sbci r17,11	 ; ,
	sbci r18,16	 ; ,
	sbc r19,__zero_reg__	 ; 
	add r16,r12	 ;  tmp985, c
	adc r17,r13	 ;  tmp985, c
	adc r18,r14	 ;  tmp985, c
	adc r19,r15	 ;  tmp985, c
	movw r12,r24	 ;  tmp984, b
	movw r14,r26	 ;  tmp984, b
	com r12	 ;  tmp984
	com r13	 ;  tmp984
	com r14	 ;  tmp984
	com r15	 ;  tmp984
	or r12,r20	 ;  tmp984, d
	or r13,r21	 ;  tmp984, d
	or r14,r22	 ;  tmp984, d
	or r15,r23	 ;  tmp984, d
	eor r12,r8	 ;  tmp984, a
	eor r13,r9	 ;  tmp984, a
	eor r14,r10	 ;  tmp984, a
	eor r15,r11	 ;  tmp984, a
	add r16,r12	 ;  tmp985, tmp984
	adc r17,r13	 ;  tmp985, tmp984
	adc r18,r14	 ;  tmp985, tmp984
	adc r19,r15	 ;  tmp985, tmp984
	movw r12,r16	 ;  tmp986, tmp985
	movw r14,r18	 ;  tmp986, tmp985
	ldi r30,15	 ; ,
	1:
	lsl r12	 ;  tmp986
	rol r13	 ;  tmp986
	rol r14	 ;  tmp986
	rol r15	 ;  tmp986
	dec r30	 ; 
	brne 1b
	ldi r31,17	 ; ,
	1:
	lsr r19	 ;  c
	ror r18	 ;  c
	ror r17	 ;  c
	ror r16	 ;  c
	dec r31	 ; 
	brne 1b
	or r16,r12	 ;  c, tmp986
	or r17,r13	 ;  c, tmp986
	or r18,r14	 ;  c, tmp986
	or r19,r15	 ;  c, tmp986
	add r16,r20	 ;  c, d
	adc r17,r21	 ;  c, d
	adc r18,r22	 ;  c, d
	adc r19,r23	 ;  c, d
	.stabn	68,0,248,.LM58-.LFBB1
.LM58:
	ldd r12,Y+17	 ;  tmp992, %sfp
	ldd r13,Y+18	 ;  tmp992, %sfp
	ldd r14,Y+19	 ;  tmp992, %sfp
	ldd r15,Y+20	 ;  tmp992, %sfp
	ldi r31,47	 ; ,
	sub r12,r31	 ;  tmp992,
	ldi r31,-94	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,123	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,122	 ; ,
	sbc r15,r31	 ; ,
	add r12,r24	 ;  tmp992, b
	adc r13,r25	 ;  tmp992, b
	adc r14,r26	 ;  tmp992, b
	adc r15,r27	 ;  tmp992, b
	movw r26,r10	 ;  tmp991, a
	movw r24,r8	 ;  tmp991, a
	com r24	 ;  tmp991
	com r25	 ;  tmp991
	com r26	 ;  tmp991
	com r27	 ;  tmp991
	or r24,r16	 ;  tmp991, c
	or r25,r17	 ;  tmp991, c
	or r26,r18	 ;  tmp991, c
	or r27,r19	 ;  tmp991, c
	eor r24,r20	 ;  tmp991, d
	eor r25,r21	 ;  tmp991, d
	eor r26,r22	 ;  tmp991, d
	eor r27,r23	 ;  tmp991, d
	add r12,r24	 ;  tmp992, tmp991
	adc r13,r25	 ;  tmp992, tmp991
	adc r14,r26	 ;  tmp992, tmp991
	adc r15,r27	 ;  tmp992, tmp991
	movw r26,r14	 ;  tmp993, tmp992
	movw r24,r12	 ;  tmp993, tmp992
	ldi r30,21	 ; ,
	1:
	lsl r24	 ;  tmp993
	rol r25	 ;  tmp993
	rol r26	 ;  tmp993
	rol r27	 ;  tmp993
	dec r30	 ; 
	brne 1b
	ldi r31,11	 ; ,
	1:
	lsr r15	 ;  b
	ror r14	 ;  b
	ror r13	 ;  b
	ror r12	 ;  b
	dec r31	 ; 
	brne 1b
	or r12,r24	 ;  b, tmp993
	or r13,r25	 ;  b, tmp993
	or r14,r26	 ;  b, tmp993
	or r15,r27	 ;  b, tmp993
	add r12,r16	 ;  b, c
	adc r13,r17	 ;  b, c
	adc r14,r18	 ;  b, c
	adc r15,r19	 ;  b, c
	.stabn	68,0,249,.LM59-.LFBB1
.LM59:
	ldd r24,Y+45	 ;  tmp999, %sfp
	ldd r25,Y+46	 ;  tmp999, %sfp
	ldd r26,Y+47	 ;  tmp999, %sfp
	ldd r27,Y+48	 ;  tmp999, %sfp
	subi r24,-79	 ;  tmp999,
	sbci r25,-127	 ; ,
	sbci r26,87	 ; ,
	sbci r27,-112	 ; ,
	add r24,r8	 ;  tmp999, a
	adc r25,r9	 ;  tmp999, a
	adc r26,r10	 ;  tmp999, a
	adc r27,r11	 ;  tmp999, a
	movw r8,r20	 ;  tmp998, d
	movw r10,r22	 ;  tmp998, d
	com r8	 ;  tmp998
	com r9	 ;  tmp998
	com r10	 ;  tmp998
	com r11	 ;  tmp998
	or r8,r12	 ;  tmp998, b
	or r9,r13	 ;  tmp998, b
	or r10,r14	 ;  tmp998, b
	or r11,r15	 ;  tmp998, b
	eor r8,r16	 ;  tmp998, c
	eor r9,r17	 ;  tmp998, c
	eor r10,r18	 ;  tmp998, c
	eor r11,r19	 ;  tmp998, c
	add r24,r8	 ;  tmp999, tmp998
	adc r25,r9	 ;  tmp999, tmp998
	adc r26,r10	 ;  tmp999, tmp998
	adc r27,r11	 ;  tmp999, tmp998
	movw r8,r24	 ;  tmp1000, tmp999
	movw r10,r26	 ;  tmp1000, tmp999
	ldi r30,6	 ; ,
	1:
	lsl r8	 ;  tmp1000
	rol r9	 ;  tmp1000
	rol r10	 ;  tmp1000
	rol r11	 ;  tmp1000
	dec r30	 ; 
	brne 1b
	ldi r31,26	 ; ,
	1:
	lsr r27	 ;  a
	ror r26	 ;  a
	ror r25	 ;  a
	ror r24	 ;  a
	dec r31	 ; 
	brne 1b
	or r24,r8	 ;  a, tmp1000
	or r25,r9	 ;  a, tmp1000
	or r26,r10	 ;  a, tmp1000
	or r27,r11	 ;  a, tmp1000
	add r24,r12	 ;  a, b
	adc r25,r13	 ;  a, b
	adc r26,r14	 ;  a, b
	adc r27,r15	 ;  a, b
	.stabn	68,0,250,.LM60-.LFBB1
.LM60:
	adiw r28,73-60	 ;  %sfp
	ldd r8,Y+60	 ;  tmp1006
	ldd r9,Y+61	 ;  tmp1006
	ldd r10,Y+62	 ;  tmp1006
	ldd r11,Y+63	 ;  tmp1006
	sbiw r28,73-60	 ;  %sfp
	ldi r30,32	 ; ,
	sub r8,r30	 ;  tmp1006,
	ldi r30,25	 ; ,
	sbc r9,r30	 ; ,
	ldi r30,-45	 ; ,
	sbc r10,r30	 ; ,
	ldi r30,1	 ; ,
	sbc r11,r30	 ; ,
	add r8,r20	 ;  tmp1006, d
	adc r9,r21	 ;  tmp1006, d
	adc r10,r22	 ;  tmp1006, d
	adc r11,r23	 ;  tmp1006, d
	movw r22,r18	 ;  tmp1005, c
	movw r20,r16	 ;  tmp1005, c
	com r20	 ;  tmp1005
	com r21	 ;  tmp1005
	com r22	 ;  tmp1005
	com r23	 ;  tmp1005
	or r20,r24	 ;  tmp1005, a
	or r21,r25	 ;  tmp1005, a
	or r22,r26	 ;  tmp1005, a
	or r23,r27	 ;  tmp1005, a
	eor r20,r12	 ;  tmp1005, b
	eor r21,r13	 ;  tmp1005, b
	eor r22,r14	 ;  tmp1005, b
	eor r23,r15	 ;  tmp1005, b
	add r8,r20	 ;  tmp1006, tmp1005
	adc r9,r21	 ;  tmp1006, tmp1005
	adc r10,r22	 ;  tmp1006, tmp1005
	adc r11,r23	 ;  tmp1006, tmp1005
	movw r22,r10	 ;  tmp1007, tmp1006
	movw r20,r8	 ;  tmp1007, tmp1006
	ldi r30,10	 ; ,
	1:
	lsl r20	 ;  tmp1007
	rol r21	 ;  tmp1007
	rol r22	 ;  tmp1007
	rol r23	 ;  tmp1007
	dec r30	 ; 
	brne 1b
	ldi r31,22	 ; ,
	1:
	lsr r11	 ;  d
	ror r10	 ;  d
	ror r9	 ;  d
	ror r8	 ;  d
	dec r31	 ; 
	brne 1b
	or r8,r20	 ;  d, tmp1007
	or r9,r21	 ;  d, tmp1007
	or r10,r22	 ;  d, tmp1007
	or r11,r23	 ;  d, tmp1007
	add r8,r24	 ;  d, a
	adc r9,r25	 ;  d, a
	adc r10,r26	 ;  d, a
	adc r11,r27	 ;  d, a
	.stabn	68,0,251,.LM61-.LFBB1
.LM61:
	ldd r20,Y+37	 ;  tmp1013, %sfp
	ldd r21,Y+38	 ;  tmp1013, %sfp
	ldd r22,Y+39	 ;  tmp1013, %sfp
	ldd r23,Y+40	 ;  tmp1013, %sfp
	subi r20,-20	 ;  tmp1013,
	sbci r21,-68	 ; ,
	sbci r22,-2	 ; ,
	sbci r23,92	 ; ,
	add r20,r16	 ;  tmp1013, c
	adc r21,r17	 ;  tmp1013, c
	adc r22,r18	 ;  tmp1013, c
	adc r23,r19	 ;  tmp1013, c
	movw r18,r14	 ;  tmp1012, b
	movw r16,r12	 ;  tmp1012, b
	com r16	 ;  tmp1012
	com r17	 ;  tmp1012
	com r18	 ;  tmp1012
	com r19	 ;  tmp1012
	or r16,r8	 ;  tmp1012, d
	or r17,r9	 ;  tmp1012, d
	or r18,r10	 ;  tmp1012, d
	or r19,r11	 ;  tmp1012, d
	eor r16,r24	 ;  tmp1012, a
	eor r17,r25	 ;  tmp1012, a
	eor r18,r26	 ;  tmp1012, a
	eor r19,r27	 ;  tmp1012, a
	add r20,r16	 ;  tmp1013, tmp1012
	adc r21,r17	 ;  tmp1013, tmp1012
	adc r22,r18	 ;  tmp1013, tmp1012
	adc r23,r19	 ;  tmp1013, tmp1012
	movw r16,r20	 ;  tmp1014, tmp1013
	movw r18,r22	 ;  tmp1014, tmp1013
	ldi r30,15	 ; ,
	1:
	lsl r16	 ;  tmp1014
	rol r17	 ;  tmp1014
	rol r18	 ;  tmp1014
	rol r19	 ;  tmp1014
	dec r30	 ; 
	brne 1b
	ldi r31,17	 ; ,
	1:
	lsr r23	 ;  c
	ror r22	 ;  c
	ror r21	 ;  c
	ror r20	 ;  c
	dec r31	 ; 
	brne 1b
	or r20,r16	 ;  c, tmp1014
	or r21,r17	 ;  c, tmp1014
	or r22,r18	 ;  c, tmp1014
	or r23,r19	 ;  c, tmp1014
	add r20,r8	 ;  c, d
	adc r21,r9	 ;  c, d
	adc r22,r10	 ;  c, d
	adc r23,r11	 ;  c, d
	.stabn	68,0,252,.LM62-.LFBB1
.LM62:
	adiw r28,65-60	 ;  %sfp
	ldd r16,Y+60	 ;  tmp1020
	ldd r17,Y+61	 ;  tmp1020
	ldd r18,Y+62	 ;  tmp1020
	ldd r19,Y+63	 ;  tmp1020
	sbiw r28,65-60	 ;  %sfp
	subi r16,95	 ;  tmp1020,
	sbci r17,-18	 ; ,
	sbci r18,-9	 ; ,
	sbci r19,-79	 ; ,
	add r16,r12	 ;  tmp1020, b
	adc r17,r13	 ;  tmp1020, b
	adc r18,r14	 ;  tmp1020, b
	adc r19,r15	 ;  tmp1020, b
	movw r12,r24	 ;  tmp1019, a
	movw r14,r26	 ;  tmp1019, a
	com r12	 ;  tmp1019
	com r13	 ;  tmp1019
	com r14	 ;  tmp1019
	com r15	 ;  tmp1019
	or r12,r20	 ;  tmp1019, c
	or r13,r21	 ;  tmp1019, c
	or r14,r22	 ;  tmp1019, c
	or r15,r23	 ;  tmp1019, c
	eor r12,r8	 ;  tmp1019, d
	eor r13,r9	 ;  tmp1019, d
	eor r14,r10	 ;  tmp1019, d
	eor r15,r11	 ;  tmp1019, d
	add r16,r12	 ;  tmp1020, tmp1019
	adc r17,r13	 ;  tmp1020, tmp1019
	adc r18,r14	 ;  tmp1020, tmp1019
	adc r19,r15	 ;  tmp1020, tmp1019
	movw r12,r16	 ;  tmp1021, tmp1020
	movw r14,r18	 ;  tmp1021, tmp1020
	ldi r30,21	 ; ,
	1:
	lsl r12	 ;  tmp1021
	rol r13	 ;  tmp1021
	rol r14	 ;  tmp1021
	rol r15	 ;  tmp1021
	dec r30	 ; 
	brne 1b
	ldi r31,11	 ; ,
	1:
	lsr r19	 ;  b
	ror r18	 ;  b
	ror r17	 ;  b
	ror r16	 ;  b
	dec r31	 ; 
	brne 1b
	or r16,r12	 ;  b, tmp1021
	or r17,r13	 ;  b, tmp1021
	or r18,r14	 ;  b, tmp1021
	or r19,r15	 ;  b, tmp1021
	add r16,r20	 ;  b, c
	adc r17,r21	 ;  b, c
	adc r18,r22	 ;  b, c
	adc r19,r23	 ;  b, c
	.stabn	68,0,253,.LM63-.LFBB1
.LM63:
	ldd r12,Y+29	 ;  tmp1027, %sfp
	ldd r13,Y+30	 ;  tmp1027, %sfp
	ldd r14,Y+31	 ;  tmp1027, %sfp
	ldd r15,Y+32	 ;  tmp1027, %sfp
	ldi r31,126	 ; ,
	sub r12,r31	 ;  tmp1027,
	ldi r31,-127	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,-84	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,8	 ; ,
	sbc r15,r31	 ; ,
	add r12,r24	 ;  tmp1027, a
	adc r13,r25	 ;  tmp1027, a
	adc r14,r26	 ;  tmp1027, a
	adc r15,r27	 ;  tmp1027, a
	movw r26,r10	 ;  tmp1026, d
	movw r24,r8	 ;  tmp1026, d
	com r24	 ;  tmp1026
	com r25	 ;  tmp1026
	com r26	 ;  tmp1026
	com r27	 ;  tmp1026
	or r24,r16	 ;  tmp1026, b
	or r25,r17	 ;  tmp1026, b
	or r26,r18	 ;  tmp1026, b
	or r27,r19	 ;  tmp1026, b
	eor r24,r20	 ;  tmp1026, c
	eor r25,r21	 ;  tmp1026, c
	eor r26,r22	 ;  tmp1026, c
	eor r27,r23	 ;  tmp1026, c
	add r12,r24	 ;  tmp1027, tmp1026
	adc r13,r25	 ;  tmp1027, tmp1026
	adc r14,r26	 ;  tmp1027, tmp1026
	adc r15,r27	 ;  tmp1027, tmp1026
	movw r26,r14	 ;  tmp1028, tmp1027
	movw r24,r12	 ;  tmp1028, tmp1027
	ldi r30,6	 ; ,
	1:
	lsl r24	 ;  tmp1028
	rol r25	 ;  tmp1028
	rol r26	 ;  tmp1028
	rol r27	 ;  tmp1028
	dec r30	 ; 
	brne 1b
	ldi r31,26	 ; ,
	1:
	lsr r15	 ;  a
	ror r14	 ;  a
	ror r13	 ;  a
	ror r12	 ;  a
	dec r31	 ; 
	brne 1b
	or r12,r24	 ;  a, tmp1028
	or r13,r25	 ;  a, tmp1028
	or r14,r26	 ;  a, tmp1028
	or r15,r27	 ;  a, tmp1028
	add r12,r16	 ;  a, b
	adc r13,r17	 ;  a, b
	adc r14,r18	 ;  a, b
	adc r15,r19	 ;  a, b
	.stabn	68,0,254,.LM64-.LFBB1
.LM64:
	ldd r24,Y+57	 ;  tmp1034, %sfp
	ldd r25,Y+58	 ;  tmp1034, %sfp
	ldd r26,Y+59	 ;  tmp1034, %sfp
	ldd r27,Y+60	 ;  tmp1034, %sfp
	subi r24,-53	 ;  tmp1034,
	sbci r25,13	 ; ,
	sbci r26,-59	 ; ,
	sbci r27,66	 ; ,
	add r24,r8	 ;  tmp1034, d
	adc r25,r9	 ;  tmp1034, d
	adc r26,r10	 ;  tmp1034, d
	adc r27,r11	 ;  tmp1034, d
	movw r8,r20	 ;  tmp1033, c
	movw r10,r22	 ;  tmp1033, c
	com r8	 ;  tmp1033
	com r9	 ;  tmp1033
	com r10	 ;  tmp1033
	com r11	 ;  tmp1033
	or r8,r12	 ;  tmp1033, a
	or r9,r13	 ;  tmp1033, a
	or r10,r14	 ;  tmp1033, a
	or r11,r15	 ;  tmp1033, a
	eor r8,r16	 ;  tmp1033, b
	eor r9,r17	 ;  tmp1033, b
	eor r10,r18	 ;  tmp1033, b
	eor r11,r19	 ;  tmp1033, b
	add r24,r8	 ;  tmp1034, tmp1033
	adc r25,r9	 ;  tmp1034, tmp1033
	adc r26,r10	 ;  tmp1034, tmp1033
	adc r27,r11	 ;  tmp1034, tmp1033
	movw r8,r24	 ;  tmp1035, tmp1034
	movw r10,r26	 ;  tmp1035, tmp1034
	ldi r30,10	 ; ,
	1:
	lsl r8	 ;  tmp1035
	rol r9	 ;  tmp1035
	rol r10	 ;  tmp1035
	rol r11	 ;  tmp1035
	dec r30	 ; 
	brne 1b
	ldi r31,22	 ; ,
	1:
	lsr r27	 ;  d
	ror r26	 ;  d
	ror r25	 ;  d
	ror r24	 ;  d
	dec r31	 ; 
	brne 1b
	or r24,r8	 ;  d, tmp1035
	or r25,r9	 ;  d, tmp1035
	or r26,r10	 ;  d, tmp1035
	or r27,r11	 ;  d, tmp1035
	add r24,r12	 ;  d, a
	adc r25,r13	 ;  d, a
	adc r26,r14	 ;  d, a
	adc r27,r15	 ;  d, a
	.stabn	68,0,255,.LM65-.LFBB1
.LM65:
	ldd r8,Y+21	 ;  tmp1041, %sfp
	ldd r9,Y+22	 ;  tmp1041, %sfp
	ldd r10,Y+23	 ;  tmp1041, %sfp
	ldd r11,Y+24	 ;  tmp1041, %sfp
	ldi r30,69	 ; ,
	sub r8,r30	 ;  tmp1041,
	ldi r30,45	 ; ,
	sbc r9,r30	 ; ,
	ldi r30,40	 ; ,
	sbc r10,r30	 ; ,
	ldi r30,-43	 ; ,
	sbc r11,r30	 ; ,
	add r8,r20	 ;  tmp1041, c
	adc r9,r21	 ;  tmp1041, c
	adc r10,r22	 ;  tmp1041, c
	adc r11,r23	 ;  tmp1041, c
	movw r22,r18	 ;  tmp1040, b
	movw r20,r16	 ;  tmp1040, b
	com r20	 ;  tmp1040
	com r21	 ;  tmp1040
	com r22	 ;  tmp1040
	com r23	 ;  tmp1040
	or r20,r24	 ;  tmp1040, d
	or r21,r25	 ;  tmp1040, d
	or r22,r26	 ;  tmp1040, d
	or r23,r27	 ;  tmp1040, d
	eor r20,r12	 ;  tmp1040, a
	eor r21,r13	 ;  tmp1040, a
	eor r22,r14	 ;  tmp1040, a
	eor r23,r15	 ;  tmp1040, a
	add r8,r20	 ;  tmp1041, tmp1040
	adc r9,r21	 ;  tmp1041, tmp1040
	adc r10,r22	 ;  tmp1041, tmp1040
	adc r11,r23	 ;  tmp1041, tmp1040
	movw r22,r10	 ;  tmp1042, tmp1041
	movw r20,r8	 ;  tmp1042, tmp1041
	ldi r30,15	 ; ,
	1:
	lsl r20	 ;  tmp1042
	rol r21	 ;  tmp1042
	rol r22	 ;  tmp1042
	rol r23	 ;  tmp1042
	dec r30	 ; 
	brne 1b
	ldi r31,17	 ; ,
	1:
	lsr r11	 ;  c
	ror r10	 ;  c
	ror r9	 ;  c
	ror r8	 ;  c
	dec r31	 ; 
	brne 1b
	or r8,r20	 ;  c, tmp1042
	or r9,r21	 ;  c, tmp1042
	or r10,r22	 ;  c, tmp1042
	or r11,r23	 ;  c, tmp1042
	add r8,r24	 ;  c, d
	adc r9,r25	 ;  c, d
	adc r10,r26	 ;  c, d
	adc r11,r27	 ;  c, d
	.stabn	68,0,262,.LM66-.LFBB1
.LM66:
	adiw r28,81-60	 ;  %sfp
	ldd r20,Y+60	 ;  tmp1043
	ldd r21,Y+61	 ;  tmp1043
	ldd r22,Y+62	 ;  tmp1043
	ldd r23,Y+63	 ;  tmp1043
	sbiw r28,81-60	 ;  %sfp
	add r20,r12	 ;  tmp1043, a
	adc r21,r13	 ;  tmp1043, a
	adc r22,r14	 ;  tmp1043, a
	adc r23,r15	 ;  tmp1043, a
	adiw r28,89-62	 ;  %sfp
	ldd r30,Y+62	 ; 
	ldd r31,Y+63	 ; 
	sbiw r28,89-62	 ;  %sfp
	std Z+8,r20	 ;  pms_1(D)->abcd, tmp1043
	std Z+9,r21	 ;  pms_1(D)->abcd, tmp1043
	std Z+10,r22	 ;  pms_1(D)->abcd, tmp1043
	std Z+11,r23	 ;  pms_1(D)->abcd, tmp1043
	.stabn	68,0,256,.LM67-.LFBB1
.LM67:
	ldd r20,Y+5	 ;  tmp1055, %sfp
	ldd r21,Y+6	 ;  tmp1055, %sfp
	ldd r22,Y+7	 ;  tmp1055, %sfp
	ldd r23,Y+8	 ;  tmp1055, %sfp
	add r20,r8	 ;  tmp1055, c
	adc r21,r9	 ;  tmp1055, c
	adc r22,r10	 ;  tmp1055, c
	adc r23,r11	 ;  tmp1055, c
	ldd r4,Y+49	 ;  tmp1050, %sfp
	ldd r5,Y+50	 ;  tmp1050, %sfp
	ldd r6,Y+51	 ;  tmp1050, %sfp
	ldd r7,Y+52	 ;  tmp1050, %sfp
	ldi r31,111	 ; ,
	sub r4,r31	 ;  tmp1050,
	ldi r31,44	 ; ,
	sbc r5,r31	 ; ,
	ldi r31,121	 ; ,
	sbc r6,r31	 ; ,
	ldi r31,20	 ; ,
	sbc r7,r31	 ; ,
	add r4,r16	 ;  tmp1050, b
	adc r5,r17	 ;  tmp1050, b
	adc r6,r18	 ;  tmp1050, b
	adc r7,r19	 ;  tmp1050, b
	com r12	 ;  tmp1049
	com r13	 ;  tmp1049
	com r14	 ;  tmp1049
	com r15	 ;  tmp1049
	or r12,r8	 ;  tmp1049, c
	or r13,r9	 ;  tmp1049, c
	or r14,r10	 ;  tmp1049, c
	or r15,r11	 ;  tmp1049, c
	eor r12,r24	 ;  tmp1049, d
	eor r13,r25	 ;  tmp1049, d
	eor r14,r26	 ;  tmp1049, d
	eor r15,r27	 ;  tmp1049, d
	add r4,r12	 ;  tmp1050, tmp1049
	adc r5,r13	 ;  tmp1050, tmp1049
	adc r6,r14	 ;  tmp1050, tmp1049
	adc r7,r15	 ;  tmp1050, tmp1049
	movw r18,r6	 ;  tmp1054, tmp1050
	movw r16,r4	 ;  tmp1054, tmp1050
	ldi r30,21	 ; ,
	1:
	lsl r16	 ;  tmp1054
	rol r17	 ;  tmp1054
	rol r18	 ;  tmp1054
	rol r19	 ;  tmp1054
	dec r30	 ; 
	brne 1b
	ldi r31,11	 ; ,
	1:
	lsr r7	 ;  tmp1053
	ror r6	 ;  tmp1053
	ror r5	 ;  tmp1053
	ror r4	 ;  tmp1053
	dec r31	 ; 
	brne 1b
	or r16,r4	 ;  tmp1054, tmp1053
	or r17,r5	 ;  tmp1054, tmp1053
	or r18,r6	 ;  tmp1054, tmp1053
	or r19,r7	 ;  tmp1054, tmp1053
	.stabn	68,0,263,.LM68-.LFBB1
.LM68:
	add r20,r16	 ;  tmp1055, tmp1054
	adc r21,r17	 ;  tmp1055, tmp1054
	adc r22,r18	 ;  tmp1055, tmp1054
	adc r23,r19	 ;  tmp1055, tmp1054
	adiw r28,89-62	 ;  %sfp
	ldd r30,Y+62	 ; 
	ldd r31,Y+63	 ; 
	sbiw r28,89-62	 ;  %sfp
	std Z+12,r20	 ;  pms_1(D)->abcd, tmp1055
	std Z+13,r21	 ;  pms_1(D)->abcd, tmp1055
	std Z+14,r22	 ;  pms_1(D)->abcd, tmp1055
	std Z+15,r23	 ;  pms_1(D)->abcd, tmp1055
	.stabn	68,0,264,.LM69-.LFBB1
.LM69:
	ldd r4,Y+9	 ; , %sfp
	ldd r5,Y+10	 ; , %sfp
	ldd r6,Y+11	 ; , %sfp
	ldd r7,Y+12	 ; , %sfp
	add r8,r4	 ;  tmp1056,
	adc r9,r5	 ;  tmp1056,
	adc r10,r6	 ;  tmp1056,
	adc r11,r7	 ;  tmp1056,
	std Z+16,r8	 ;  pms_1(D)->abcd, tmp1056
	std Z+17,r9	 ;  pms_1(D)->abcd, tmp1056
	std Z+18,r10	 ;  pms_1(D)->abcd, tmp1056
	std Z+19,r11	 ;  pms_1(D)->abcd, tmp1056
	.stabn	68,0,265,.LM70-.LFBB1
.LM70:
	adiw r28,77-60	 ;  %sfp
	ldd r4,Y+60	 ; 
	ldd r5,Y+61	 ; 
	ldd r6,Y+62	 ; 
	ldd r7,Y+63	 ; 
	sbiw r28,77-60	 ;  %sfp
	add r24,r4	 ;  tmp1057,
	adc r25,r5	 ;  tmp1057,
	adc r26,r6	 ;  tmp1057,
	adc r27,r7	 ;  tmp1057,
	std Z+20,r24	 ;  pms_1(D)->abcd, tmp1057
	std Z+21,r25	 ;  pms_1(D)->abcd, tmp1057
	std Z+22,r26	 ;  pms_1(D)->abcd, tmp1057
	std Z+23,r27	 ;  pms_1(D)->abcd, tmp1057
/* epilogue start */
.LBE2:
	.stabn	68,0,266,.LM71-.LFBB1
.LM71:
	subi r28,-90	 ; ,
	sbci r29,-1	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	pop r8	 ; 
	pop r7	 ; 
	pop r6	 ; 
	pop r5	 ; 
	pop r4	 ; 
	pop r3	 ; 
	pop r2	 ; 
	ret
	.size	_Z11md5_processP11md5_state_sPKh, .-_Z11md5_processP11md5_state_sPKh
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabd	78,0,0
	.section	.text._Z8md5_initP11md5_state_s,"ax",@progbits
	.stabs	"_Z8md5_initP11md5_state_s:F(0,4)",36,0,268,_Z8md5_initP11md5_state_s
	.stabs	"pms:P(0,76)",64,0,268,30
.global	_Z8md5_initP11md5_state_s
	.type	_Z8md5_initP11md5_state_s, @function
_Z8md5_initP11md5_state_s:
	.stabd	46,0,0
	.stabn	68,0,268,.LM72-.LFBB2
.LM72:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24	 ;  pms, pms
	.stabn	68,0,269,.LM73-.LFBB2
.LM73:
	std Z+4,__zero_reg__	 ;  pms_1(D)->count,
	std Z+5,__zero_reg__	 ;  pms_1(D)->count,
	std Z+6,__zero_reg__	 ;  pms_1(D)->count,
	std Z+7,__zero_reg__	 ;  pms_1(D)->count,
	st Z,__zero_reg__	 ;  pms_1(D)->count,
	std Z+1,__zero_reg__	 ;  pms_1(D)->count,
	std Z+2,__zero_reg__	 ;  pms_1(D)->count,
	std Z+3,__zero_reg__	 ;  pms_1(D)->count,
	.stabn	68,0,270,.LM74-.LFBB2
.LM74:
	ldi r24,lo8(1)	 ;  tmp43,
	ldi r25,lo8(35)	 ; ,
	ldi r26,lo8(69)	 ; ,
	ldi r27,lo8(103)	 ; ,
	std Z+8,r24	 ;  pms_1(D)->abcd, tmp43
	std Z+9,r25	 ;  pms_1(D)->abcd, tmp43
	std Z+10,r26	 ;  pms_1(D)->abcd, tmp43
	std Z+11,r27	 ;  pms_1(D)->abcd, tmp43
	.stabn	68,0,271,.LM75-.LFBB2
.LM75:
	ldi r20,lo8(-119)	 ;  tmp44,
	ldi r21,lo8(-85)	 ; ,
	ldi r22,lo8(-51)	 ; ,
	ldi r23,lo8(-17)	 ; ,
	std Z+12,r20	 ;  pms_1(D)->abcd, tmp44
	std Z+13,r21	 ;  pms_1(D)->abcd, tmp44
	std Z+14,r22	 ;  pms_1(D)->abcd, tmp44
	std Z+15,r23	 ;  pms_1(D)->abcd, tmp44
	.stabn	68,0,272,.LM76-.LFBB2
.LM76:
	ldi r20,lo8(-2)	 ;  tmp45,
	ldi r21,lo8(-36)	 ; ,
	ldi r22,lo8(-70)	 ; ,
	ldi r23,lo8(-104)	 ; ,
	std Z+16,r20	 ;  pms_1(D)->abcd, tmp45
	std Z+17,r21	 ;  pms_1(D)->abcd, tmp45
	std Z+18,r22	 ;  pms_1(D)->abcd, tmp45
	std Z+19,r23	 ;  pms_1(D)->abcd, tmp45
	.stabn	68,0,273,.LM77-.LFBB2
.LM77:
	ldi r20,lo8(118)	 ;  tmp46,
	ldi r21,lo8(84)	 ; ,
	ldi r22,lo8(50)	 ; ,
	ldi r23,lo8(16)	 ; ,
	std Z+20,r20	 ;  pms_1(D)->abcd, tmp46
	std Z+21,r21	 ;  pms_1(D)->abcd, tmp46
	std Z+22,r22	 ;  pms_1(D)->abcd, tmp46
	std Z+23,r23	 ;  pms_1(D)->abcd, tmp46
	ret
	.size	_Z8md5_initP11md5_state_s, .-_Z8md5_initP11md5_state_s
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabd	78,0,0
	.section	.text._Z10md5_appendP11md5_state_sPKhm,"ax",@progbits
	.stabs	"_Z10md5_appendP11md5_state_sPKhm:F(0,4)",36,0,276,_Z10md5_appendP11md5_state_sPKhm
	.stabs	"pms:P(0,76)",64,0,276,28
	.stabs	"data:P(0,77)",64,0,276,16
	.stabs	"nbytes:P(0,59)",64,0,276,12
.global	_Z10md5_appendP11md5_state_sPKhm
	.type	_Z10md5_appendP11md5_state_sPKhm, @function
_Z10md5_appendP11md5_state_sPKhm:
	.stabd	46,0,0
	.stabn	68,0,276,.LM78-.LFBB3
.LM78:
.LFBB3:
	push r4	 ; 
	push r5	 ; 
	push r6	 ; 
	push r7	 ; 
	push r8	 ; 
	push r9	 ; 
	push r10	 ; 
	push r11	 ; 
	push r12	 ; 
	push r13	 ; 
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
	movw r28,r24	 ;  pms, pms
	movw r16,r22	 ;  data, data
	movw r12,r18	 ;  nbytes, nbytes
	movw r14,r20	 ;  nbytes, nbytes
.LBB3:
	.stabn	68,0,279,.LM79-.LFBB3
.LM79:
	ld r24,Y	 ;  D.2215, pms_8(D)->count
	ldd r25,Y+1	 ;  D.2215, pms_8(D)->count
	ldd r26,Y+2	 ;  D.2215, pms_8(D)->count
	ldd r27,Y+3	 ;  D.2215, pms_8(D)->count
	.stabn	68,0,282,.LM80-.LFBB3
.LM80:
	cp r18,__zero_reg__	 ;  nbytes
	cpc r19,__zero_reg__	 ;  nbytes
	cpc r20,__zero_reg__	 ;  nbytes
	cpc r21,__zero_reg__	 ;  nbytes
	brne .+2	 ; 
	rjmp .L3	 ; 
	.stabn	68,0,280,.LM81-.LFBB3
.LM81:
	movw r4,r18	 ;  nbits, nbytes
	movw r6,r20	 ;  nbits, nbytes
	ldi r22,3	 ; ,
	1:
	lsl r4	 ;  nbits
	rol r5	 ;  nbits
	rol r6	 ;  nbits
	rol r7	 ;  nbits
	dec r22	 ; 
	brne 1b
	.stabn	68,0,286,.LM82-.LFBB3
.LM82:
	movw r22,r20	 ;  D.2222, nbytes
	movw r20,r18	 ;  D.2222, nbytes
	ldi r30,29	 ; ,
	1:
	lsr r23	 ;  D.2222
	ror r22	 ;  D.2222
	ror r21	 ;  D.2222
	ror r20	 ;  D.2222
	dec r30	 ; 
	brne 1b
	ldd r8,Y+4	 ;  pms_8(D)->count, pms_8(D)->count
	ldd r9,Y+5	 ;  pms_8(D)->count, pms_8(D)->count
	ldd r10,Y+6	 ;  pms_8(D)->count, pms_8(D)->count
	ldd r11,Y+7	 ;  pms_8(D)->count, pms_8(D)->count
	add r20,r8	 ;  D.2222, pms_8(D)->count
	adc r21,r9	 ;  D.2222, pms_8(D)->count
	adc r22,r10	 ;  D.2222, pms_8(D)->count
	adc r23,r11	 ;  D.2222, pms_8(D)->count
	std Y+4,r20	 ;  pms_8(D)->count, D.2222
	std Y+5,r21	 ;  pms_8(D)->count, D.2222
	std Y+6,r22	 ;  pms_8(D)->count, D.2222
	std Y+7,r23	 ;  pms_8(D)->count, D.2222
	.stabn	68,0,287,.LM83-.LFBB3
.LM83:
	movw r10,r6	 ;  D.2223, nbits
	movw r8,r4	 ;  D.2223, nbits
	add r8,r24	 ;  D.2223, D.2215
	adc r9,r25	 ;  D.2223, D.2215
	adc r10,r26	 ;  D.2223, D.2215
	adc r11,r27	 ;  D.2223, D.2215
	st Y,r8	 ;  pms_8(D)->count, D.2223
	std Y+1,r9	 ;  pms_8(D)->count, D.2223
	std Y+2,r10	 ;  pms_8(D)->count, D.2223
	std Y+3,r11	 ;  pms_8(D)->count, D.2223
	.stabn	68,0,288,.LM84-.LFBB3
.LM84:
	cp r8,r4	 ;  D.2223, nbits
	cpc r9,r5	 ;  D.2223, nbits
	cpc r10,r6	 ;  D.2223, nbits
	cpc r11,r7	 ;  D.2223, nbits
	brsh .L6	 ; ,
	.stabn	68,0,289,.LM85-.LFBB3
.LM85:
	subi r20,-1	 ;  tmp99,
	sbci r21,-1	 ; ,
	sbci r22,-1	 ; ,
	sbci r23,-1	 ; ,
	std Y+4,r20	 ;  pms_8(D)->count, tmp99
	std Y+5,r21	 ;  pms_8(D)->count, tmp99
	std Y+6,r22	 ;  pms_8(D)->count, tmp99
	std Y+7,r23	 ;  pms_8(D)->count, tmp99
.L6:
	.stabn	68,0,279,.LM86-.LFBB3
.LM86:
	ldi r21,3	 ; ,
	1:
	lsr r27	 ;  D.2441
	ror r26	 ;  D.2441
	ror r25	 ;  D.2441
	ror r24	 ;  D.2441
	dec r21	 ; 
	brne 1b
	andi r24,63	 ;  D.2441,
	clr r25	 ;  D.2441
	clr r26	 ;  D.2441
	clr r27	 ;  D.2441
	mov r8,r24	 ;  offset, D.2441
.LBB4:
	.stabn	68,0,292,.LM87-.LFBB3
.LM87:
	tst r24	 ;  offset
	breq .L7	 ; ,
.LBB5:
	.stabn	68,0,293,.LM88-.LFBB3
.LM88:
	add r24,r12	 ;  tmp101, nbytes
	adc r25,r13	 ;  tmp101, nbytes
	adc r26,r14	 ;  tmp101, nbytes
	adc r27,r15	 ;  tmp101, nbytes
	cpi r24,65	 ;  tmp101,
	cpc r25,__zero_reg__	 ; 
	cpc r26,__zero_reg__	 ; 
	cpc r27,__zero_reg__	 ; 
	brlo .L8	 ; ,
	.stabn	68,0,293,.LM89-.LFBB3
.LM89:
	ldi r20,lo8(64)	 ; ,
	mov r7,r20	 ;  copy,
	sub r7,r8	 ;  copy, offset
	rjmp .L9	 ; 
.L8:
	.stabn	68,0,293,.LM90-.LFBB3
.LM90:
	mov r7,r12	 ;  copy, nbytes
.L9:
	.stabn	68,0,295,.LM91-.LFBB3
.LM91:
	mov r10,r7	 ;  D.2236, copy
	mov r11,__zero_reg__	 ;  D.2236
	mov r9,__zero_reg__	 ;  offset
	movw r18,r8	 ;  tmp105, offset
	subi r18,-24	 ;  tmp105,
	sbci r19,-1	 ; ,
	add r18,r28	 ;  tmp105, pms
	adc r19,r29	 ;  tmp105, pms
	mov r20,r7	 ; , copy
	ldi r21,0	 ; 
	movw r22,r16	 ; ,
	movw r24,r18	 ; ,
	call memcpy	 ; 
	.stabn	68,0,296,.LM92-.LFBB3
.LM92:
	add r8,r10	 ;  tmp113, D.2236
	adc r9,r11	 ;  tmp113, D.2236
	ldi r24,64	 ; ,
	cp r8,r24	 ;  tmp113,
	cpc r9,__zero_reg__	 ; 
	brge .+2	 ; 
	rjmp .L3	 ; 
	.stabn	68,0,298,.LM93-.LFBB3
.LM93:
	add r16,r10	 ;  p, D.2236
	adc r17,r11	 ;  p, D.2236
	.stabn	68,0,299,.LM94-.LFBB3
.LM94:
	sub r12,r7	 ;  left, copy
	sbc r13,__zero_reg__	 ;  left
	sbc r14,__zero_reg__	 ;  left
	sbc r15,__zero_reg__	 ;  left
	.stabn	68,0,300,.LM95-.LFBB3
.LM95:
	movw r22,r28	 ;  tmp115, pms
	subi r22,-24	 ;  tmp115,
	sbci r23,-1	 ; ,
	movw r24,r28	 ; , pms
	call _Z11md5_processP11md5_state_sPKh	 ; 
.L7:
.LBE5:
	.stabn	68,0,277,.LM96-.LFBB3
.LM96:
	movw r4,r12	 ;  left, left
	movw r6,r14	 ;  left, left
	movw r10,r16	 ;  p, p
	rjmp .L11	 ; 
.L12:
.LBE4:
	.stabn	68,0,305,.LM97-.LFBB3
.LM97:
	movw r22,r10	 ; , p
	movw r24,r28	 ; , pms
	call _Z11md5_processP11md5_state_sPKh	 ; 
	.stabn	68,0,304,.LM98-.LFBB3
.LM98:
	ldi r24,64	 ; ,
	add r10,r24	 ;  p,
	adc r11,__zero_reg__	 ;  p
	ldi r24,64	 ; ,
	sub r4,r24	 ;  left,
	sbc r5,__zero_reg__	 ;  left
	sbc r6,__zero_reg__	 ;  left
	sbc r7,__zero_reg__	 ;  left
.L11:
	.stabn	68,0,304,.LM99-.LFBB3
.LM99:
	ldi r24,64	 ; ,
	cp r4,r24	 ;  left,
	cpc r5,__zero_reg__	 ;  left
	cpc r6,__zero_reg__	 ;  left
	cpc r7,__zero_reg__	 ;  left
	brsh .L12	 ; ,
	.stabn	68,0,276,.LM100-.LFBB3
.LM100:
	movw r26,r14	 ;  tmp116, left
	movw r24,r12	 ;  tmp116, left
	ldi r18,6	 ; ,
	1:
	lsr r27	 ;  tmp116
	ror r26	 ;  tmp116
	ror r25	 ;  tmp116
	ror r24	 ;  tmp116
	dec r18	 ; 
	brne 1b
	ldi r19,6	 ; ,
	1:
	lsl r24	 ;  p
	rol r25	 ;  p
	dec r19	 ; 
	brne 1b
	add r24,r16	 ;  p, p
	adc r25,r17	 ;  p, p
	movw r22,r14	 ;  left, left
	movw r20,r12	 ;  left, left
	andi r20,63	 ;  left,
	clr r21	 ;  left
	clr r22	 ;  left
	clr r23	 ;  left
	.stabn	68,0,308,.LM101-.LFBB3
.LM101:
	cp r20,__zero_reg__	 ;  left
	cpc r21,__zero_reg__	 ;  left
	cpc r22,__zero_reg__	 ;  left
	cpc r23,__zero_reg__	 ;  left
	breq .L3	 ; ,
	.stabn	68,0,309,.LM102-.LFBB3
.LM102:
	adiw r28,24	 ;  tmp118,
	movw r22,r24	 ; ,
	movw r24,r28	 ; ,
/* epilogue start */
.LBE3:
	.stabn	68,0,310,.LM103-.LFBB3
.LM103:
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	pop r8	 ; 
	pop r7	 ; 
	pop r6	 ; 
	pop r5	 ; 
	pop r4	 ; 
.LBB6:
	.stabn	68,0,309,.LM104-.LFBB3
.LM104:
	jmp memcpy	 ; 
.L3:
/* epilogue start */
.LBE6:
	.stabn	68,0,310,.LM105-.LFBB3
.LM105:
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	pop r13	 ; 
	pop r12	 ; 
	pop r11	 ; 
	pop r10	 ; 
	pop r9	 ; 
	pop r8	 ; 
	pop r7	 ; 
	pop r6	 ; 
	pop r5	 ; 
	pop r4	 ; 
	ret
	.size	_Z10md5_appendP11md5_state_sPKhm, .-_Z10md5_appendP11md5_state_sPKhm
	.stabs	"offset:r(0,58)",64,0,279,8
	.stabs	"nbits:r(0,59)",64,0,280,4
	.stabn	192,0,0,.LBB3-.LFBB3
	.stabs	"copy:r(0,58)",64,0,293,7
	.stabn	192,0,0,.LBB5-.LFBB3
	.stabn	224,0,0,.LBE5-.LFBB3
	.stabn	224,0,0,.LBE3-.LFBB3
	.stabs	"offset:r(0,58)",64,0,279,8
	.stabs	"nbits:r(0,59)",64,0,280,4
	.stabn	192,0,0,.LBB6-.LFBB3
	.stabn	224,0,0,.LBE6-.LFBB3
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabd	78,0,0
	.section	.text._Z10md5_finishP11md5_state_sPh,"ax",@progbits
	.stabs	"_Z10md5_finishP11md5_state_sPh:F(0,4)",36,0,312,_Z10md5_finishP11md5_state_sPh
	.stabs	"pms:P(0,76)",64,0,312,16
.global	_Z10md5_finishP11md5_state_sPh
	.type	_Z10md5_finishP11md5_state_sPh, @function
_Z10md5_finishP11md5_state_sPh:
	.stabd	46,0,0
	.stabn	68,0,312,.LM106-.LFBB4
.LM106:
.LFBB4:
	push r14	 ; 
	push r15	 ; 
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
	sbiw r28,8	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
/* prologue: function */
/* frame size = 8 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r16,r24	 ;  pms, pms
	movw r14,r22	 ; ,
	movw r22,r28	 ;  ivtmp.62,
	subi r22,-1	 ;  ivtmp.62,
	sbci r23,-1	 ;  ivtmp.62,
	.stabn	68,0,312,.LM107-.LFBB4
.LM107:
	ldi r18,0	 ;  ivtmp.55
	ldi r19,0	 ;  ivtmp.55
.L18:
.LBB7:
	.stabn	68,0,325,.LM108-.LFBB4
.LM108:
	movw r30,r18	 ;  tmp146, ivtmp.55
	andi r30,252	 ;  tmp146,
	add r30,r16	 ;  tmp146, pms
	adc r31,r17	 ;  tmp146, pms
	.stabn	68,0,312,.LM109-.LFBB4
.LM109:
	movw r20,r18	 ;  tmp148, ivtmp.55
	andi r20,3	 ;  tmp148,
	clr r21	 ; 
	.stabn	68,0,325,.LM110-.LFBB4
.LM110:
	ldi r26,3	 ; ,
	1:
	lsl r20	 ;  tmp148
	rol r21	 ;  tmp148
	dec r26	 ; 
	brne 1b
	ld r24,Z	 ;  tmp149, pms_8(D)->count
	ldd r25,Z+1	 ;  tmp149, pms_8(D)->count
	ldd r26,Z+2	 ;  tmp149, pms_8(D)->count
	ldd r27,Z+3	 ;  tmp149, pms_8(D)->count
	rjmp 2f
	1:
	lsr r27	 ;  tmp149
	ror r26	 ;  tmp149
	ror r25	 ;  tmp149
	ror r24	 ;  tmp149
	2:
	dec r20	 ;  tmp148
	brpl 1b
	movw r30,r22	 ; , ivtmp.62
	st Z+,r24	 ;  MEM[base: D.2520_71, offset: 0B], tmp149
	movw r22,r30	 ;  ivtmp.62,
	subi r18,-1	 ;  ivtmp.55,
	sbci r19,-1	 ;  ivtmp.55,
	.stabn	68,0,324,.LM111-.LFBB4
.LM111:
	cpi r18,8	 ;  ivtmp.55,
	cpc r19,__zero_reg__	 ;  ivtmp.55
	brne .L18	 ; ,
	.stabn	68,0,327,.LM112-.LFBB4
.LM112:
	movw r30,r16	 ; , pms
	ld r24,Z	 ;  tmp151, pms_8(D)->count
	ldd r25,Z+1	 ;  tmp151, pms_8(D)->count
	ldd r26,Z+2	 ;  tmp151, pms_8(D)->count
	ldd r27,Z+3	 ;  tmp151, pms_8(D)->count
	ldi r18,3	 ; ,
	1:
	lsr r27	 ;  tmp151
	ror r26	 ;  tmp151
	ror r25	 ;  tmp151
	ror r24	 ;  tmp151
	dec r18	 ; 
	brne 1b
	ldi r18,lo8(55)	 ;  tmp156,
	ldi r19,0	 ; 
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	sub r18,r24	 ;  tmp156, tmp151
	sbc r19,r25	 ;  tmp156, tmp151
	sbc r20,r26	 ;  tmp156, tmp151
	sbc r21,r27	 ;  tmp156, tmp151
	andi r18,63	 ;  tmp156,
	clr r19	 ; 
	clr r20	 ; 
	clr r21	 ; 
	subi r18,-1	 ;  tmp156,
	sbci r19,-1	 ; ,
	sbci r20,-1	 ; ,
	sbci r21,-1	 ; ,
	ldi r22,lo8(_ZZ10md5_finishP11md5_state_sPhE3pad)	 ; ,
	ldi r23,hi8(_ZZ10md5_finishP11md5_state_sPhE3pad)	 ; ,
	movw r24,r16	 ; , pms
	call _Z10md5_appendP11md5_state_sPKhm	 ; 
	.stabn	68,0,329,.LM113-.LFBB4
.LM113:
	ldi r18,lo8(8)	 ; ,
	ldi r19,0	 ; 
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	movw r22,r28	 ; ,
	subi r22,-1	 ; ,
	sbci r23,-1	 ; ,
	movw r24,r16	 ; , pms
	call _Z10md5_appendP11md5_state_sPKhm	 ; 
	movw r30,r14	 ; ,
	ldi r18,0	 ;  ivtmp.46
	ldi r19,0	 ;  ivtmp.46
.L19:
	.stabn	68,0,331,.LM114-.LFBB4
.LM114:
	movw r26,r18	 ;  tmp161, ivtmp.46
	andi r26,252	 ;  tmp161,
	add r26,r16	 ;  tmp161, pms
	adc r27,r17	 ;  tmp161, pms
	.stabn	68,0,312,.LM115-.LFBB4
.LM115:
	movw r20,r18	 ;  tmp163, ivtmp.46
	andi r20,3	 ;  tmp163,
	clr r21	 ; 
	.stabn	68,0,331,.LM116-.LFBB4
.LM116:
	ldi r24,3	 ; ,
	1:
	lsl r20	 ;  tmp163
	rol r21	 ;  tmp163
	dec r24	 ; 
	brne 1b
	adiw r26,8	 ;  pms_8(D)->abcd
	ld r24,X+
	ld r25,X+
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	rjmp 2f
	1:
	lsr r27	 ;  tmp164
	ror r26	 ;  tmp164
	ror r25	 ;  tmp164
	ror r24	 ;  tmp164
	2:
	dec r20	 ;  tmp163
	brpl 1b
	st Z+,r24	 ;  MEM[base: D.2508_70, offset: 0B], tmp164
	subi r18,-1	 ;  ivtmp.46,
	sbci r19,-1	 ;  ivtmp.46,
	.stabn	68,0,330,.LM117-.LFBB4
.LM117:
	cpi r18,16	 ;  ivtmp.46,
	cpc r19,__zero_reg__	 ;  ivtmp.46
	brne .L19	 ; ,
/* epilogue start */
.LBE7:
	.stabn	68,0,332,.LM118-.LFBB4
.LM118:
	adiw r28,8	 ; ,
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29	 ; ,
	out __SREG__,__tmp_reg__
	out __SP_L__,r28	 ; ,
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	pop r15	 ; 
	pop r14	 ; 
	ret
	.size	_Z10md5_finishP11md5_state_sPh, .-_Z10md5_finishP11md5_state_sPh
	.stabs	"pad:V(0,79)=ar(0,62);0;63;(0,78)",38,0,313,_ZZ10md5_finishP11md5_state_sPhE3pad
	.stabs	"data:(0,80)=ar(0,62);0;7;(0,58)",128,0,320,1
	.stabn	192,0,0,.LBB7-.LFBB4
	.stabn	224,0,0,.LBE7-.LFBB4
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabd	78,0,0
	.section	.rodata._ZZ10md5_finishP11md5_state_sPhE3pad,"a",@progbits
	.type	_ZZ10md5_finishP11md5_state_sPhE3pad, @object
	.size	_ZZ10md5_finishP11md5_state_sPhE3pad, 64
_ZZ10md5_finishP11md5_state_sPhE3pad:
	.byte	-128
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.text
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
