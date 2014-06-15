	.file	"md5.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C++ (GCC) version 4.7.2 (avr)
 ; 	compiled by GNU C version 4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2336.11.00), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -I . -I ../core -imultilib avr5 -MMD md5.d -MQ md5.S
 ;  -D F_CPU=20000000L md5.cpp -mmcu=atmega324pa -auxbase-strip md5.S -g
 ;  -Os -Wall -ffunction-sections -fdata-sections -fverbose-asm -fno-rtti
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
	.section	.text._Z11md5_processP11md5_state_sPKh,"ax",@progbits
.global	_Z11md5_processP11md5_state_sPKh
	.type	_Z11md5_processP11md5_state_sPKh, @function
_Z11md5_processP11md5_state_sPKh:
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
	movw r26,r24	 ; , pms
	adiw r26,8	 ;  pms_1(D)->abcd
	ld r8,X+	 ; 
	ld r9,X+	 ; 
	ld r10,X+	 ; 
	ld r11,X	 ; 
	sbiw r26,8+3	 ;  pms_1(D)->abcd
	adiw r28,77-60	 ;  %sfp
	std Y+60,r8	 ; 
	std Y+61,r9	 ; 
	std Y+62,r10	 ; 
	std Y+63,r11	 ; 
	sbiw r28,77-60	 ;  %sfp
	adiw r26,12	 ;  pms_1(D)->abcd
	ld r8,X+	 ; 
	ld r9,X+	 ; 
	ld r10,X+	 ; 
	ld r11,X	 ; 
	sbiw r26,12+3	 ;  pms_1(D)->abcd
	std Y+1,r8	 ;  %sfp,
	std Y+2,r9	 ;  %sfp,
	std Y+3,r10	 ;  %sfp,
	std Y+4,r11	 ;  %sfp,
	adiw r26,16	 ;  pms_1(D)->abcd
	ld r8,X+	 ; 
	ld r9,X+	 ; 
	ld r10,X+	 ; 
	ld r11,X	 ; 
	sbiw r26,16+3	 ;  pms_1(D)->abcd
	std Y+5,r8	 ;  %sfp,
	std Y+6,r9	 ;  %sfp,
	std Y+7,r10	 ;  %sfp,
	std Y+8,r11	 ;  %sfp,
	adiw r26,20	 ;  pms_1(D)->abcd
	ld r8,X+	 ; 
	ld r9,X+	 ; 
	ld r10,X+	 ; 
	ld r11,X	 ; 
	sbiw r26,20+3	 ;  pms_1(D)->abcd
	adiw r28,73-60	 ;  %sfp
	std Y+60,r8	 ; 
	std Y+61,r9	 ; 
	std Y+62,r10	 ; 
	std Y+63,r11	 ; 
	sbiw r28,73-60	 ;  %sfp
	movw r26,r22	 ; , data
	ld r8,X+	 ; 
	ld r9,X+	 ; 
	ld r10,X+	 ; 
	ld r11,X	 ; 
	std Y+9,r8	 ;  %sfp,
	std Y+10,r9	 ;  %sfp,
	std Y+11,r10	 ;  %sfp,
	std Y+12,r11	 ;  %sfp,
	adiw r28,77-60	 ;  %sfp
	ldd r24,Y+60	 ;  tmp600
	ldd r25,Y+61	 ;  tmp600
	ldd r26,Y+62	 ;  tmp600
	ldd r27,Y+63	 ;  tmp600
	sbiw r28,77-60	 ;  %sfp
	subi r24,-120	 ;  tmp600,
	sbci r25,91	 ; ,
	sbci r26,-107	 ; ,
	sbci r27,40	 ; ,
	ldd r20,Y+1	 ;  tmp598, %sfp
	ldd r21,Y+2	 ;  tmp598, %sfp
	ldd r22,Y+3	 ;  tmp598, %sfp
	ldd r23,Y+4	 ;  tmp598, %sfp
	com r20	 ;  tmp598
	com r21	 ;  tmp598
	com r22	 ;  tmp598
	com r23	 ;  tmp598
	adiw r28,73-60	 ;  %sfp
	ldd r8,Y+60	 ; 
	ldd r9,Y+61	 ; 
	ldd r10,Y+62	 ; 
	ldd r11,Y+63	 ; 
	sbiw r28,73-60	 ;  %sfp
	and r20,r8	 ;  tmp598,
	and r21,r9	 ;  tmp598,
	and r22,r10	 ;  tmp598,
	and r23,r11	 ;  tmp598,
	ldd r16,Y+5	 ;  tmp597, %sfp
	ldd r17,Y+6	 ;  tmp597, %sfp
	ldd r18,Y+7	 ;  tmp597, %sfp
	ldd r19,Y+8	 ;  tmp597, %sfp
	ldd r10,Y+1	 ; , %sfp
	ldd r11,Y+2	 ; , %sfp
	ldd r12,Y+3	 ; , %sfp
	ldd r13,Y+4	 ; , %sfp
	and r16,r10	 ;  tmp597,
	and r17,r11	 ;  tmp597,
	and r18,r12	 ;  tmp597,
	and r19,r13	 ;  tmp597,
	or r20,r16	 ;  tmp598, tmp597
	or r21,r17	 ;  tmp598, tmp597
	or r22,r18	 ;  tmp598, tmp597
	or r23,r19	 ;  tmp598, tmp597
	add r24,r20	 ;  tmp600, tmp598
	adc r25,r21	 ;  tmp600, tmp598
	adc r26,r22	 ;  tmp600, tmp598
	adc r27,r23	 ;  tmp600, tmp598
	ldd r12,Y+9	 ; , %sfp
	ldd r13,Y+10	 ; , %sfp
	ldd r14,Y+11	 ; , %sfp
	ldd r15,Y+12	 ; , %sfp
	add r24,r12	 ;  tmp600,
	adc r25,r13	 ;  tmp600,
	adc r26,r14	 ;  tmp600,
	adc r27,r15	 ;  tmp600,
	movw r16,r24	 ;  a.9, tmp600
	movw r18,r26	 ;  a.9, tmp600
	ldi r20,7	 ; ,
	1:
	lsl r16	 ;  a.9
	rol r17	 ;  a.9
	rol r18	 ;  a.9
	rol r19	 ;  a.9
	dec r20	 ; 
	brne 1b
	ldi r21,25	 ; ,
	1:
	lsr r27	 ;  tmp603
	ror r26	 ;  tmp603
	ror r25	 ;  tmp603
	ror r24	 ;  tmp603
	dec r21	 ; 
	brne 1b
	or r16,r24	 ;  a.9, tmp603
	or r17,r25	 ;  a.9, tmp603
	or r18,r26	 ;  a.9, tmp603
	or r19,r27	 ;  a.9, tmp603
	ldd r20,Y+1	 ; , %sfp
	ldd r21,Y+2	 ; , %sfp
	ldd r22,Y+3	 ; , %sfp
	ldd r23,Y+4	 ; , %sfp
	add r16,r20	 ;  a.9,
	adc r17,r21	 ;  a.9,
	adc r18,r22	 ;  a.9,
	adc r19,r23	 ;  a.9,
	movw r26,r2	 ; , data
	adiw r26,4	 ;  MEM[(const md5_word_t *)data_6(D) + 4B]
	ld r22,X+	 ; 
	ld r23,X+	 ; 
	ld r24,X+	 ; 
	ld r25,X	 ; 
	sbiw r26,4+3	 ;  MEM[(const md5_word_t *)data_6(D) + 4B]
	std Y+13,r22	 ;  %sfp,
	std Y+14,r23	 ;  %sfp,
	std Y+15,r24	 ;  %sfp,
	std Y+16,r25	 ;  %sfp,
	adiw r28,73-60	 ;  %sfp
	ldd r24,Y+60	 ;  tmp611
	ldd r25,Y+61	 ;  tmp611
	ldd r26,Y+62	 ;  tmp611
	ldd r27,Y+63	 ;  tmp611
	sbiw r28,73-60	 ;  %sfp
	subi r24,-86	 ;  tmp611,
	sbci r25,72	 ; ,
	sbci r26,56	 ; ,
	sbci r27,23	 ; ,
	ldd r8,Y+13	 ; , %sfp
	ldd r9,Y+14	 ; , %sfp
	ldd r10,Y+15	 ; , %sfp
	ldd r11,Y+16	 ; , %sfp
	add r24,r8	 ;  tmp611,
	adc r25,r9	 ;  tmp611,
	adc r26,r10	 ;  tmp611,
	adc r27,r11	 ;  tmp611,
	movw r22,r18	 ;  tmp610, a.9
	movw r20,r16	 ;  tmp610, a.9
	com r20	 ;  tmp610
	com r21	 ;  tmp610
	com r22	 ;  tmp610
	com r23	 ;  tmp610
	ldd r10,Y+5	 ; , %sfp
	ldd r11,Y+6	 ; , %sfp
	ldd r12,Y+7	 ; , %sfp
	ldd r13,Y+8	 ; , %sfp
	and r20,r10	 ;  tmp610,
	and r21,r11	 ;  tmp610,
	and r22,r12	 ;  tmp610,
	and r23,r13	 ;  tmp610,
	ldd r12,Y+1	 ;  tmp609, %sfp
	ldd r13,Y+2	 ;  tmp609, %sfp
	ldd r14,Y+3	 ;  tmp609, %sfp
	ldd r15,Y+4	 ;  tmp609, %sfp
	and r12,r16	 ;  tmp609, a.9
	and r13,r17	 ;  tmp609, a.9
	and r14,r18	 ;  tmp609, a.9
	and r15,r19	 ;  tmp609, a.9
	or r20,r12	 ;  tmp610, tmp609
	or r21,r13	 ;  tmp610, tmp609
	or r22,r14	 ;  tmp610, tmp609
	or r23,r15	 ;  tmp610, tmp609
	add r24,r20	 ;  tmp611, tmp610
	adc r25,r21	 ;  tmp611, tmp610
	adc r26,r22	 ;  tmp611, tmp610
	adc r27,r23	 ;  tmp611, tmp610
	movw r12,r24	 ;  d.10, tmp611
	movw r14,r26	 ;  d.10, tmp611
	ldi r22,12	 ; ,
	1:
	lsl r12	 ;  d.10
	rol r13	 ;  d.10
	rol r14	 ;  d.10
	rol r15	 ;  d.10
	dec r22	 ; 
	brne 1b
	ldi r23,20	 ; ,
	1:
	lsr r27	 ;  tmp614
	ror r26	 ;  tmp614
	ror r25	 ;  tmp614
	ror r24	 ;  tmp614
	dec r23	 ; 
	brne 1b
	or r12,r24	 ;  d.10, tmp614
	or r13,r25	 ;  d.10, tmp614
	or r14,r26	 ;  d.10, tmp614
	or r15,r27	 ;  d.10, tmp614
	add r12,r16	 ;  d.10, a.9
	adc r13,r17	 ;  d.10, a.9
	adc r14,r18	 ;  d.10, a.9
	adc r15,r19	 ;  d.10, a.9
	movw r26,r2	 ; , data
	adiw r26,8	 ;  MEM[(const md5_word_t *)data_6(D) + 8B]
	ld r20,X+	 ; 
	ld r21,X+	 ; 
	ld r22,X+	 ; 
	ld r23,X	 ; 
	sbiw r26,8+3	 ;  MEM[(const md5_word_t *)data_6(D) + 8B]
	std Y+17,r20	 ;  %sfp,
	std Y+18,r21	 ;  %sfp,
	std Y+19,r22	 ;  %sfp,
	std Y+20,r23	 ;  %sfp,
	ldd r24,Y+5	 ;  tmp622, %sfp
	ldd r25,Y+6	 ;  tmp622, %sfp
	ldd r26,Y+7	 ;  tmp622, %sfp
	ldd r27,Y+8	 ;  tmp622, %sfp
	subi r24,37	 ;  tmp622,
	sbci r25,-113	 ; ,
	sbci r26,-33	 ; ,
	sbci r27,-37	 ; ,
	add r24,r20	 ;  tmp622,
	adc r25,r21	 ;  tmp622,
	adc r26,r22	 ;  tmp622,
	adc r27,r23	 ;  tmp622,
	movw r22,r14	 ;  tmp621, d.10
	movw r20,r12	 ;  tmp621, d.10
	com r20	 ;  tmp621
	com r21	 ;  tmp621
	com r22	 ;  tmp621
	com r23	 ;  tmp621
	ldd r8,Y+1	 ; , %sfp
	ldd r9,Y+2	 ; , %sfp
	ldd r10,Y+3	 ; , %sfp
	ldd r11,Y+4	 ; , %sfp
	and r20,r8	 ;  tmp621,
	and r21,r9	 ;  tmp621,
	and r22,r10	 ;  tmp621,
	and r23,r11	 ;  tmp621,
	movw r8,r12	 ;  tmp620, d.10
	movw r10,r14	 ;  tmp620, d.10
	and r8,r16	 ;  tmp620, a.9
	and r9,r17	 ;  tmp620, a.9
	and r10,r18	 ;  tmp620, a.9
	and r11,r19	 ;  tmp620, a.9
	or r20,r8	 ;  tmp621, tmp620
	or r21,r9	 ;  tmp621, tmp620
	or r22,r10	 ;  tmp621, tmp620
	or r23,r11	 ;  tmp621, tmp620
	add r24,r20	 ;  tmp622, tmp621
	adc r25,r21	 ;  tmp622, tmp621
	adc r26,r22	 ;  tmp622, tmp621
	adc r27,r23	 ;  tmp622, tmp621
	movw r20,r24	 ;  c.11, tmp622
	movw r22,r26	 ;  c.11, tmp622
	ldi r30,17	 ; ,
	1:
	lsl r20	 ;  c.11
	rol r21	 ;  c.11
	rol r22	 ;  c.11
	rol r23	 ;  c.11
	dec r30	 ; 
	brne 1b
	ldi r31,15	 ; ,
	1:
	lsr r27	 ;  tmp625
	ror r26	 ;  tmp625
	ror r25	 ;  tmp625
	ror r24	 ;  tmp625
	dec r31	 ; 
	brne 1b
	or r20,r24	 ;  c.11, tmp625
	or r21,r25	 ;  c.11, tmp625
	or r22,r26	 ;  c.11, tmp625
	or r23,r27	 ;  c.11, tmp625
	add r20,r12	 ;  c.11, d.10
	adc r21,r13	 ;  c.11, d.10
	adc r22,r14	 ;  c.11, d.10
	adc r23,r15	 ;  c.11, d.10
	movw r26,r2	 ; , data
	adiw r26,12	 ;  MEM[(const md5_word_t *)data_6(D) + 12B]
	ld r24,X+
	ld r25,X+
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	std Y+21,r24	 ;  %sfp,
	std Y+22,r25	 ;  %sfp,
	std Y+23,r26	 ;  %sfp,
	std Y+24,r27	 ;  %sfp,
	ldd r24,Y+1	 ;  tmp633, %sfp
	ldd r25,Y+2	 ;  tmp633, %sfp
	ldd r26,Y+3	 ;  tmp633, %sfp
	ldd r27,Y+4	 ;  tmp633, %sfp
	subi r24,18	 ;  tmp633,
	sbci r25,49	 ; ,
	sbci r26,66	 ; ,
	sbci r27,62	 ; ,
	ldd r8,Y+21	 ; , %sfp
	ldd r9,Y+22	 ; , %sfp
	ldd r10,Y+23	 ; , %sfp
	ldd r11,Y+24	 ; , %sfp
	add r24,r8	 ;  tmp633,
	adc r25,r9	 ;  tmp633,
	adc r26,r10	 ;  tmp633,
	adc r27,r11	 ;  tmp633,
	movw r8,r20	 ;  tmp632, c.11
	movw r10,r22	 ;  tmp632, c.11
	com r8	 ;  tmp632
	com r9	 ;  tmp632
	com r10	 ;  tmp632
	com r11	 ;  tmp632
	and r8,r16	 ;  tmp632, a.9
	and r9,r17	 ;  tmp632, a.9
	and r10,r18	 ;  tmp632, a.9
	and r11,r19	 ;  tmp632, a.9
	movw r4,r20	 ;  tmp631, c.11
	movw r6,r22	 ;  tmp631, c.11
	and r4,r12	 ;  tmp631, d.10
	and r5,r13	 ;  tmp631, d.10
	and r6,r14	 ;  tmp631, d.10
	and r7,r15	 ;  tmp631, d.10
	or r8,r4	 ;  tmp632, tmp631
	or r9,r5	 ;  tmp632, tmp631
	or r10,r6	 ;  tmp632, tmp631
	or r11,r7	 ;  tmp632, tmp631
	add r24,r8	 ;  tmp633, tmp632
	adc r25,r9	 ;  tmp633, tmp632
	adc r26,r10	 ;  tmp633, tmp632
	adc r27,r11	 ;  tmp633, tmp632
	movw r8,r24	 ;  b.12, tmp633
	movw r10,r26	 ;  b.12, tmp633
	ldi r30,22	 ; ,
	1:
	lsl r8	 ;  b.12
	rol r9	 ;  b.12
	rol r10	 ;  b.12
	rol r11	 ;  b.12
	dec r30	 ; 
	brne 1b
	ldi r31,10	 ; ,
	1:
	lsr r27	 ;  tmp636
	ror r26	 ;  tmp636
	ror r25	 ;  tmp636
	ror r24	 ;  tmp636
	dec r31	 ; 
	brne 1b
	or r8,r24	 ;  b.12, tmp636
	or r9,r25	 ;  b.12, tmp636
	or r10,r26	 ;  b.12, tmp636
	or r11,r27	 ;  b.12, tmp636
	add r8,r20	 ;  b.12, c.11
	adc r9,r21	 ;  b.12, c.11
	adc r10,r22	 ;  b.12, c.11
	adc r11,r23	 ;  b.12, c.11
	movw r26,r2	 ; , data
	adiw r26,16	 ;  MEM[(const md5_word_t *)data_6(D) + 16B]
	ld r24,X+
	ld r25,X+
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	std Y+25,r24	 ;  %sfp,
	std Y+26,r25	 ;  %sfp,
	std Y+27,r26	 ;  %sfp,
	std Y+28,r27	 ;  %sfp,
	subi r24,81	 ;  tmp644,
	sbci r25,-16	 ; ,
	sbci r26,-125	 ; ,
	sbci r27,10	 ; ,
	add r24,r16	 ;  tmp644, a.9
	adc r25,r17	 ;  tmp644, a.9
	adc r26,r18	 ;  tmp644, a.9
	adc r27,r19	 ;  tmp644, a.9
	movw r18,r10	 ;  tmp643, b.12
	movw r16,r8	 ;  tmp643, b.12
	com r16	 ;  tmp643
	com r17	 ;  tmp643
	com r18	 ;  tmp643
	com r19	 ;  tmp643
	and r16,r12	 ;  tmp643, d.10
	and r17,r13	 ;  tmp643, d.10
	and r18,r14	 ;  tmp643, d.10
	and r19,r15	 ;  tmp643, d.10
	movw r4,r8	 ;  tmp642, b.12
	movw r6,r10	 ;  tmp642, b.12
	and r4,r20	 ;  tmp642, c.11
	and r5,r21	 ;  tmp642, c.11
	and r6,r22	 ;  tmp642, c.11
	and r7,r23	 ;  tmp642, c.11
	or r16,r4	 ;  tmp643, tmp642
	or r17,r5	 ;  tmp643, tmp642
	or r18,r6	 ;  tmp643, tmp642
	or r19,r7	 ;  tmp643, tmp642
	add r24,r16	 ;  tmp644, tmp643
	adc r25,r17	 ;  tmp644, tmp643
	adc r26,r18	 ;  tmp644, tmp643
	adc r27,r19	 ;  tmp644, tmp643
	movw r16,r24	 ;  tmp645, tmp644
	movw r18,r26	 ;  tmp645, tmp644
	ldi r30,7	 ; ,
	1:
	lsl r16	 ;  tmp645
	rol r17	 ;  tmp645
	rol r18	 ;  tmp645
	rol r19	 ;  tmp645
	dec r30	 ; 
	brne 1b
	ldi r31,25	 ; ,
	1:
	lsr r27	 ;  a.9
	ror r26	 ;  a.9
	ror r25	 ;  a.9
	ror r24	 ;  a.9
	dec r31	 ; 
	brne 1b
	or r24,r16	 ;  a.9, tmp645
	or r25,r17	 ;  a.9, tmp645
	or r26,r18	 ;  a.9, tmp645
	or r27,r19	 ;  a.9, tmp645
	add r24,r8	 ;  a.9, b.12
	adc r25,r9	 ;  a.9, b.12
	adc r26,r10	 ;  a.9, b.12
	adc r27,r11	 ;  a.9, b.12
	movw r30,r2	 ; , data
	ldd r16,Z+20	 ; , MEM[(const md5_word_t *)data_6(D) + 20B]
	ldd r17,Z+21	 ; , MEM[(const md5_word_t *)data_6(D) + 20B]
	ldd r18,Z+22	 ; , MEM[(const md5_word_t *)data_6(D) + 20B]
	ldd r19,Z+23	 ; , MEM[(const md5_word_t *)data_6(D) + 20B]
	std Y+29,r16	 ;  %sfp,
	std Y+30,r17	 ;  %sfp,
	std Y+31,r18	 ;  %sfp,
	std Y+32,r19	 ;  %sfp,
	subi r16,-42	 ;  tmp652,
	sbci r17,57	 ; ,
	sbci r18,120	 ; ,
	sbci r19,-72	 ; ,
	add r16,r12	 ;  tmp652, d.10
	adc r17,r13	 ;  tmp652, d.10
	adc r18,r14	 ;  tmp652, d.10
	adc r19,r15	 ;  tmp652, d.10
	movw r12,r24	 ;  tmp651, a.9
	movw r14,r26	 ;  tmp651, a.9
	com r12	 ;  tmp651
	com r13	 ;  tmp651
	com r14	 ;  tmp651
	com r15	 ;  tmp651
	and r12,r20	 ;  tmp651, c.11
	and r13,r21	 ;  tmp651, c.11
	and r14,r22	 ;  tmp651, c.11
	and r15,r23	 ;  tmp651, c.11
	movw r4,r24	 ;  tmp650, a.9
	movw r6,r26	 ;  tmp650, a.9
	and r4,r8	 ;  tmp650, b.12
	and r5,r9	 ;  tmp650, b.12
	and r6,r10	 ;  tmp650, b.12
	and r7,r11	 ;  tmp650, b.12
	or r12,r4	 ;  tmp651, tmp650
	or r13,r5	 ;  tmp651, tmp650
	or r14,r6	 ;  tmp651, tmp650
	or r15,r7	 ;  tmp651, tmp650
	add r16,r12	 ;  tmp652, tmp651
	adc r17,r13	 ;  tmp652, tmp651
	adc r18,r14	 ;  tmp652, tmp651
	adc r19,r15	 ;  tmp652, tmp651
	movw r12,r16	 ;  tmp653, tmp652
	movw r14,r18	 ;  tmp653, tmp652
	mov r0,r27	 ; ,
	ldi r27,12	 ; ,
	1:
	lsl r12	 ;  tmp653
	rol r13	 ;  tmp653
	rol r14	 ;  tmp653
	rol r15	 ;  tmp653
	dec r27	 ; 
	brne 1b
	mov r27,r0	 ; ,
	mov r0,r31	 ; ,
	ldi r31,20	 ; ,
	1:
	lsr r19	 ;  d.10
	ror r18	 ;  d.10
	ror r17	 ;  d.10
	ror r16	 ;  d.10
	dec r31	 ; 
	brne 1b
	mov r31,r0	 ; ,
	or r16,r12	 ;  d.10, tmp653
	or r17,r13	 ;  d.10, tmp653
	or r18,r14	 ;  d.10, tmp653
	or r19,r15	 ;  d.10, tmp653
	add r16,r24	 ;  d.10, a.9
	adc r17,r25	 ;  d.10, a.9
	adc r18,r26	 ;  d.10, a.9
	adc r19,r27	 ;  d.10, a.9
	ldd r12,Z+24	 ; , MEM[(const md5_word_t *)data_6(D) + 24B]
	ldd r13,Z+25	 ; , MEM[(const md5_word_t *)data_6(D) + 24B]
	ldd r14,Z+26	 ; , MEM[(const md5_word_t *)data_6(D) + 24B]
	ldd r15,Z+27	 ; , MEM[(const md5_word_t *)data_6(D) + 24B]
	std Y+33,r12	 ;  %sfp,
	std Y+34,r13	 ;  %sfp,
	std Y+35,r14	 ;  %sfp,
	std Y+36,r15	 ;  %sfp,
	ldi r31,-19	 ; ,
	sub r12,r31	 ;  tmp660,
	ldi r31,-71	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,-49	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,87	 ; ,
	sbc r15,r31	 ; ,
	add r12,r20	 ;  tmp660, c.11
	adc r13,r21	 ;  tmp660, c.11
	adc r14,r22	 ;  tmp660, c.11
	adc r15,r23	 ;  tmp660, c.11
	movw r22,r18	 ;  tmp659, d.10
	movw r20,r16	 ;  tmp659, d.10
	com r20	 ;  tmp659
	com r21	 ;  tmp659
	com r22	 ;  tmp659
	com r23	 ;  tmp659
	and r20,r8	 ;  tmp659, b.12
	and r21,r9	 ;  tmp659, b.12
	and r22,r10	 ;  tmp659, b.12
	and r23,r11	 ;  tmp659, b.12
	movw r4,r16	 ;  tmp658, d.10
	movw r6,r18	 ;  tmp658, d.10
	and r4,r24	 ;  tmp658, a.9
	and r5,r25	 ;  tmp658, a.9
	and r6,r26	 ;  tmp658, a.9
	and r7,r27	 ;  tmp658, a.9
	or r20,r4	 ;  tmp659, tmp658
	or r21,r5	 ;  tmp659, tmp658
	or r22,r6	 ;  tmp659, tmp658
	or r23,r7	 ;  tmp659, tmp658
	add r12,r20	 ;  tmp660, tmp659
	adc r13,r21	 ;  tmp660, tmp659
	adc r14,r22	 ;  tmp660, tmp659
	adc r15,r23	 ;  tmp660, tmp659
	movw r22,r14	 ;  tmp661, tmp660
	movw r20,r12	 ;  tmp661, tmp660
	ldi r30,17	 ; ,
	1:
	lsl r20	 ;  tmp661
	rol r21	 ;  tmp661
	rol r22	 ;  tmp661
	rol r23	 ;  tmp661
	dec r30	 ; 
	brne 1b
	ldi r31,15	 ; ,
	1:
	lsr r15	 ;  c.11
	ror r14	 ;  c.11
	ror r13	 ;  c.11
	ror r12	 ;  c.11
	dec r31	 ; 
	brne 1b
	or r12,r20	 ;  c.11, tmp661
	or r13,r21	 ;  c.11, tmp661
	or r14,r22	 ;  c.11, tmp661
	or r15,r23	 ;  c.11, tmp661
	add r12,r16	 ;  c.11, d.10
	adc r13,r17	 ;  c.11, d.10
	adc r14,r18	 ;  c.11, d.10
	adc r15,r19	 ;  c.11, d.10
	movw r30,r2	 ; , data
	ldd r20,Z+28	 ; , MEM[(const md5_word_t *)data_6(D) + 28B]
	ldd r21,Z+29	 ; , MEM[(const md5_word_t *)data_6(D) + 28B]
	ldd r22,Z+30	 ; , MEM[(const md5_word_t *)data_6(D) + 28B]
	ldd r23,Z+31	 ; , MEM[(const md5_word_t *)data_6(D) + 28B]
	std Y+37,r20	 ;  %sfp,
	std Y+38,r21	 ;  %sfp,
	std Y+39,r22	 ;  %sfp,
	std Y+40,r23	 ;  %sfp,
	subi r20,-1	 ;  tmp668,
	sbci r21,106	 ; ,
	sbci r22,-71	 ; ,
	sbci r23,2	 ; ,
	add r20,r8	 ;  tmp668, b.12
	adc r21,r9	 ;  tmp668, b.12
	adc r22,r10	 ;  tmp668, b.12
	adc r23,r11	 ;  tmp668, b.12
	movw r8,r12	 ;  tmp667, c.11
	movw r10,r14	 ;  tmp667, c.11
	com r8	 ;  tmp667
	com r9	 ;  tmp667
	com r10	 ;  tmp667
	com r11	 ;  tmp667
	and r8,r24	 ;  tmp667, a.9
	and r9,r25	 ;  tmp667, a.9
	and r10,r26	 ;  tmp667, a.9
	and r11,r27	 ;  tmp667, a.9
	movw r4,r12	 ;  tmp666, c.11
	movw r6,r14	 ;  tmp666, c.11
	and r4,r16	 ;  tmp666, d.10
	and r5,r17	 ;  tmp666, d.10
	and r6,r18	 ;  tmp666, d.10
	and r7,r19	 ;  tmp666, d.10
	or r8,r4	 ;  tmp667, tmp666
	or r9,r5	 ;  tmp667, tmp666
	or r10,r6	 ;  tmp667, tmp666
	or r11,r7	 ;  tmp667, tmp666
	add r20,r8	 ;  tmp668, tmp667
	adc r21,r9	 ;  tmp668, tmp667
	adc r22,r10	 ;  tmp668, tmp667
	adc r23,r11	 ;  tmp668, tmp667
	movw r8,r20	 ;  tmp669, tmp668
	movw r10,r22	 ;  tmp669, tmp668
	mov r0,r23	 ; ,
	ldi r23,22	 ; ,
	1:
	lsl r8	 ;  tmp669
	rol r9	 ;  tmp669
	rol r10	 ;  tmp669
	rol r11	 ;  tmp669
	dec r23	 ; 
	brne 1b
	mov r23,r0	 ; ,
	mov r0,r19	 ; ,
	ldi r19,10	 ; ,
	1:
	lsr r23	 ;  b.12
	ror r22	 ;  b.12
	ror r21	 ;  b.12
	ror r20	 ;  b.12
	dec r19	 ; 
	brne 1b
	mov r19,r0	 ; ,
	or r20,r8	 ;  b.12, tmp669
	or r21,r9	 ;  b.12, tmp669
	or r22,r10	 ;  b.12, tmp669
	or r23,r11	 ;  b.12, tmp669
	add r20,r12	 ;  b.12, c.11
	adc r21,r13	 ;  b.12, c.11
	adc r22,r14	 ;  b.12, c.11
	adc r23,r15	 ;  b.12, c.11
	ldd r8,Z+32	 ; , MEM[(const md5_word_t *)data_6(D) + 32B]
	ldd r9,Z+33	 ; , MEM[(const md5_word_t *)data_6(D) + 32B]
	ldd r10,Z+34	 ; , MEM[(const md5_word_t *)data_6(D) + 32B]
	ldd r11,Z+35	 ; , MEM[(const md5_word_t *)data_6(D) + 32B]
	std Y+41,r8	 ;  %sfp,
	std Y+42,r9	 ;  %sfp,
	std Y+43,r10	 ;  %sfp,
	std Y+44,r11	 ;  %sfp,
	ldi r31,40	 ; ,
	sub r8,r31	 ;  tmp676,
	ldi r31,103	 ; ,
	sbc r9,r31	 ; ,
	ldi r31,127	 ; ,
	sbc r10,r31	 ; ,
	ldi r31,-106	 ; ,
	sbc r11,r31	 ; ,
	add r8,r24	 ;  tmp676, a.9
	adc r9,r25	 ;  tmp676, a.9
	adc r10,r26	 ;  tmp676, a.9
	adc r11,r27	 ;  tmp676, a.9
	movw r26,r22	 ;  tmp675, b.12
	movw r24,r20	 ;  tmp675, b.12
	com r24	 ;  tmp675
	com r25	 ;  tmp675
	com r26	 ;  tmp675
	com r27	 ;  tmp675
	and r24,r16	 ;  tmp675, d.10
	and r25,r17	 ;  tmp675, d.10
	and r26,r18	 ;  tmp675, d.10
	and r27,r19	 ;  tmp675, d.10
	movw r4,r20	 ;  tmp674, b.12
	movw r6,r22	 ;  tmp674, b.12
	and r4,r12	 ;  tmp674, c.11
	and r5,r13	 ;  tmp674, c.11
	and r6,r14	 ;  tmp674, c.11
	and r7,r15	 ;  tmp674, c.11
	or r24,r4	 ;  tmp675, tmp674
	or r25,r5	 ;  tmp675, tmp674
	or r26,r6	 ;  tmp675, tmp674
	or r27,r7	 ;  tmp675, tmp674
	add r8,r24	 ;  tmp676, tmp675
	adc r9,r25	 ;  tmp676, tmp675
	adc r10,r26	 ;  tmp676, tmp675
	adc r11,r27	 ;  tmp676, tmp675
	movw r26,r10	 ;  tmp677, tmp676
	movw r24,r8	 ;  tmp677, tmp676
	ldi r30,7	 ; ,
	1:
	lsl r24	 ;  tmp677
	rol r25	 ;  tmp677
	rol r26	 ;  tmp677
	rol r27	 ;  tmp677
	dec r30	 ; 
	brne 1b
	ldi r31,25	 ; ,
	1:
	lsr r11	 ;  a.9
	ror r10	 ;  a.9
	ror r9	 ;  a.9
	ror r8	 ;  a.9
	dec r31	 ; 
	brne 1b
	or r8,r24	 ;  a.9, tmp677
	or r9,r25	 ;  a.9, tmp677
	or r10,r26	 ;  a.9, tmp677
	or r11,r27	 ;  a.9, tmp677
	add r8,r20	 ;  a.9, b.12
	adc r9,r21	 ;  a.9, b.12
	adc r10,r22	 ;  a.9, b.12
	adc r11,r23	 ;  a.9, b.12
	movw r26,r2	 ; , data
	adiw r26,36	 ;  MEM[(const md5_word_t *)data_6(D) + 36B]
	ld r24,X+
	ld r25,X+
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	std Y+45,r24	 ;  %sfp,
	std Y+46,r25	 ;  %sfp,
	std Y+47,r26	 ;  %sfp,
	std Y+48,r27	 ;  %sfp,
	subi r24,81	 ;  tmp684,
	sbci r25,8	 ; ,
	sbci r26,-69	 ; ,
	sbci r27,116	 ; ,
	add r24,r16	 ;  tmp684, d.10
	adc r25,r17	 ;  tmp684, d.10
	adc r26,r18	 ;  tmp684, d.10
	adc r27,r19	 ;  tmp684, d.10
	movw r18,r10	 ;  tmp683, a.9
	movw r16,r8	 ;  tmp683, a.9
	com r16	 ;  tmp683
	com r17	 ;  tmp683
	com r18	 ;  tmp683
	com r19	 ;  tmp683
	and r16,r12	 ;  tmp683, c.11
	and r17,r13	 ;  tmp683, c.11
	and r18,r14	 ;  tmp683, c.11
	and r19,r15	 ;  tmp683, c.11
	movw r4,r8	 ;  tmp682, a.9
	movw r6,r10	 ;  tmp682, a.9
	and r4,r20	 ;  tmp682, b.12
	and r5,r21	 ;  tmp682, b.12
	and r6,r22	 ;  tmp682, b.12
	and r7,r23	 ;  tmp682, b.12
	or r16,r4	 ;  tmp683, tmp682
	or r17,r5	 ;  tmp683, tmp682
	or r18,r6	 ;  tmp683, tmp682
	or r19,r7	 ;  tmp683, tmp682
	add r24,r16	 ;  tmp684, tmp683
	adc r25,r17	 ;  tmp684, tmp683
	adc r26,r18	 ;  tmp684, tmp683
	adc r27,r19	 ;  tmp684, tmp683
	movw r16,r24	 ;  tmp685, tmp684
	movw r18,r26	 ;  tmp685, tmp684
	ldi r30,12	 ; ,
	1:
	lsl r16	 ;  tmp685
	rol r17	 ;  tmp685
	rol r18	 ;  tmp685
	rol r19	 ;  tmp685
	dec r30	 ; 
	brne 1b
	ldi r31,20	 ; ,
	1:
	lsr r27	 ;  d.10
	ror r26	 ;  d.10
	ror r25	 ;  d.10
	ror r24	 ;  d.10
	dec r31	 ; 
	brne 1b
	or r24,r16	 ;  d.10, tmp685
	or r25,r17	 ;  d.10, tmp685
	or r26,r18	 ;  d.10, tmp685
	or r27,r19	 ;  d.10, tmp685
	add r24,r8	 ;  d.10, a.9
	adc r25,r9	 ;  d.10, a.9
	adc r26,r10	 ;  d.10, a.9
	adc r27,r11	 ;  d.10, a.9
	movw r30,r2	 ; , data
	ldd r16,Z+40	 ; , MEM[(const md5_word_t *)data_6(D) + 40B]
	ldd r17,Z+41	 ; , MEM[(const md5_word_t *)data_6(D) + 40B]
	ldd r18,Z+42	 ; , MEM[(const md5_word_t *)data_6(D) + 40B]
	ldd r19,Z+43	 ; , MEM[(const md5_word_t *)data_6(D) + 40B]
	std Y+49,r16	 ;  %sfp,
	std Y+50,r17	 ;  %sfp,
	std Y+51,r18	 ;  %sfp,
	std Y+52,r19	 ;  %sfp,
	subi r16,79	 ;  tmp692,
	sbci r17,-92	 ; ,
	sbc r18,__zero_reg__	 ; 
	sbc r19,__zero_reg__	 ; 
	add r16,r12	 ;  tmp692, c.11
	adc r17,r13	 ;  tmp692, c.11
	adc r18,r14	 ;  tmp692, c.11
	adc r19,r15	 ;  tmp692, c.11
	movw r12,r24	 ;  tmp691, d.10
	movw r14,r26	 ;  tmp691, d.10
	com r12	 ;  tmp691
	com r13	 ;  tmp691
	com r14	 ;  tmp691
	com r15	 ;  tmp691
	and r12,r20	 ;  tmp691, b.12
	and r13,r21	 ;  tmp691, b.12
	and r14,r22	 ;  tmp691, b.12
	and r15,r23	 ;  tmp691, b.12
	movw r4,r24	 ;  tmp690, d.10
	movw r6,r26	 ;  tmp690, d.10
	and r4,r8	 ;  tmp690, a.9
	and r5,r9	 ;  tmp690, a.9
	and r6,r10	 ;  tmp690, a.9
	and r7,r11	 ;  tmp690, a.9
	or r12,r4	 ;  tmp691, tmp690
	or r13,r5	 ;  tmp691, tmp690
	or r14,r6	 ;  tmp691, tmp690
	or r15,r7	 ;  tmp691, tmp690
	add r16,r12	 ;  tmp692, tmp691
	adc r17,r13	 ;  tmp692, tmp691
	adc r18,r14	 ;  tmp692, tmp691
	adc r19,r15	 ;  tmp692, tmp691
	movw r12,r16	 ;  tmp693, tmp692
	movw r14,r18	 ;  tmp693, tmp692
	mov r0,r27	 ; ,
	ldi r27,17	 ; ,
	1:
	lsl r12	 ;  tmp693
	rol r13	 ;  tmp693
	rol r14	 ;  tmp693
	rol r15	 ;  tmp693
	dec r27	 ; 
	brne 1b
	mov r27,r0	 ; ,
	mov r0,r31	 ; ,
	ldi r31,15	 ; ,
	1:
	lsr r19	 ;  c.11
	ror r18	 ;  c.11
	ror r17	 ;  c.11
	ror r16	 ;  c.11
	dec r31	 ; 
	brne 1b
	mov r31,r0	 ; ,
	or r16,r12	 ;  c.11, tmp693
	or r17,r13	 ;  c.11, tmp693
	or r18,r14	 ;  c.11, tmp693
	or r19,r15	 ;  c.11, tmp693
	add r16,r24	 ;  c.11, d.10
	adc r17,r25	 ;  c.11, d.10
	adc r18,r26	 ;  c.11, d.10
	adc r19,r27	 ;  c.11, d.10
	ldd r12,Z+44	 ; , MEM[(const md5_word_t *)data_6(D) + 44B]
	ldd r13,Z+45	 ; , MEM[(const md5_word_t *)data_6(D) + 44B]
	ldd r14,Z+46	 ; , MEM[(const md5_word_t *)data_6(D) + 44B]
	ldd r15,Z+47	 ; , MEM[(const md5_word_t *)data_6(D) + 44B]
	std Y+53,r12	 ;  %sfp,
	std Y+54,r13	 ;  %sfp,
	std Y+55,r14	 ;  %sfp,
	std Y+56,r15	 ;  %sfp,
	ldi r31,66	 ; ,
	sub r12,r31	 ;  tmp700,
	ldi r31,40	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,-93	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,118	 ; ,
	sbc r15,r31	 ; ,
	add r12,r20	 ;  tmp700, b.12
	adc r13,r21	 ;  tmp700, b.12
	adc r14,r22	 ;  tmp700, b.12
	adc r15,r23	 ;  tmp700, b.12
	movw r22,r18	 ;  tmp699, c.11
	movw r20,r16	 ;  tmp699, c.11
	com r20	 ;  tmp699
	com r21	 ;  tmp699
	com r22	 ;  tmp699
	com r23	 ;  tmp699
	and r20,r8	 ;  tmp699, a.9
	and r21,r9	 ;  tmp699, a.9
	and r22,r10	 ;  tmp699, a.9
	and r23,r11	 ;  tmp699, a.9
	movw r4,r16	 ;  tmp698, c.11
	movw r6,r18	 ;  tmp698, c.11
	and r4,r24	 ;  tmp698, d.10
	and r5,r25	 ;  tmp698, d.10
	and r6,r26	 ;  tmp698, d.10
	and r7,r27	 ;  tmp698, d.10
	or r20,r4	 ;  tmp699, tmp698
	or r21,r5	 ;  tmp699, tmp698
	or r22,r6	 ;  tmp699, tmp698
	or r23,r7	 ;  tmp699, tmp698
	add r12,r20	 ;  tmp700, tmp699
	adc r13,r21	 ;  tmp700, tmp699
	adc r14,r22	 ;  tmp700, tmp699
	adc r15,r23	 ;  tmp700, tmp699
	movw r22,r14	 ;  tmp701, tmp700
	movw r20,r12	 ;  tmp701, tmp700
	ldi r30,22	 ; ,
	1:
	lsl r20	 ;  tmp701
	rol r21	 ;  tmp701
	rol r22	 ;  tmp701
	rol r23	 ;  tmp701
	dec r30	 ; 
	brne 1b
	ldi r31,10	 ; ,
	1:
	lsr r15	 ;  b.12
	ror r14	 ;  b.12
	ror r13	 ;  b.12
	ror r12	 ;  b.12
	dec r31	 ; 
	brne 1b
	or r12,r20	 ;  b.12, tmp701
	or r13,r21	 ;  b.12, tmp701
	or r14,r22	 ;  b.12, tmp701
	or r15,r23	 ;  b.12, tmp701
	add r12,r16	 ;  b.12, c.11
	adc r13,r17	 ;  b.12, c.11
	adc r14,r18	 ;  b.12, c.11
	adc r15,r19	 ;  b.12, c.11
	movw r30,r2	 ; , data
	ldd r20,Z+48	 ; , MEM[(const md5_word_t *)data_6(D) + 48B]
	ldd r21,Z+49	 ; , MEM[(const md5_word_t *)data_6(D) + 48B]
	ldd r22,Z+50	 ; , MEM[(const md5_word_t *)data_6(D) + 48B]
	ldd r23,Z+51	 ; , MEM[(const md5_word_t *)data_6(D) + 48B]
	std Y+57,r20	 ;  %sfp,
	std Y+58,r21	 ;  %sfp,
	std Y+59,r22	 ;  %sfp,
	std Y+60,r23	 ;  %sfp,
	subi r20,-34	 ;  tmp708,
	sbci r21,-18	 ; ,
	sbci r22,111	 ; ,
	sbci r23,-108	 ; ,
	add r20,r8	 ;  tmp708, a.9
	adc r21,r9	 ;  tmp708, a.9
	adc r22,r10	 ;  tmp708, a.9
	adc r23,r11	 ;  tmp708, a.9
	movw r8,r12	 ;  tmp707, b.12
	movw r10,r14	 ;  tmp707, b.12
	com r8	 ;  tmp707
	com r9	 ;  tmp707
	com r10	 ;  tmp707
	com r11	 ;  tmp707
	and r8,r24	 ;  tmp707, d.10
	and r9,r25	 ;  tmp707, d.10
	and r10,r26	 ;  tmp707, d.10
	and r11,r27	 ;  tmp707, d.10
	movw r4,r12	 ;  tmp706, b.12
	movw r6,r14	 ;  tmp706, b.12
	and r4,r16	 ;  tmp706, c.11
	and r5,r17	 ;  tmp706, c.11
	and r6,r18	 ;  tmp706, c.11
	and r7,r19	 ;  tmp706, c.11
	or r8,r4	 ;  tmp707, tmp706
	or r9,r5	 ;  tmp707, tmp706
	or r10,r6	 ;  tmp707, tmp706
	or r11,r7	 ;  tmp707, tmp706
	add r20,r8	 ;  tmp708, tmp707
	adc r21,r9	 ;  tmp708, tmp707
	adc r22,r10	 ;  tmp708, tmp707
	adc r23,r11	 ;  tmp708, tmp707
	movw r8,r20	 ;  tmp709, tmp708
	movw r10,r22	 ;  tmp709, tmp708
	set
	bld __zero_reg__,7-1	 ; ,
	1:
	lsl r8	 ;  tmp709
	rol r9	 ;  tmp709
	rol r10	 ;  tmp709
	rol r11	 ;  tmp709
	lsr __zero_reg__	 ; 
	brne 1b
	movw r4,r20	 ;  a.9, tmp708
	movw r6,r22	 ;  a.9, tmp708
	ldi r20,25	 ; ,
	1:
	lsr r7	 ;  a.9
	ror r6	 ;  a.9
	ror r5	 ;  a.9
	ror r4	 ;  a.9
	dec r20	 ; 
	brne 1b
	or r4,r8	 ;  a.9, tmp709
	or r5,r9	 ;  a.9, tmp709
	or r6,r10	 ;  a.9, tmp709
	or r7,r11	 ;  a.9, tmp709
	add r4,r12	 ;  a.9, b.12
	adc r5,r13	 ;  a.9, b.12
	adc r6,r14	 ;  a.9, b.12
	adc r7,r15	 ;  a.9, b.12
	ldd r8,Z+52	 ; , MEM[(const md5_word_t *)data_6(D) + 52B]
	ldd r9,Z+53	 ; , MEM[(const md5_word_t *)data_6(D) + 52B]
	ldd r10,Z+54	 ; , MEM[(const md5_word_t *)data_6(D) + 52B]
	ldd r11,Z+55	 ; , MEM[(const md5_word_t *)data_6(D) + 52B]
	adiw r28,61-60	 ;  %sfp
	std Y+60,r8	 ; 
	std Y+61,r9	 ; 
	std Y+62,r10	 ; 
	std Y+63,r11	 ; 
	sbiw r28,61-60	 ;  %sfp
	movw r22,r10	 ;  tmp716,
	movw r20,r8	 ;  tmp716,
	subi r20,109	 ;  tmp716,
	sbci r21,-114	 ; ,
	sbci r22,103	 ; ,
	sbci r23,2	 ; ,
	add r20,r24	 ;  tmp716, d.10
	adc r21,r25	 ;  tmp716, d.10
	adc r22,r26	 ;  tmp716, d.10
	adc r23,r27	 ;  tmp716, d.10
	movw r26,r6	 ;  tmp715, a.9
	movw r24,r4	 ;  tmp715, a.9
	com r24	 ;  tmp715
	com r25	 ;  tmp715
	com r26	 ;  tmp715
	com r27	 ;  tmp715
	and r24,r16	 ;  tmp715, c.11
	and r25,r17	 ;  tmp715, c.11
	and r26,r18	 ;  tmp715, c.11
	and r27,r19	 ;  tmp715, c.11
	movw r10,r6	 ;  tmp714, a.9
	movw r8,r4	 ;  tmp714, a.9
	and r8,r12	 ;  tmp714, b.12
	and r9,r13	 ;  tmp714, b.12
	and r10,r14	 ;  tmp714, b.12
	and r11,r15	 ;  tmp714, b.12
	or r24,r8	 ;  tmp715, tmp714
	or r25,r9	 ;  tmp715, tmp714
	or r26,r10	 ;  tmp715, tmp714
	or r27,r11	 ;  tmp715, tmp714
	add r20,r24	 ;  tmp716, tmp715
	adc r21,r25	 ;  tmp716, tmp715
	adc r22,r26	 ;  tmp716, tmp715
	adc r23,r27	 ;  tmp716, tmp715
	movw r26,r22	 ;  tmp717, tmp716
	movw r24,r20	 ;  tmp717, tmp716
	mov r0,r23	 ; ,
	ldi r23,12	 ; ,
	1:
	lsl r24	 ;  tmp717
	rol r25	 ;  tmp717
	rol r26	 ;  tmp717
	rol r27	 ;  tmp717
	dec r23	 ; 
	brne 1b
	mov r23,r0	 ; ,
	mov r0,r19	 ; ,
	ldi r19,20	 ; ,
	1:
	lsr r23	 ;  d.10
	ror r22	 ;  d.10
	ror r21	 ;  d.10
	ror r20	 ;  d.10
	dec r19	 ; 
	brne 1b
	mov r19,r0	 ; ,
	or r20,r24	 ;  d.10, tmp717
	or r21,r25	 ;  d.10, tmp717
	or r22,r26	 ;  d.10, tmp717
	or r23,r27	 ;  d.10, tmp717
	add r20,r4	 ;  d.10, a.9
	adc r21,r5	 ;  d.10, a.9
	adc r22,r6	 ;  d.10, a.9
	adc r23,r7	 ;  d.10, a.9
	movw r8,r20	 ; , d.10
	movw r10,r22	 ; , d.10
	com r8	 ; 
	com r9	 ; 
	com r10	 ; 
	com r11	 ; 
	adiw r28,81-60	 ;  %sfp
	std Y+60,r8	 ; 
	std Y+61,r9	 ; 
	std Y+62,r10	 ; 
	std Y+63,r11	 ; 
	sbiw r28,81-60	 ;  %sfp
	ldd r24,Z+56	 ; , MEM[(const md5_word_t *)data_6(D) + 56B]
	ldd r25,Z+57	 ; , MEM[(const md5_word_t *)data_6(D) + 56B]
	ldd r26,Z+58	 ; , MEM[(const md5_word_t *)data_6(D) + 56B]
	ldd r27,Z+59	 ; , MEM[(const md5_word_t *)data_6(D) + 56B]
	adiw r28,65-60	 ;  %sfp
	std Y+60,r24	 ; 
	std Y+61,r25	 ; 
	std Y+62,r26	 ; 
	std Y+63,r27	 ; 
	sbiw r28,65-60	 ;  %sfp
	subi r24,114	 ;  tmp723,
	sbci r25,-68	 ; ,
	sbci r26,-122	 ; ,
	sbci r27,89	 ; ,
	add r24,r16	 ;  tmp723, c.11
	adc r25,r17	 ;  tmp723, c.11
	adc r26,r18	 ;  tmp723, c.11
	adc r27,r19	 ;  tmp723, c.11
	movw r18,r10	 ;  tmp722,
	movw r16,r8	 ;  tmp722,
	and r16,r12	 ;  tmp722, b.12
	and r17,r13	 ;  tmp722, b.12
	and r18,r14	 ;  tmp722, b.12
	and r19,r15	 ;  tmp722, b.12
	movw r8,r20	 ;  tmp721, d.10
	movw r10,r22	 ;  tmp721, d.10
	and r8,r4	 ;  tmp721, a.9
	and r9,r5	 ;  tmp721, a.9
	and r10,r6	 ;  tmp721, a.9
	and r11,r7	 ;  tmp721, a.9
	or r16,r8	 ;  tmp722, tmp721
	or r17,r9	 ;  tmp722, tmp721
	or r18,r10	 ;  tmp722, tmp721
	or r19,r11	 ;  tmp722, tmp721
	add r24,r16	 ;  tmp723, tmp722
	adc r25,r17	 ;  tmp723, tmp722
	adc r26,r18	 ;  tmp723, tmp722
	adc r27,r19	 ;  tmp723, tmp722
	movw r16,r24	 ;  tmp724, tmp723
	movw r18,r26	 ;  tmp724, tmp723
	mov r0,r31	 ; ,
	ldi r31,17	 ; ,
	1:
	lsl r16	 ;  tmp724
	rol r17	 ;  tmp724
	rol r18	 ;  tmp724
	rol r19	 ;  tmp724
	dec r31	 ; 
	brne 1b
	mov r31,r0	 ; ,
	mov r0,r23	 ; ,
	ldi r23,15	 ; ,
	1:
	lsr r27	 ;  c.11
	ror r26	 ;  c.11
	ror r25	 ;  c.11
	ror r24	 ;  c.11
	dec r23	 ; 
	brne 1b
	mov r23,r0	 ; ,
	or r24,r16	 ;  c.11, tmp724
	or r25,r17	 ;  c.11, tmp724
	or r26,r18	 ;  c.11, tmp724
	or r27,r19	 ;  c.11, tmp724
	add r24,r20	 ;  c.11, d.10
	adc r25,r21	 ;  c.11, d.10
	adc r26,r22	 ;  c.11, d.10
	adc r27,r23	 ;  c.11, d.10
	movw r8,r24	 ; , c.11
	movw r10,r26	 ; , c.11
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
	adiw r28,69-60	 ;  %sfp
	std Y+60,r16	 ; 
	std Y+61,r17	 ; 
	std Y+62,r18	 ; 
	std Y+63,r19	 ; 
	sbiw r28,69-60	 ;  %sfp
	subi r16,-33	 ;  tmp730,
	sbci r17,-9	 ; ,
	sbci r18,75	 ; ,
	sbci r19,-74	 ; ,
	add r16,r12	 ;  tmp730, b.12
	adc r17,r13	 ;  tmp730, b.12
	adc r18,r14	 ;  tmp730, b.12
	adc r19,r15	 ;  tmp730, b.12
	movw r14,r10	 ;  tmp729,
	movw r12,r8	 ;  tmp729,
	and r12,r4	 ;  tmp729, a.9
	and r13,r5	 ;  tmp729, a.9
	and r14,r6	 ;  tmp729, a.9
	and r15,r7	 ;  tmp729, a.9
	movw r8,r24	 ;  tmp728, c.11
	movw r10,r26	 ;  tmp728, c.11
	and r8,r20	 ;  tmp728, d.10
	and r9,r21	 ;  tmp728, d.10
	and r10,r22	 ;  tmp728, d.10
	and r11,r23	 ;  tmp728, d.10
	or r12,r8	 ;  tmp729, tmp728
	or r13,r9	 ;  tmp729, tmp728
	or r14,r10	 ;  tmp729, tmp728
	or r15,r11	 ;  tmp729, tmp728
	add r16,r12	 ;  tmp730, tmp729
	adc r17,r13	 ;  tmp730, tmp729
	adc r18,r14	 ;  tmp730, tmp729
	adc r19,r15	 ;  tmp730, tmp729
	movw r12,r16	 ;  tmp731, tmp730
	movw r14,r18	 ;  tmp731, tmp730
	ldi r30,22	 ; ,
	1:
	lsl r12	 ;  tmp731
	rol r13	 ;  tmp731
	rol r14	 ;  tmp731
	rol r15	 ;  tmp731
	dec r30	 ; 
	brne 1b
	ldi r31,10	 ; ,
	1:
	lsr r19	 ;  b.12
	ror r18	 ;  b.12
	ror r17	 ;  b.12
	ror r16	 ;  b.12
	dec r31	 ; 
	brne 1b
	or r16,r12	 ;  b.12, tmp731
	or r17,r13	 ;  b.12, tmp731
	or r18,r14	 ;  b.12, tmp731
	or r19,r15	 ;  b.12, tmp731
	add r16,r24	 ;  b.12, c.11
	adc r17,r25	 ;  b.12, c.11
	adc r18,r26	 ;  b.12, c.11
	adc r19,r27	 ;  b.12, c.11
	ldd r12,Y+13	 ;  tmp737, %sfp
	ldd r13,Y+14	 ;  tmp737, %sfp
	ldd r14,Y+15	 ;  tmp737, %sfp
	ldd r15,Y+16	 ;  tmp737, %sfp
	ldi r31,-98	 ; ,
	sub r12,r31	 ;  tmp737,
	ldi r31,-38	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,-31	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,9	 ; ,
	sbc r15,r31	 ; ,
	add r12,r4	 ;  tmp737, a.9
	adc r13,r5	 ;  tmp737, a.9
	adc r14,r6	 ;  tmp737, a.9
	adc r15,r7	 ;  tmp737, a.9
	movw r8,r16	 ;  tmp736, b.12
	movw r10,r18	 ;  tmp736, b.12
	and r8,r20	 ;  tmp736, d.10
	and r9,r21	 ;  tmp736, d.10
	and r10,r22	 ;  tmp736, d.10
	and r11,r23	 ;  tmp736, d.10
	adiw r28,81-60	 ;  %sfp
	ldd r4,Y+60	 ;  tmp735
	ldd r5,Y+61	 ;  tmp735
	ldd r6,Y+62	 ;  tmp735
	ldd r7,Y+63	 ;  tmp735
	sbiw r28,81-60	 ;  %sfp
	and r4,r24	 ;  tmp735, c.11
	and r5,r25	 ;  tmp735, c.11
	and r6,r26	 ;  tmp735, c.11
	and r7,r27	 ;  tmp735, c.11
	or r8,r4	 ;  tmp736, tmp735
	or r9,r5	 ;  tmp736, tmp735
	or r10,r6	 ;  tmp736, tmp735
	or r11,r7	 ;  tmp736, tmp735
	add r12,r8	 ;  tmp737, tmp736
	adc r13,r9	 ;  tmp737, tmp736
	adc r14,r10	 ;  tmp737, tmp736
	adc r15,r11	 ;  tmp737, tmp736
	movw r4,r12	 ;  a.13, tmp737
	movw r6,r14	 ;  a.13, tmp737
	ldi r30,5	 ; ,
	1:
	lsl r4	 ;  a.13
	rol r5	 ;  a.13
	rol r6	 ;  a.13
	rol r7	 ;  a.13
	dec r30	 ; 
	brne 1b
	ldi r31,27	 ; ,
	1:
	lsr r15	 ;  tmp740
	ror r14	 ;  tmp740
	ror r13	 ;  tmp740
	ror r12	 ;  tmp740
	dec r31	 ; 
	brne 1b
	or r4,r12	 ;  a.13, tmp740
	or r5,r13	 ;  a.13, tmp740
	or r6,r14	 ;  a.13, tmp740
	or r7,r15	 ;  a.13, tmp740
	add r4,r16	 ;  a.13, b.12
	adc r5,r17	 ;  a.13, b.12
	adc r6,r18	 ;  a.13, b.12
	adc r7,r19	 ;  a.13, b.12
	ldd r12,Y+33	 ;  tmp747, %sfp
	ldd r13,Y+34	 ;  tmp747, %sfp
	ldd r14,Y+35	 ;  tmp747, %sfp
	ldd r15,Y+36	 ;  tmp747, %sfp
	ldi r30,-64	 ; ,
	sub r12,r30	 ;  tmp747,
	ldi r30,76	 ; ,
	sbc r13,r30	 ; ,
	ldi r30,-65	 ; ,
	sbc r14,r30	 ; ,
	ldi r30,63	 ; ,
	sbc r15,r30	 ; ,
	add r12,r20	 ;  tmp747, d.10
	adc r13,r21	 ;  tmp747, d.10
	adc r14,r22	 ;  tmp747, d.10
	adc r15,r23	 ;  tmp747, d.10
	movw r22,r6	 ;  tmp746, a.13
	movw r20,r4	 ;  tmp746, a.13
	and r20,r24	 ;  tmp746, c.11
	and r21,r25	 ;  tmp746, c.11
	and r22,r26	 ;  tmp746, c.11
	and r23,r27	 ;  tmp746, c.11
	adiw r28,85-60	 ;  %sfp
	ldd r8,Y+60	 ;  tmp745
	ldd r9,Y+61	 ;  tmp745
	ldd r10,Y+62	 ;  tmp745
	ldd r11,Y+63	 ;  tmp745
	sbiw r28,85-60	 ;  %sfp
	and r8,r16	 ;  tmp745, b.12
	and r9,r17	 ;  tmp745, b.12
	and r10,r18	 ;  tmp745, b.12
	and r11,r19	 ;  tmp745, b.12
	or r20,r8	 ;  tmp746, tmp745
	or r21,r9	 ;  tmp746, tmp745
	or r22,r10	 ;  tmp746, tmp745
	or r23,r11	 ;  tmp746, tmp745
	add r12,r20	 ;  tmp747, tmp746
	adc r13,r21	 ;  tmp747, tmp746
	adc r14,r22	 ;  tmp747, tmp746
	adc r15,r23	 ;  tmp747, tmp746
	movw r8,r12	 ;  d.14, tmp747
	movw r10,r14	 ;  d.14, tmp747
	ldi r20,9	 ; ,
	1:
	lsl r8	 ;  d.14
	rol r9	 ;  d.14
	rol r10	 ;  d.14
	rol r11	 ;  d.14
	dec r20	 ; 
	brne 1b
	ldi r21,23	 ; ,
	1:
	lsr r15	 ;  tmp750
	ror r14	 ;  tmp750
	ror r13	 ;  tmp750
	ror r12	 ;  tmp750
	dec r21	 ; 
	brne 1b
	or r8,r12	 ;  d.14, tmp750
	or r9,r13	 ;  d.14, tmp750
	or r10,r14	 ;  d.14, tmp750
	or r11,r15	 ;  d.14, tmp750
	add r8,r4	 ;  d.14, a.13
	adc r9,r5	 ;  d.14, a.13
	adc r10,r6	 ;  d.14, a.13
	adc r11,r7	 ;  d.14, a.13
	ldd r20,Y+53	 ;  tmp758, %sfp
	ldd r21,Y+54	 ;  tmp758, %sfp
	ldd r22,Y+55	 ;  tmp758, %sfp
	ldd r23,Y+56	 ;  tmp758, %sfp
	subi r20,-81	 ;  tmp758,
	sbci r21,-91	 ; ,
	sbci r22,-95	 ; ,
	sbci r23,-39	 ; ,
	add r20,r24	 ;  tmp758, c.11
	adc r21,r25	 ;  tmp758, c.11
	adc r22,r26	 ;  tmp758, c.11
	adc r23,r27	 ;  tmp758, c.11
	movw r26,r10	 ;  tmp757, d.14
	movw r24,r8	 ;  tmp757, d.14
	and r24,r16	 ;  tmp757, b.12
	and r25,r17	 ;  tmp757, b.12
	and r26,r18	 ;  tmp757, b.12
	and r27,r19	 ;  tmp757, b.12
	movw r12,r16	 ;  tmp756, b.12
	movw r14,r18	 ;  tmp756, b.12
	com r12	 ;  tmp756
	com r13	 ;  tmp756
	com r14	 ;  tmp756
	com r15	 ;  tmp756
	and r12,r4	 ;  tmp756, a.13
	and r13,r5	 ;  tmp756, a.13
	and r14,r6	 ;  tmp756, a.13
	and r15,r7	 ;  tmp756, a.13
	or r24,r12	 ;  tmp757, tmp756
	or r25,r13	 ;  tmp757, tmp756
	or r26,r14	 ;  tmp757, tmp756
	or r27,r15	 ;  tmp757, tmp756
	add r20,r24	 ;  tmp758, tmp757
	adc r21,r25	 ;  tmp758, tmp757
	adc r22,r26	 ;  tmp758, tmp757
	adc r23,r27	 ;  tmp758, tmp757
	movw r12,r20	 ;  c.15, tmp758
	movw r14,r22	 ;  c.15, tmp758
	ldi r30,14	 ; ,
	1:
	lsl r12	 ;  c.15
	rol r13	 ;  c.15
	rol r14	 ;  c.15
	rol r15	 ;  c.15
	dec r30	 ; 
	brne 1b
	ldi r31,18	 ; ,
	1:
	lsr r23	 ;  tmp761
	ror r22	 ;  tmp761
	ror r21	 ;  tmp761
	ror r20	 ;  tmp761
	dec r31	 ; 
	brne 1b
	or r12,r20	 ;  c.15, tmp761
	or r13,r21	 ;  c.15, tmp761
	or r14,r22	 ;  c.15, tmp761
	or r15,r23	 ;  c.15, tmp761
	add r12,r8	 ;  c.15, d.14
	adc r13,r9	 ;  c.15, d.14
	adc r14,r10	 ;  c.15, d.14
	adc r15,r11	 ;  c.15, d.14
	ldd r24,Y+9	 ;  tmp769, %sfp
	ldd r25,Y+10	 ;  tmp769, %sfp
	ldd r26,Y+11	 ;  tmp769, %sfp
	ldd r27,Y+12	 ;  tmp769, %sfp
	subi r24,86	 ;  tmp769,
	sbci r25,56	 ; ,
	sbci r26,73	 ; ,
	sbci r27,22	 ; ,
	add r24,r16	 ;  tmp769, b.12
	adc r25,r17	 ;  tmp769, b.12
	adc r26,r18	 ;  tmp769, b.12
	adc r27,r19	 ;  tmp769, b.12
	movw r22,r14	 ;  tmp768, c.15
	movw r20,r12	 ;  tmp768, c.15
	and r20,r4	 ;  tmp768, a.13
	and r21,r5	 ;  tmp768, a.13
	and r22,r6	 ;  tmp768, a.13
	and r23,r7	 ;  tmp768, a.13
	movw r18,r6	 ;  tmp767, a.13
	movw r16,r4	 ;  tmp767, a.13
	com r16	 ;  tmp767
	com r17	 ;  tmp767
	com r18	 ;  tmp767
	com r19	 ;  tmp767
	and r16,r8	 ;  tmp767, d.14
	and r17,r9	 ;  tmp767, d.14
	and r18,r10	 ;  tmp767, d.14
	and r19,r11	 ;  tmp767, d.14
	or r20,r16	 ;  tmp768, tmp767
	or r21,r17	 ;  tmp768, tmp767
	or r22,r18	 ;  tmp768, tmp767
	or r23,r19	 ;  tmp768, tmp767
	add r24,r20	 ;  tmp769, tmp768
	adc r25,r21	 ;  tmp769, tmp768
	adc r26,r22	 ;  tmp769, tmp768
	adc r27,r23	 ;  tmp769, tmp768
	movw r16,r24	 ;  b.16, tmp769
	movw r18,r26	 ;  b.16, tmp769
	ldi r20,20	 ; ,
	1:
	lsl r16	 ;  b.16
	rol r17	 ;  b.16
	rol r18	 ;  b.16
	rol r19	 ;  b.16
	dec r20	 ; 
	brne 1b
	ldi r21,12	 ; ,
	1:
	lsr r27	 ;  tmp772
	ror r26	 ;  tmp772
	ror r25	 ;  tmp772
	ror r24	 ;  tmp772
	dec r21	 ; 
	brne 1b
	or r16,r24	 ;  b.16, tmp772
	or r17,r25	 ;  b.16, tmp772
	or r18,r26	 ;  b.16, tmp772
	or r19,r27	 ;  b.16, tmp772
	add r16,r12	 ;  b.16, c.15
	adc r17,r13	 ;  b.16, c.15
	adc r18,r14	 ;  b.16, c.15
	adc r19,r15	 ;  b.16, c.15
	ldd r24,Y+29	 ;  tmp780, %sfp
	ldd r25,Y+30	 ;  tmp780, %sfp
	ldd r26,Y+31	 ;  tmp780, %sfp
	ldd r27,Y+32	 ;  tmp780, %sfp
	subi r24,-93	 ;  tmp780,
	sbci r25,-17	 ; ,
	sbci r26,-48	 ; ,
	sbci r27,41	 ; ,
	add r24,r4	 ;  tmp780, a.13
	adc r25,r5	 ;  tmp780, a.13
	adc r26,r6	 ;  tmp780, a.13
	adc r27,r7	 ;  tmp780, a.13
	movw r22,r18	 ;  tmp779, b.16
	movw r20,r16	 ;  tmp779, b.16
	and r20,r8	 ;  tmp779, d.14
	and r21,r9	 ;  tmp779, d.14
	and r22,r10	 ;  tmp779, d.14
	and r23,r11	 ;  tmp779, d.14
	movw r4,r8	 ;  tmp778, d.14
	movw r6,r10	 ;  tmp778, d.14
	com r4	 ;  tmp778
	com r5	 ;  tmp778
	com r6	 ;  tmp778
	com r7	 ;  tmp778
	and r4,r12	 ;  tmp778, c.15
	and r5,r13	 ;  tmp778, c.15
	and r6,r14	 ;  tmp778, c.15
	and r7,r15	 ;  tmp778, c.15
	or r20,r4	 ;  tmp779, tmp778
	or r21,r5	 ;  tmp779, tmp778
	or r22,r6	 ;  tmp779, tmp778
	or r23,r7	 ;  tmp779, tmp778
	add r24,r20	 ;  tmp780, tmp779
	adc r25,r21	 ;  tmp780, tmp779
	adc r26,r22	 ;  tmp780, tmp779
	adc r27,r23	 ;  tmp780, tmp779
	movw r20,r24	 ;  tmp781, tmp780
	movw r22,r26	 ;  tmp781, tmp780
	ldi r30,5	 ; ,
	1:
	lsl r20	 ;  tmp781
	rol r21	 ;  tmp781
	rol r22	 ;  tmp781
	rol r23	 ;  tmp781
	dec r30	 ; 
	brne 1b
	movw r4,r24	 ;  a.13, tmp780
	movw r6,r26	 ;  a.13, tmp780
	ldi r31,27	 ; ,
	1:
	lsr r7	 ;  a.13
	ror r6	 ;  a.13
	ror r5	 ;  a.13
	ror r4	 ;  a.13
	dec r31	 ; 
	brne 1b
	or r4,r20	 ;  a.13, tmp781
	or r5,r21	 ;  a.13, tmp781
	or r6,r22	 ;  a.13, tmp781
	or r7,r23	 ;  a.13, tmp781
	add r4,r16	 ;  a.13, b.16
	adc r5,r17	 ;  a.13, b.16
	adc r6,r18	 ;  a.13, b.16
	adc r7,r19	 ;  a.13, b.16
	ldd r20,Y+49	 ;  tmp788, %sfp
	ldd r21,Y+50	 ;  tmp788, %sfp
	ldd r22,Y+51	 ;  tmp788, %sfp
	ldd r23,Y+52	 ;  tmp788, %sfp
	subi r20,-83	 ;  tmp788,
	sbci r21,-21	 ; ,
	sbci r22,-69	 ; ,
	sbci r23,-3	 ; ,
	add r20,r8	 ;  tmp788, d.14
	adc r21,r9	 ;  tmp788, d.14
	adc r22,r10	 ;  tmp788, d.14
	adc r23,r11	 ;  tmp788, d.14
	movw r26,r6	 ;  tmp787, a.13
	movw r24,r4	 ;  tmp787, a.13
	and r24,r12	 ;  tmp787, c.15
	and r25,r13	 ;  tmp787, c.15
	and r26,r14	 ;  tmp787, c.15
	and r27,r15	 ;  tmp787, c.15
	movw r8,r12	 ;  tmp786, c.15
	movw r10,r14	 ;  tmp786, c.15
	com r8	 ;  tmp786
	com r9	 ;  tmp786
	com r10	 ;  tmp786
	com r11	 ;  tmp786
	and r8,r16	 ;  tmp786, b.16
	and r9,r17	 ;  tmp786, b.16
	and r10,r18	 ;  tmp786, b.16
	and r11,r19	 ;  tmp786, b.16
	or r24,r8	 ;  tmp787, tmp786
	or r25,r9	 ;  tmp787, tmp786
	or r26,r10	 ;  tmp787, tmp786
	or r27,r11	 ;  tmp787, tmp786
	add r20,r24	 ;  tmp788, tmp787
	adc r21,r25	 ;  tmp788, tmp787
	adc r22,r26	 ;  tmp788, tmp787
	adc r23,r27	 ;  tmp788, tmp787
	movw r26,r22	 ;  tmp789, tmp788
	movw r24,r20	 ;  tmp789, tmp788
	ldi r30,9	 ; ,
	1:
	lsl r24	 ;  tmp789
	rol r25	 ;  tmp789
	rol r26	 ;  tmp789
	rol r27	 ;  tmp789
	dec r30	 ; 
	brne 1b
	ldi r31,23	 ; ,
	1:
	lsr r23	 ;  d.14
	ror r22	 ;  d.14
	ror r21	 ;  d.14
	ror r20	 ;  d.14
	dec r31	 ; 
	brne 1b
	or r20,r24	 ;  d.14, tmp789
	or r21,r25	 ;  d.14, tmp789
	or r22,r26	 ;  d.14, tmp789
	or r23,r27	 ;  d.14, tmp789
	add r20,r4	 ;  d.14, a.13
	adc r21,r5	 ;  d.14, a.13
	adc r22,r6	 ;  d.14, a.13
	adc r23,r7	 ;  d.14, a.13
	adiw r28,69-60	 ;  %sfp
	ldd r24,Y+60	 ;  tmp796
	ldd r25,Y+61	 ;  tmp796
	ldd r26,Y+62	 ;  tmp796
	ldd r27,Y+63	 ;  tmp796
	sbiw r28,69-60	 ;  %sfp
	subi r24,127	 ;  tmp796,
	sbci r25,25	 ; ,
	sbci r26,94	 ; ,
	sbci r27,39	 ; ,
	add r24,r12	 ;  tmp796, c.15
	adc r25,r13	 ;  tmp796, c.15
	adc r26,r14	 ;  tmp796, c.15
	adc r27,r15	 ;  tmp796, c.15
	movw r12,r20	 ;  tmp795, d.14
	movw r14,r22	 ;  tmp795, d.14
	and r12,r16	 ;  tmp795, b.16
	and r13,r17	 ;  tmp795, b.16
	and r14,r18	 ;  tmp795, b.16
	and r15,r19	 ;  tmp795, b.16
	movw r8,r16	 ;  tmp794, b.16
	movw r10,r18	 ;  tmp794, b.16
	com r8	 ;  tmp794
	com r9	 ;  tmp794
	com r10	 ;  tmp794
	com r11	 ;  tmp794
	and r8,r4	 ;  tmp794, a.13
	and r9,r5	 ;  tmp794, a.13
	and r10,r6	 ;  tmp794, a.13
	and r11,r7	 ;  tmp794, a.13
	or r12,r8	 ;  tmp795, tmp794
	or r13,r9	 ;  tmp795, tmp794
	or r14,r10	 ;  tmp795, tmp794
	or r15,r11	 ;  tmp795, tmp794
	add r24,r12	 ;  tmp796, tmp795
	adc r25,r13	 ;  tmp796, tmp795
	adc r26,r14	 ;  tmp796, tmp795
	adc r27,r15	 ;  tmp796, tmp795
	movw r12,r24	 ;  tmp797, tmp796
	movw r14,r26	 ;  tmp797, tmp796
	ldi r30,14	 ; ,
	1:
	lsl r12	 ;  tmp797
	rol r13	 ;  tmp797
	rol r14	 ;  tmp797
	rol r15	 ;  tmp797
	dec r30	 ; 
	brne 1b
	ldi r31,18	 ; ,
	1:
	lsr r27	 ;  c.15
	ror r26	 ;  c.15
	ror r25	 ;  c.15
	ror r24	 ;  c.15
	dec r31	 ; 
	brne 1b
	or r24,r12	 ;  c.15, tmp797
	or r25,r13	 ;  c.15, tmp797
	or r26,r14	 ;  c.15, tmp797
	or r27,r15	 ;  c.15, tmp797
	add r24,r20	 ;  c.15, d.14
	adc r25,r21	 ;  c.15, d.14
	adc r26,r22	 ;  c.15, d.14
	adc r27,r23	 ;  c.15, d.14
	ldd r8,Y+25	 ;  tmp804, %sfp
	ldd r9,Y+26	 ;  tmp804, %sfp
	ldd r10,Y+27	 ;  tmp804, %sfp
	ldd r11,Y+28	 ;  tmp804, %sfp
	ldi r31,56	 ; ,
	sub r8,r31	 ;  tmp804,
	ldi r31,4	 ; ,
	sbc r9,r31	 ; ,
	ldi r31,44	 ; ,
	sbc r10,r31	 ; ,
	ldi r31,24	 ; ,
	sbc r11,r31	 ; ,
	add r8,r16	 ;  tmp804, b.16
	adc r9,r17	 ;  tmp804, b.16
	adc r10,r18	 ;  tmp804, b.16
	adc r11,r19	 ;  tmp804, b.16
	movw r16,r24	 ;  tmp803, c.15
	movw r18,r26	 ;  tmp803, c.15
	and r16,r4	 ;  tmp803, a.13
	and r17,r5	 ;  tmp803, a.13
	and r18,r6	 ;  tmp803, a.13
	and r19,r7	 ;  tmp803, a.13
	movw r14,r6	 ;  tmp802, a.13
	movw r12,r4	 ;  tmp802, a.13
	com r12	 ;  tmp802
	com r13	 ;  tmp802
	com r14	 ;  tmp802
	com r15	 ;  tmp802
	and r12,r20	 ;  tmp802, d.14
	and r13,r21	 ;  tmp802, d.14
	and r14,r22	 ;  tmp802, d.14
	and r15,r23	 ;  tmp802, d.14
	or r16,r12	 ;  tmp803, tmp802
	or r17,r13	 ;  tmp803, tmp802
	or r18,r14	 ;  tmp803, tmp802
	or r19,r15	 ;  tmp803, tmp802
	add r8,r16	 ;  tmp804, tmp803
	adc r9,r17	 ;  tmp804, tmp803
	adc r10,r18	 ;  tmp804, tmp803
	adc r11,r19	 ;  tmp804, tmp803
	movw r18,r10	 ;  tmp805, tmp804
	movw r16,r8	 ;  tmp805, tmp804
	ldi r30,20	 ; ,
	1:
	lsl r16	 ;  tmp805
	rol r17	 ;  tmp805
	rol r18	 ;  tmp805
	rol r19	 ;  tmp805
	dec r30	 ; 
	brne 1b
	ldi r31,12	 ; ,
	1:
	lsr r11	 ;  b.16
	ror r10	 ;  b.16
	ror r9	 ;  b.16
	ror r8	 ;  b.16
	dec r31	 ; 
	brne 1b
	or r8,r16	 ;  b.16, tmp805
	or r9,r17	 ;  b.16, tmp805
	or r10,r18	 ;  b.16, tmp805
	or r11,r19	 ;  b.16, tmp805
	add r8,r24	 ;  b.16, c.15
	adc r9,r25	 ;  b.16, c.15
	adc r10,r26	 ;  b.16, c.15
	adc r11,r27	 ;  b.16, c.15
	ldd r12,Y+45	 ;  tmp812, %sfp
	ldd r13,Y+46	 ;  tmp812, %sfp
	ldd r14,Y+47	 ;  tmp812, %sfp
	ldd r15,Y+48	 ;  tmp812, %sfp
	ldi r16,26	 ; ,
	sub r12,r16	 ;  tmp812,
	ldi r16,50	 ; ,
	sbc r13,r16	 ; ,
	ldi r16,30	 ; ,
	sbc r14,r16	 ; ,
	ldi r16,-34	 ; ,
	sbc r15,r16	 ; ,
	add r12,r4	 ;  tmp812, a.13
	adc r13,r5	 ;  tmp812, a.13
	adc r14,r6	 ;  tmp812, a.13
	adc r15,r7	 ;  tmp812, a.13
	movw r18,r10	 ;  tmp811, b.16
	movw r16,r8	 ;  tmp811, b.16
	and r16,r20	 ;  tmp811, d.14
	and r17,r21	 ;  tmp811, d.14
	and r18,r22	 ;  tmp811, d.14
	and r19,r23	 ;  tmp811, d.14
	movw r4,r20	 ;  tmp810, d.14
	movw r6,r22	 ;  tmp810, d.14
	com r4	 ;  tmp810
	com r5	 ;  tmp810
	com r6	 ;  tmp810
	com r7	 ;  tmp810
	and r4,r24	 ;  tmp810, c.15
	and r5,r25	 ;  tmp810, c.15
	and r6,r26	 ;  tmp810, c.15
	and r7,r27	 ;  tmp810, c.15
	or r16,r4	 ;  tmp811, tmp810
	or r17,r5	 ;  tmp811, tmp810
	or r18,r6	 ;  tmp811, tmp810
	or r19,r7	 ;  tmp811, tmp810
	add r12,r16	 ;  tmp812, tmp811
	adc r13,r17	 ;  tmp812, tmp811
	adc r14,r18	 ;  tmp812, tmp811
	adc r15,r19	 ;  tmp812, tmp811
	movw r18,r14	 ;  tmp813, tmp812
	movw r16,r12	 ;  tmp813, tmp812
	ldi r30,5	 ; ,
	1:
	lsl r16	 ;  tmp813
	rol r17	 ;  tmp813
	rol r18	 ;  tmp813
	rol r19	 ;  tmp813
	dec r30	 ; 
	brne 1b
	ldi r31,27	 ; ,
	1:
	lsr r15	 ;  a.13
	ror r14	 ;  a.13
	ror r13	 ;  a.13
	ror r12	 ;  a.13
	dec r31	 ; 
	brne 1b
	or r12,r16	 ;  a.13, tmp813
	or r13,r17	 ;  a.13, tmp813
	or r14,r18	 ;  a.13, tmp813
	or r15,r19	 ;  a.13, tmp813
	add r12,r8	 ;  a.13, b.16
	adc r13,r9	 ;  a.13, b.16
	adc r14,r10	 ;  a.13, b.16
	adc r15,r11	 ;  a.13, b.16
	adiw r28,65-60	 ;  %sfp
	ldd r16,Y+60	 ;  tmp820
	ldd r17,Y+61	 ;  tmp820
	ldd r18,Y+62	 ;  tmp820
	ldd r19,Y+63	 ;  tmp820
	sbiw r28,65-60	 ;  %sfp
	subi r16,42	 ;  tmp820,
	sbci r17,-8	 ; ,
	sbci r18,-56	 ; ,
	sbci r19,60	 ; ,
	add r16,r20	 ;  tmp820, d.14
	adc r17,r21	 ;  tmp820, d.14
	adc r18,r22	 ;  tmp820, d.14
	adc r19,r23	 ;  tmp820, d.14
	movw r22,r14	 ;  tmp819, a.13
	movw r20,r12	 ;  tmp819, a.13
	and r20,r24	 ;  tmp819, c.15
	and r21,r25	 ;  tmp819, c.15
	and r22,r26	 ;  tmp819, c.15
	and r23,r27	 ;  tmp819, c.15
	movw r4,r24	 ;  tmp818, c.15
	movw r6,r26	 ;  tmp818, c.15
	com r4	 ;  tmp818
	com r5	 ;  tmp818
	com r6	 ;  tmp818
	com r7	 ;  tmp818
	and r4,r8	 ;  tmp818, b.16
	and r5,r9	 ;  tmp818, b.16
	and r6,r10	 ;  tmp818, b.16
	and r7,r11	 ;  tmp818, b.16
	or r20,r4	 ;  tmp819, tmp818
	or r21,r5	 ;  tmp819, tmp818
	or r22,r6	 ;  tmp819, tmp818
	or r23,r7	 ;  tmp819, tmp818
	add r16,r20	 ;  tmp820, tmp819
	adc r17,r21	 ;  tmp820, tmp819
	adc r18,r22	 ;  tmp820, tmp819
	adc r19,r23	 ;  tmp820, tmp819
	movw r22,r18	 ;  tmp821, tmp820
	movw r20,r16	 ;  tmp821, tmp820
	ldi r30,9	 ; ,
	1:
	lsl r20	 ;  tmp821
	rol r21	 ;  tmp821
	rol r22	 ;  tmp821
	rol r23	 ;  tmp821
	dec r30	 ; 
	brne 1b
	ldi r31,23	 ; ,
	1:
	lsr r19	 ;  d.14
	ror r18	 ;  d.14
	ror r17	 ;  d.14
	ror r16	 ;  d.14
	dec r31	 ; 
	brne 1b
	or r16,r20	 ;  d.14, tmp821
	or r17,r21	 ;  d.14, tmp821
	or r18,r22	 ;  d.14, tmp821
	or r19,r23	 ;  d.14, tmp821
	add r16,r12	 ;  d.14, a.13
	adc r17,r13	 ;  d.14, a.13
	adc r18,r14	 ;  d.14, a.13
	adc r19,r15	 ;  d.14, a.13
	ldd r4,Y+21	 ;  tmp828, %sfp
	ldd r5,Y+22	 ;  tmp828, %sfp
	ldd r6,Y+23	 ;  tmp828, %sfp
	ldd r7,Y+24	 ;  tmp828, %sfp
	ldi r20,121	 ; ,
	sub r4,r20	 ;  tmp828,
	ldi r20,-14	 ; ,
	sbc r5,r20	 ; ,
	ldi r20,42	 ; ,
	sbc r6,r20	 ; ,
	ldi r20,11	 ; ,
	sbc r7,r20	 ; ,
	add r4,r24	 ;  tmp828, c.15
	adc r5,r25	 ;  tmp828, c.15
	adc r6,r26	 ;  tmp828, c.15
	adc r7,r27	 ;  tmp828, c.15
	movw r26,r18	 ;  tmp827, d.14
	movw r24,r16	 ;  tmp827, d.14
	and r24,r8	 ;  tmp827, b.16
	and r25,r9	 ;  tmp827, b.16
	and r26,r10	 ;  tmp827, b.16
	and r27,r11	 ;  tmp827, b.16
	movw r22,r10	 ;  tmp826, b.16
	movw r20,r8	 ;  tmp826, b.16
	com r20	 ;  tmp826
	com r21	 ;  tmp826
	com r22	 ;  tmp826
	com r23	 ;  tmp826
	and r20,r12	 ;  tmp826, a.13
	and r21,r13	 ;  tmp826, a.13
	and r22,r14	 ;  tmp826, a.13
	and r23,r15	 ;  tmp826, a.13
	or r24,r20	 ;  tmp827, tmp826
	or r25,r21	 ;  tmp827, tmp826
	or r26,r22	 ;  tmp827, tmp826
	or r27,r23	 ;  tmp827, tmp826
	add r4,r24	 ;  tmp828, tmp827
	adc r5,r25	 ;  tmp828, tmp827
	adc r6,r26	 ;  tmp828, tmp827
	adc r7,r27	 ;  tmp828, tmp827
	movw r26,r6	 ;  tmp829, tmp828
	movw r24,r4	 ;  tmp829, tmp828
	ldi r20,14	 ; ,
	1:
	lsl r24	 ;  tmp829
	rol r25	 ;  tmp829
	rol r26	 ;  tmp829
	rol r27	 ;  tmp829
	dec r20	 ; 
	brne 1b
	ldi r21,18	 ; ,
	1:
	lsr r7	 ;  c.15
	ror r6	 ;  c.15
	ror r5	 ;  c.15
	ror r4	 ;  c.15
	dec r21	 ; 
	brne 1b
	or r4,r24	 ;  c.15, tmp829
	or r5,r25	 ;  c.15, tmp829
	or r6,r26	 ;  c.15, tmp829
	or r7,r27	 ;  c.15, tmp829
	add r4,r16	 ;  c.15, d.14
	adc r5,r17	 ;  c.15, d.14
	adc r6,r18	 ;  c.15, d.14
	adc r7,r19	 ;  c.15, d.14
	ldd r20,Y+41	 ;  tmp836, %sfp
	ldd r21,Y+42	 ;  tmp836, %sfp
	ldd r22,Y+43	 ;  tmp836, %sfp
	ldd r23,Y+44	 ;  tmp836, %sfp
	subi r20,19	 ;  tmp836,
	sbci r21,-21	 ; ,
	sbci r22,-91	 ; ,
	sbci r23,-70	 ; ,
	add r20,r8	 ;  tmp836, b.16
	adc r21,r9	 ;  tmp836, b.16
	adc r22,r10	 ;  tmp836, b.16
	adc r23,r11	 ;  tmp836, b.16
	movw r26,r6	 ;  tmp835, c.15
	movw r24,r4	 ;  tmp835, c.15
	and r24,r12	 ;  tmp835, a.13
	and r25,r13	 ;  tmp835, a.13
	and r26,r14	 ;  tmp835, a.13
	and r27,r15	 ;  tmp835, a.13
	movw r8,r12	 ;  tmp834, a.13
	movw r10,r14	 ;  tmp834, a.13
	com r8	 ;  tmp834
	com r9	 ;  tmp834
	com r10	 ;  tmp834
	com r11	 ;  tmp834
	and r8,r16	 ;  tmp834, d.14
	and r9,r17	 ;  tmp834, d.14
	and r10,r18	 ;  tmp834, d.14
	and r11,r19	 ;  tmp834, d.14
	or r24,r8	 ;  tmp835, tmp834
	or r25,r9	 ;  tmp835, tmp834
	or r26,r10	 ;  tmp835, tmp834
	or r27,r11	 ;  tmp835, tmp834
	add r20,r24	 ;  tmp836, tmp835
	adc r21,r25	 ;  tmp836, tmp835
	adc r22,r26	 ;  tmp836, tmp835
	adc r23,r27	 ;  tmp836, tmp835
	movw r26,r22	 ;  tmp837, tmp836
	movw r24,r20	 ;  tmp837, tmp836
	ldi r30,20	 ; ,
	1:
	lsl r24	 ;  tmp837
	rol r25	 ;  tmp837
	rol r26	 ;  tmp837
	rol r27	 ;  tmp837
	dec r30	 ; 
	brne 1b
	ldi r31,12	 ; ,
	1:
	lsr r23	 ;  b.16
	ror r22	 ;  b.16
	ror r21	 ;  b.16
	ror r20	 ;  b.16
	dec r31	 ; 
	brne 1b
	or r20,r24	 ;  b.16, tmp837
	or r21,r25	 ;  b.16, tmp837
	or r22,r26	 ;  b.16, tmp837
	or r23,r27	 ;  b.16, tmp837
	add r20,r4	 ;  b.16, c.15
	adc r21,r5	 ;  b.16, c.15
	adc r22,r6	 ;  b.16, c.15
	adc r23,r7	 ;  b.16, c.15
	adiw r28,61-60	 ;  %sfp
	ldd r24,Y+60	 ;  tmp844
	ldd r25,Y+61	 ;  tmp844
	ldd r26,Y+62	 ;  tmp844
	ldd r27,Y+63	 ;  tmp844
	sbiw r28,61-60	 ;  %sfp
	subi r24,-5	 ;  tmp844,
	sbci r25,22	 ; ,
	sbci r26,28	 ; ,
	sbci r27,86	 ; ,
	add r24,r12	 ;  tmp844, a.13
	adc r25,r13	 ;  tmp844, a.13
	adc r26,r14	 ;  tmp844, a.13
	adc r27,r15	 ;  tmp844, a.13
	movw r12,r20	 ;  tmp843, b.16
	movw r14,r22	 ;  tmp843, b.16
	and r12,r16	 ;  tmp843, d.14
	and r13,r17	 ;  tmp843, d.14
	and r14,r18	 ;  tmp843, d.14
	and r15,r19	 ;  tmp843, d.14
	movw r8,r16	 ;  tmp842, d.14
	movw r10,r18	 ;  tmp842, d.14
	com r8	 ;  tmp842
	com r9	 ;  tmp842
	com r10	 ;  tmp842
	com r11	 ;  tmp842
	and r8,r4	 ;  tmp842, c.15
	and r9,r5	 ;  tmp842, c.15
	and r10,r6	 ;  tmp842, c.15
	and r11,r7	 ;  tmp842, c.15
	or r12,r8	 ;  tmp843, tmp842
	or r13,r9	 ;  tmp843, tmp842
	or r14,r10	 ;  tmp843, tmp842
	or r15,r11	 ;  tmp843, tmp842
	add r24,r12	 ;  tmp844, tmp843
	adc r25,r13	 ;  tmp844, tmp843
	adc r26,r14	 ;  tmp844, tmp843
	adc r27,r15	 ;  tmp844, tmp843
	movw r12,r24	 ;  tmp845, tmp844
	movw r14,r26	 ;  tmp845, tmp844
	ldi r30,5	 ; ,
	1:
	lsl r12	 ;  tmp845
	rol r13	 ;  tmp845
	rol r14	 ;  tmp845
	rol r15	 ;  tmp845
	dec r30	 ; 
	brne 1b
	ldi r31,27	 ; ,
	1:
	lsr r27	 ;  a.13
	ror r26	 ;  a.13
	ror r25	 ;  a.13
	ror r24	 ;  a.13
	dec r31	 ; 
	brne 1b
	or r24,r12	 ;  a.13, tmp845
	or r25,r13	 ;  a.13, tmp845
	or r26,r14	 ;  a.13, tmp845
	or r27,r15	 ;  a.13, tmp845
	add r24,r20	 ;  a.13, b.16
	adc r25,r21	 ;  a.13, b.16
	adc r26,r22	 ;  a.13, b.16
	adc r27,r23	 ;  a.13, b.16
	ldd r12,Y+17	 ;  tmp852, %sfp
	ldd r13,Y+18	 ;  tmp852, %sfp
	ldd r14,Y+19	 ;  tmp852, %sfp
	ldd r15,Y+20	 ;  tmp852, %sfp
	ldi r30,8	 ; ,
	sub r12,r30	 ;  tmp852,
	ldi r30,92	 ; ,
	sbc r13,r30	 ; ,
	ldi r30,16	 ; ,
	sbc r14,r30	 ; ,
	ldi r30,3	 ; ,
	sbc r15,r30	 ; ,
	add r12,r16	 ;  tmp852, d.14
	adc r13,r17	 ;  tmp852, d.14
	adc r14,r18	 ;  tmp852, d.14
	adc r15,r19	 ;  tmp852, d.14
	movw r16,r24	 ;  tmp851, a.13
	movw r18,r26	 ;  tmp851, a.13
	and r16,r4	 ;  tmp851, c.15
	and r17,r5	 ;  tmp851, c.15
	and r18,r6	 ;  tmp851, c.15
	and r19,r7	 ;  tmp851, c.15
	movw r10,r6	 ;  tmp850, c.15
	movw r8,r4	 ;  tmp850, c.15
	com r8	 ;  tmp850
	com r9	 ;  tmp850
	com r10	 ;  tmp850
	com r11	 ;  tmp850
	and r8,r20	 ;  tmp850, b.16
	and r9,r21	 ;  tmp850, b.16
	and r10,r22	 ;  tmp850, b.16
	and r11,r23	 ;  tmp850, b.16
	or r16,r8	 ;  tmp851, tmp850
	or r17,r9	 ;  tmp851, tmp850
	or r18,r10	 ;  tmp851, tmp850
	or r19,r11	 ;  tmp851, tmp850
	add r12,r16	 ;  tmp852, tmp851
	adc r13,r17	 ;  tmp852, tmp851
	adc r14,r18	 ;  tmp852, tmp851
	adc r15,r19	 ;  tmp852, tmp851
	movw r18,r14	 ;  tmp853, tmp852
	movw r16,r12	 ;  tmp853, tmp852
	ldi r30,9	 ; ,
	1:
	lsl r16	 ;  tmp853
	rol r17	 ;  tmp853
	rol r18	 ;  tmp853
	rol r19	 ;  tmp853
	dec r30	 ; 
	brne 1b
	ldi r31,23	 ; ,
	1:
	lsr r15	 ;  d.14
	ror r14	 ;  d.14
	ror r13	 ;  d.14
	ror r12	 ;  d.14
	dec r31	 ; 
	brne 1b
	or r12,r16	 ;  d.14, tmp853
	or r13,r17	 ;  d.14, tmp853
	or r14,r18	 ;  d.14, tmp853
	or r15,r19	 ;  d.14, tmp853
	add r12,r24	 ;  d.14, a.13
	adc r13,r25	 ;  d.14, a.13
	adc r14,r26	 ;  d.14, a.13
	adc r15,r27	 ;  d.14, a.13
	ldd r16,Y+37	 ;  tmp860, %sfp
	ldd r17,Y+38	 ;  tmp860, %sfp
	ldd r18,Y+39	 ;  tmp860, %sfp
	ldd r19,Y+40	 ;  tmp860, %sfp
	subi r16,39	 ;  tmp860,
	sbci r17,-3	 ; ,
	sbci r18,-112	 ; ,
	sbci r19,-104	 ; ,
	add r16,r4	 ;  tmp860, c.15
	adc r17,r5	 ;  tmp860, c.15
	adc r18,r6	 ;  tmp860, c.15
	adc r19,r7	 ;  tmp860, c.15
	movw r8,r12	 ;  tmp859, d.14
	movw r10,r14	 ;  tmp859, d.14
	and r8,r20	 ;  tmp859, b.16
	and r9,r21	 ;  tmp859, b.16
	and r10,r22	 ;  tmp859, b.16
	and r11,r23	 ;  tmp859, b.16
	movw r4,r20	 ;  tmp858, b.16
	movw r6,r22	 ;  tmp858, b.16
	com r4	 ;  tmp858
	com r5	 ;  tmp858
	com r6	 ;  tmp858
	com r7	 ;  tmp858
	and r4,r24	 ;  tmp858, a.13
	and r5,r25	 ;  tmp858, a.13
	and r6,r26	 ;  tmp858, a.13
	and r7,r27	 ;  tmp858, a.13
	or r8,r4	 ;  tmp859, tmp858
	or r9,r5	 ;  tmp859, tmp858
	or r10,r6	 ;  tmp859, tmp858
	or r11,r7	 ;  tmp859, tmp858
	add r16,r8	 ;  tmp860, tmp859
	adc r17,r9	 ;  tmp860, tmp859
	adc r18,r10	 ;  tmp860, tmp859
	adc r19,r11	 ;  tmp860, tmp859
	movw r8,r16	 ;  tmp861, tmp860
	movw r10,r18	 ;  tmp861, tmp860
	ldi r30,14	 ; ,
	1:
	lsl r8	 ;  tmp861
	rol r9	 ;  tmp861
	rol r10	 ;  tmp861
	rol r11	 ;  tmp861
	dec r30	 ; 
	brne 1b
	ldi r31,18	 ; ,
	1:
	lsr r19	 ;  c.15
	ror r18	 ;  c.15
	ror r17	 ;  c.15
	ror r16	 ;  c.15
	dec r31	 ; 
	brne 1b
	or r16,r8	 ;  c.15, tmp861
	or r17,r9	 ;  c.15, tmp861
	or r18,r10	 ;  c.15, tmp861
	or r19,r11	 ;  c.15, tmp861
	add r16,r12	 ;  c.15, d.14
	adc r17,r13	 ;  c.15, d.14
	adc r18,r14	 ;  c.15, d.14
	adc r19,r15	 ;  c.15, d.14
	ldd r8,Y+57	 ;  tmp868, %sfp
	ldd r9,Y+58	 ;  tmp868, %sfp
	ldd r10,Y+59	 ;  tmp868, %sfp
	ldd r11,Y+60	 ;  tmp868, %sfp
	ldi r31,118	 ; ,
	sub r8,r31	 ;  tmp868,
	ldi r31,-77	 ; ,
	sbc r9,r31	 ; ,
	ldi r31,-43	 ; ,
	sbc r10,r31	 ; ,
	ldi r31,114	 ; ,
	sbc r11,r31	 ; ,
	add r8,r20	 ;  tmp868, b.16
	adc r9,r21	 ;  tmp868, b.16
	adc r10,r22	 ;  tmp868, b.16
	adc r11,r23	 ;  tmp868, b.16
	movw r22,r18	 ;  tmp867, c.15
	movw r20,r16	 ;  tmp867, c.15
	and r20,r24	 ;  tmp867, a.13
	and r21,r25	 ;  tmp867, a.13
	and r22,r26	 ;  tmp867, a.13
	and r23,r27	 ;  tmp867, a.13
	movw r4,r24	 ;  tmp866, a.13
	movw r6,r26	 ;  tmp866, a.13
	com r4	 ;  tmp866
	com r5	 ;  tmp866
	com r6	 ;  tmp866
	com r7	 ;  tmp866
	and r4,r12	 ;  tmp866, d.14
	and r5,r13	 ;  tmp866, d.14
	and r6,r14	 ;  tmp866, d.14
	and r7,r15	 ;  tmp866, d.14
	or r20,r4	 ;  tmp867, tmp866
	or r21,r5	 ;  tmp867, tmp866
	or r22,r6	 ;  tmp867, tmp866
	or r23,r7	 ;  tmp867, tmp866
	add r8,r20	 ;  tmp868, tmp867
	adc r9,r21	 ;  tmp868, tmp867
	adc r10,r22	 ;  tmp868, tmp867
	adc r11,r23	 ;  tmp868, tmp867
	movw r22,r10	 ;  tmp869, tmp868
	movw r20,r8	 ;  tmp869, tmp868
	ldi r30,20	 ; ,
	1:
	lsl r20	 ;  tmp869
	rol r21	 ;  tmp869
	rol r22	 ;  tmp869
	rol r23	 ;  tmp869
	dec r30	 ; 
	brne 1b
	ldi r31,12	 ; ,
	1:
	lsr r11	 ;  b.16
	ror r10	 ;  b.16
	ror r9	 ;  b.16
	ror r8	 ;  b.16
	dec r31	 ; 
	brne 1b
	or r8,r20	 ;  b.16, tmp869
	or r9,r21	 ;  b.16, tmp869
	or r10,r22	 ;  b.16, tmp869
	or r11,r23	 ;  b.16, tmp869
	add r8,r16	 ;  b.16, c.15
	adc r9,r17	 ;  b.16, c.15
	adc r10,r18	 ;  b.16, c.15
	adc r11,r19	 ;  b.16, c.15
	ldd r20,Y+29	 ;  tmp874, %sfp
	ldd r21,Y+30	 ;  tmp874, %sfp
	ldd r22,Y+31	 ;  tmp874, %sfp
	ldd r23,Y+32	 ;  tmp874, %sfp
	subi r20,-66	 ;  tmp874,
	sbci r21,-58	 ; ,
	sbci r22,5	 ; ,
	sbc r23,__zero_reg__	 ; 
	add r20,r24	 ;  tmp874, a.13
	adc r21,r25	 ;  tmp874, a.13
	adc r22,r26	 ;  tmp874, a.13
	adc r23,r27	 ;  tmp874, a.13
	movw r26,r18	 ;  tmp873, c.15
	movw r24,r16	 ;  tmp873, c.15
	eor r24,r12	 ;  tmp873, d.14
	eor r25,r13	 ;  tmp873, d.14
	eor r26,r14	 ;  tmp873, d.14
	eor r27,r15	 ;  tmp873, d.14
	eor r24,r8	 ;  tmp873, b.16
	eor r25,r9	 ;  tmp873, b.16
	eor r26,r10	 ;  tmp873, b.16
	eor r27,r11	 ;  tmp873, b.16
	add r20,r24	 ;  tmp874, tmp873
	adc r21,r25	 ;  tmp874, tmp873
	adc r22,r26	 ;  tmp874, tmp873
	adc r23,r27	 ;  tmp874, tmp873
	movw r26,r22	 ;  a.17, tmp874
	movw r24,r20	 ;  a.17, tmp874
	ldi r30,4	 ; ,
	1:
	lsl r24	 ;  a.17
	rol r25	 ;  a.17
	rol r26	 ;  a.17
	rol r27	 ;  a.17
	dec r30	 ; 
	brne 1b
	ldi r31,28	 ; ,
	1:
	lsr r23	 ;  tmp877
	ror r22	 ;  tmp877
	ror r21	 ;  tmp877
	ror r20	 ;  tmp877
	dec r31	 ; 
	brne 1b
	or r24,r20	 ;  a.17, tmp877
	or r25,r21	 ;  a.17, tmp877
	or r26,r22	 ;  a.17, tmp877
	or r27,r23	 ;  a.17, tmp877
	add r24,r8	 ;  a.17, b.16
	adc r25,r9	 ;  a.17, b.16
	adc r26,r10	 ;  a.17, b.16
	adc r27,r11	 ;  a.17, b.16
	ldd r20,Y+41	 ;  tmp883, %sfp
	ldd r21,Y+42	 ;  tmp883, %sfp
	ldd r22,Y+43	 ;  tmp883, %sfp
	ldd r23,Y+44	 ;  tmp883, %sfp
	subi r20,127	 ;  tmp883,
	sbci r21,9	 ; ,
	sbci r22,-114	 ; ,
	sbci r23,120	 ; ,
	add r20,r12	 ;  tmp883, d.14
	adc r21,r13	 ;  tmp883, d.14
	adc r22,r14	 ;  tmp883, d.14
	adc r23,r15	 ;  tmp883, d.14
	movw r14,r10	 ;  tmp882, b.16
	movw r12,r8	 ;  tmp882, b.16
	eor r12,r16	 ;  tmp882, c.15
	eor r13,r17	 ;  tmp882, c.15
	eor r14,r18	 ;  tmp882, c.15
	eor r15,r19	 ;  tmp882, c.15
	eor r12,r24	 ;  tmp882, a.17
	eor r13,r25	 ;  tmp882, a.17
	eor r14,r26	 ;  tmp882, a.17
	eor r15,r27	 ;  tmp882, a.17
	add r20,r12	 ;  tmp883, tmp882
	adc r21,r13	 ;  tmp883, tmp882
	adc r22,r14	 ;  tmp883, tmp882
	adc r23,r15	 ;  tmp883, tmp882
	movw r12,r20	 ;  d.18, tmp883
	movw r14,r22	 ;  d.18, tmp883
	ldi r30,11	 ; ,
	1:
	lsl r12	 ;  d.18
	rol r13	 ;  d.18
	rol r14	 ;  d.18
	rol r15	 ;  d.18
	dec r30	 ; 
	brne 1b
	ldi r31,21	 ; ,
	1:
	lsr r23	 ;  tmp886
	ror r22	 ;  tmp886
	ror r21	 ;  tmp886
	ror r20	 ;  tmp886
	dec r31	 ; 
	brne 1b
	or r12,r20	 ;  d.18, tmp886
	or r13,r21	 ;  d.18, tmp886
	or r14,r22	 ;  d.18, tmp886
	or r15,r23	 ;  d.18, tmp886
	add r12,r24	 ;  d.18, a.17
	adc r13,r25	 ;  d.18, a.17
	adc r14,r26	 ;  d.18, a.17
	adc r15,r27	 ;  d.18, a.17
	ldd r20,Y+53	 ;  tmp892, %sfp
	ldd r21,Y+54	 ;  tmp892, %sfp
	ldd r22,Y+55	 ;  tmp892, %sfp
	ldd r23,Y+56	 ;  tmp892, %sfp
	subi r20,-34	 ;  tmp892,
	sbci r21,-98	 ; ,
	sbci r22,98	 ; ,
	sbci r23,-110	 ; ,
	add r20,r16	 ;  tmp892, c.15
	adc r21,r17	 ;  tmp892, c.15
	adc r22,r18	 ;  tmp892, c.15
	adc r23,r19	 ;  tmp892, c.15
	movw r16,r24	 ;  tmp891, a.17
	movw r18,r26	 ;  tmp891, a.17
	eor r16,r8	 ;  tmp891, b.16
	eor r17,r9	 ;  tmp891, b.16
	eor r18,r10	 ;  tmp891, b.16
	eor r19,r11	 ;  tmp891, b.16
	eor r16,r12	 ;  tmp891, d.18
	eor r17,r13	 ;  tmp891, d.18
	eor r18,r14	 ;  tmp891, d.18
	eor r19,r15	 ;  tmp891, d.18
	add r20,r16	 ;  tmp892, tmp891
	adc r21,r17	 ;  tmp892, tmp891
	adc r22,r18	 ;  tmp892, tmp891
	adc r23,r19	 ;  tmp892, tmp891
	movw r16,r20	 ; , c.19
	movw r20,r22	 ;  c.19,
	movw r22,r16	 ;  c.19,
	add r20,r12	 ;  c.19, d.18
	adc r21,r13	 ;  c.19, d.18
	adc r22,r14	 ;  c.19, d.18
	adc r23,r15	 ;  c.19, d.18
	adiw r28,65-60	 ;  %sfp
	ldd r16,Y+60	 ;  tmp898
	ldd r17,Y+61	 ;  tmp898
	ldd r18,Y+62	 ;  tmp898
	ldd r19,Y+63	 ;  tmp898
	sbiw r28,65-60	 ;  %sfp
	subi r16,-12	 ;  tmp898,
	sbci r17,-57	 ; ,
	sbci r18,26	 ; ,
	sbci r19,2	 ; ,
	add r16,r8	 ;  tmp898, b.16
	adc r17,r9	 ;  tmp898, b.16
	adc r18,r10	 ;  tmp898, b.16
	adc r19,r11	 ;  tmp898, b.16
	movw r8,r12	 ;  tmp897, d.18
	movw r10,r14	 ;  tmp897, d.18
	eor r8,r24	 ;  tmp897, a.17
	eor r9,r25	 ;  tmp897, a.17
	eor r10,r26	 ;  tmp897, a.17
	eor r11,r27	 ;  tmp897, a.17
	eor r8,r20	 ;  tmp897, c.19
	eor r9,r21	 ;  tmp897, c.19
	eor r10,r22	 ;  tmp897, c.19
	eor r11,r23	 ;  tmp897, c.19
	add r16,r8	 ;  tmp898, tmp897
	adc r17,r9	 ;  tmp898, tmp897
	adc r18,r10	 ;  tmp898, tmp897
	adc r19,r11	 ;  tmp898, tmp897
	movw r8,r16	 ;  b.20, tmp898
	movw r10,r18	 ;  b.20, tmp898
	ldi r30,23	 ; ,
	1:
	lsl r8	 ;  b.20
	rol r9	 ;  b.20
	rol r10	 ;  b.20
	rol r11	 ;  b.20
	dec r30	 ; 
	brne 1b
	ldi r31,9	 ; ,
	1:
	lsr r19	 ;  tmp901
	ror r18	 ;  tmp901
	ror r17	 ;  tmp901
	ror r16	 ;  tmp901
	dec r31	 ; 
	brne 1b
	or r8,r16	 ;  b.20, tmp901
	or r9,r17	 ;  b.20, tmp901
	or r10,r18	 ;  b.20, tmp901
	or r11,r19	 ;  b.20, tmp901
	add r8,r20	 ;  b.20, c.19
	adc r9,r21	 ;  b.20, c.19
	adc r10,r22	 ;  b.20, c.19
	adc r11,r23	 ;  b.20, c.19
	ldd r16,Y+13	 ;  tmp907, %sfp
	ldd r17,Y+14	 ;  tmp907, %sfp
	ldd r18,Y+15	 ;  tmp907, %sfp
	ldd r19,Y+16	 ;  tmp907, %sfp
	subi r16,-68	 ;  tmp907,
	sbci r17,21	 ; ,
	sbci r18,65	 ; ,
	sbci r19,91	 ; ,
	add r16,r24	 ;  tmp907, a.17
	adc r17,r25	 ;  tmp907, a.17
	adc r18,r26	 ;  tmp907, a.17
	adc r19,r27	 ;  tmp907, a.17
	movw r26,r22	 ;  tmp906, c.19
	movw r24,r20	 ;  tmp906, c.19
	eor r24,r12	 ;  tmp906, d.18
	eor r25,r13	 ;  tmp906, d.18
	eor r26,r14	 ;  tmp906, d.18
	eor r27,r15	 ;  tmp906, d.18
	eor r24,r8	 ;  tmp906, b.20
	eor r25,r9	 ;  tmp906, b.20
	eor r26,r10	 ;  tmp906, b.20
	eor r27,r11	 ;  tmp906, b.20
	add r16,r24	 ;  tmp907, tmp906
	adc r17,r25	 ;  tmp907, tmp906
	adc r18,r26	 ;  tmp907, tmp906
	adc r19,r27	 ;  tmp907, tmp906
	movw r26,r18	 ;  tmp908, tmp907
	movw r24,r16	 ;  tmp908, tmp907
	ldi r30,4	 ; ,
	1:
	lsl r24	 ;  tmp908
	rol r25	 ;  tmp908
	rol r26	 ;  tmp908
	rol r27	 ;  tmp908
	dec r30	 ; 
	brne 1b
	ldi r31,28	 ; ,
	1:
	lsr r19	 ;  a.17
	ror r18	 ;  a.17
	ror r17	 ;  a.17
	ror r16	 ;  a.17
	dec r31	 ; 
	brne 1b
	or r16,r24	 ;  a.17, tmp908
	or r17,r25	 ;  a.17, tmp908
	or r18,r26	 ;  a.17, tmp908
	or r19,r27	 ;  a.17, tmp908
	add r16,r8	 ;  a.17, b.20
	adc r17,r9	 ;  a.17, b.20
	adc r18,r10	 ;  a.17, b.20
	adc r19,r11	 ;  a.17, b.20
	ldd r24,Y+25	 ;  tmp913, %sfp
	ldd r25,Y+26	 ;  tmp913, %sfp
	ldd r26,Y+27	 ;  tmp913, %sfp
	ldd r27,Y+28	 ;  tmp913, %sfp
	subi r24,87	 ;  tmp913,
	sbci r25,48	 ; ,
	sbci r26,33	 ; ,
	sbci r27,-76	 ; ,
	add r24,r12	 ;  tmp913, d.18
	adc r25,r13	 ;  tmp913, d.18
	adc r26,r14	 ;  tmp913, d.18
	adc r27,r15	 ;  tmp913, d.18
	movw r14,r10	 ;  tmp912, b.20
	movw r12,r8	 ;  tmp912, b.20
	eor r12,r20	 ;  tmp912, c.19
	eor r13,r21	 ;  tmp912, c.19
	eor r14,r22	 ;  tmp912, c.19
	eor r15,r23	 ;  tmp912, c.19
	eor r12,r16	 ;  tmp912, a.17
	eor r13,r17	 ;  tmp912, a.17
	eor r14,r18	 ;  tmp912, a.17
	eor r15,r19	 ;  tmp912, a.17
	add r24,r12	 ;  tmp913, tmp912
	adc r25,r13	 ;  tmp913, tmp912
	adc r26,r14	 ;  tmp913, tmp912
	adc r27,r15	 ;  tmp913, tmp912
	movw r12,r24	 ;  tmp914, tmp913
	movw r14,r26	 ;  tmp914, tmp913
	ldi r30,11	 ; ,
	1:
	lsl r12	 ;  tmp914
	rol r13	 ;  tmp914
	rol r14	 ;  tmp914
	rol r15	 ;  tmp914
	dec r30	 ; 
	brne 1b
	ldi r31,21	 ; ,
	1:
	lsr r27	 ;  d.18
	ror r26	 ;  d.18
	ror r25	 ;  d.18
	ror r24	 ;  d.18
	dec r31	 ; 
	brne 1b
	or r24,r12	 ;  d.18, tmp914
	or r25,r13	 ;  d.18, tmp914
	or r26,r14	 ;  d.18, tmp914
	or r27,r15	 ;  d.18, tmp914
	add r24,r16	 ;  d.18, a.17
	adc r25,r17	 ;  d.18, a.17
	adc r26,r18	 ;  d.18, a.17
	adc r27,r19	 ;  d.18, a.17
	ldd r12,Y+37	 ;  tmp919, %sfp
	ldd r13,Y+38	 ;  tmp919, %sfp
	ldd r14,Y+39	 ;  tmp919, %sfp
	ldd r15,Y+40	 ;  tmp919, %sfp
	ldi r30,-96	 ; ,
	sub r12,r30	 ;  tmp919,
	ldi r30,-76	 ; ,
	sbc r13,r30	 ; ,
	ldi r30,68	 ; ,
	sbc r14,r30	 ; ,
	ldi r30,9	 ; ,
	sbc r15,r30	 ; ,
	add r12,r20	 ;  tmp919, c.19
	adc r13,r21	 ;  tmp919, c.19
	adc r14,r22	 ;  tmp919, c.19
	adc r15,r23	 ;  tmp919, c.19
	movw r22,r18	 ;  tmp918, a.17
	movw r20,r16	 ;  tmp918, a.17
	eor r20,r8	 ;  tmp918, b.20
	eor r21,r9	 ;  tmp918, b.20
	eor r22,r10	 ;  tmp918, b.20
	eor r23,r11	 ;  tmp918, b.20
	eor r20,r24	 ;  tmp918, d.18
	eor r21,r25	 ;  tmp918, d.18
	eor r22,r26	 ;  tmp918, d.18
	eor r23,r27	 ;  tmp918, d.18
	add r12,r20	 ;  tmp919, tmp918
	adc r13,r21	 ;  tmp919, tmp918
	adc r14,r22	 ;  tmp919, tmp918
	adc r15,r23	 ;  tmp919, tmp918
	movw r22,r12	 ;  c.19, tmp919
	movw r20,r14	 ;  c.19,
	add r20,r24	 ;  c.19, d.18
	adc r21,r25	 ;  c.19, d.18
	adc r22,r26	 ;  c.19, d.18
	adc r23,r27	 ;  c.19, d.18
	ldd r12,Y+49	 ;  tmp924, %sfp
	ldd r13,Y+50	 ;  tmp924, %sfp
	ldd r14,Y+51	 ;  tmp924, %sfp
	ldd r15,Y+52	 ;  tmp924, %sfp
	ldi r31,-112	 ; ,
	sub r12,r31	 ;  tmp924,
	ldi r31,67	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,64	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,65	 ; ,
	sbc r15,r31	 ; ,
	add r12,r8	 ;  tmp924, b.20
	adc r13,r9	 ;  tmp924, b.20
	adc r14,r10	 ;  tmp924, b.20
	adc r15,r11	 ;  tmp924, b.20
	movw r8,r24	 ;  tmp923, d.18
	movw r10,r26	 ;  tmp923, d.18
	eor r8,r16	 ;  tmp923, a.17
	eor r9,r17	 ;  tmp923, a.17
	eor r10,r18	 ;  tmp923, a.17
	eor r11,r19	 ;  tmp923, a.17
	eor r8,r20	 ;  tmp923, c.19
	eor r9,r21	 ;  tmp923, c.19
	eor r10,r22	 ;  tmp923, c.19
	eor r11,r23	 ;  tmp923, c.19
	add r12,r8	 ;  tmp924, tmp923
	adc r13,r9	 ;  tmp924, tmp923
	adc r14,r10	 ;  tmp924, tmp923
	adc r15,r11	 ;  tmp924, tmp923
	movw r8,r12	 ;  tmp925, tmp924
	movw r10,r14	 ;  tmp925, tmp924
	ldi r30,23	 ; ,
	1:
	lsl r8	 ;  tmp925
	rol r9	 ;  tmp925
	rol r10	 ;  tmp925
	rol r11	 ;  tmp925
	dec r30	 ; 
	brne 1b
	ldi r31,9	 ; ,
	1:
	lsr r15	 ;  b.20
	ror r14	 ;  b.20
	ror r13	 ;  b.20
	ror r12	 ;  b.20
	dec r31	 ; 
	brne 1b
	or r12,r8	 ;  b.20, tmp925
	or r13,r9	 ;  b.20, tmp925
	or r14,r10	 ;  b.20, tmp925
	or r15,r11	 ;  b.20, tmp925
	add r12,r20	 ;  b.20, c.19
	adc r13,r21	 ;  b.20, c.19
	adc r14,r22	 ;  b.20, c.19
	adc r15,r23	 ;  b.20, c.19
	adiw r28,61-60	 ;  %sfp
	ldd r8,Y+60	 ;  tmp930
	ldd r9,Y+61	 ;  tmp930
	ldd r10,Y+62	 ;  tmp930
	ldd r11,Y+63	 ;  tmp930
	sbiw r28,61-60	 ;  %sfp
	ldi r30,58	 ; ,
	sub r8,r30	 ;  tmp930,
	ldi r30,-127	 ; ,
	sbc r9,r30	 ; ,
	ldi r30,100	 ; ,
	sbc r10,r30	 ; ,
	ldi r30,-41	 ; ,
	sbc r11,r30	 ; ,
	add r8,r16	 ;  tmp930, a.17
	adc r9,r17	 ;  tmp930, a.17
	adc r10,r18	 ;  tmp930, a.17
	adc r11,r19	 ;  tmp930, a.17
	movw r16,r20	 ;  tmp929, c.19
	movw r18,r22	 ;  tmp929, c.19
	eor r16,r24	 ;  tmp929, d.18
	eor r17,r25	 ;  tmp929, d.18
	eor r18,r26	 ;  tmp929, d.18
	eor r19,r27	 ;  tmp929, d.18
	eor r16,r12	 ;  tmp929, b.20
	eor r17,r13	 ;  tmp929, b.20
	eor r18,r14	 ;  tmp929, b.20
	eor r19,r15	 ;  tmp929, b.20
	add r8,r16	 ;  tmp930, tmp929
	adc r9,r17	 ;  tmp930, tmp929
	adc r10,r18	 ;  tmp930, tmp929
	adc r11,r19	 ;  tmp930, tmp929
	movw r18,r10	 ;  tmp931, tmp930
	movw r16,r8	 ;  tmp931, tmp930
	ldi r30,4	 ; ,
	1:
	lsl r16	 ;  tmp931
	rol r17	 ;  tmp931
	rol r18	 ;  tmp931
	rol r19	 ;  tmp931
	dec r30	 ; 
	brne 1b
	ldi r31,28	 ; ,
	1:
	lsr r11	 ;  a.17
	ror r10	 ;  a.17
	ror r9	 ;  a.17
	ror r8	 ;  a.17
	dec r31	 ; 
	brne 1b
	or r8,r16	 ;  a.17, tmp931
	or r9,r17	 ;  a.17, tmp931
	or r10,r18	 ;  a.17, tmp931
	or r11,r19	 ;  a.17, tmp931
	add r8,r12	 ;  a.17, b.20
	adc r9,r13	 ;  a.17, b.20
	adc r10,r14	 ;  a.17, b.20
	adc r11,r15	 ;  a.17, b.20
	ldd r16,Y+9	 ;  tmp936, %sfp
	ldd r17,Y+10	 ;  tmp936, %sfp
	ldd r18,Y+11	 ;  tmp936, %sfp
	ldd r19,Y+12	 ;  tmp936, %sfp
	subi r16,6	 ;  tmp936,
	sbci r17,-40	 ; ,
	sbci r18,94	 ; ,
	sbci r19,21	 ; ,
	add r16,r24	 ;  tmp936, d.18
	adc r17,r25	 ;  tmp936, d.18
	adc r18,r26	 ;  tmp936, d.18
	adc r19,r27	 ;  tmp936, d.18
	movw r26,r14	 ;  tmp935, b.20
	movw r24,r12	 ;  tmp935, b.20
	eor r24,r20	 ;  tmp935, c.19
	eor r25,r21	 ;  tmp935, c.19
	eor r26,r22	 ;  tmp935, c.19
	eor r27,r23	 ;  tmp935, c.19
	eor r24,r8	 ;  tmp935, a.17
	eor r25,r9	 ;  tmp935, a.17
	eor r26,r10	 ;  tmp935, a.17
	eor r27,r11	 ;  tmp935, a.17
	add r16,r24	 ;  tmp936, tmp935
	adc r17,r25	 ;  tmp936, tmp935
	adc r18,r26	 ;  tmp936, tmp935
	adc r19,r27	 ;  tmp936, tmp935
	movw r26,r18	 ;  tmp937, tmp936
	movw r24,r16	 ;  tmp937, tmp936
	ldi r30,11	 ; ,
	1:
	lsl r24	 ;  tmp937
	rol r25	 ;  tmp937
	rol r26	 ;  tmp937
	rol r27	 ;  tmp937
	dec r30	 ; 
	brne 1b
	ldi r31,21	 ; ,
	1:
	lsr r19	 ;  d.18
	ror r18	 ;  d.18
	ror r17	 ;  d.18
	ror r16	 ;  d.18
	dec r31	 ; 
	brne 1b
	or r16,r24	 ;  d.18, tmp937
	or r17,r25	 ;  d.18, tmp937
	or r18,r26	 ;  d.18, tmp937
	or r19,r27	 ;  d.18, tmp937
	add r16,r8	 ;  d.18, a.17
	adc r17,r9	 ;  d.18, a.17
	adc r18,r10	 ;  d.18, a.17
	adc r19,r11	 ;  d.18, a.17
	ldd r24,Y+21	 ;  tmp942, %sfp
	ldd r25,Y+22	 ;  tmp942, %sfp
	ldd r26,Y+23	 ;  tmp942, %sfp
	ldd r27,Y+24	 ;  tmp942, %sfp
	subi r24,123	 ;  tmp942,
	sbci r25,-49	 ; ,
	sbci r26,16	 ; ,
	sbci r27,43	 ; ,
	add r24,r20	 ;  tmp942, c.19
	adc r25,r21	 ;  tmp942, c.19
	adc r26,r22	 ;  tmp942, c.19
	adc r27,r23	 ;  tmp942, c.19
	movw r22,r10	 ;  tmp941, a.17
	movw r20,r8	 ;  tmp941, a.17
	eor r20,r12	 ;  tmp941, b.20
	eor r21,r13	 ;  tmp941, b.20
	eor r22,r14	 ;  tmp941, b.20
	eor r23,r15	 ;  tmp941, b.20
	eor r20,r16	 ;  tmp941, d.18
	eor r21,r17	 ;  tmp941, d.18
	eor r22,r18	 ;  tmp941, d.18
	eor r23,r19	 ;  tmp941, d.18
	add r24,r20	 ;  tmp942, tmp941
	adc r25,r21	 ;  tmp942, tmp941
	adc r26,r22	 ;  tmp942, tmp941
	adc r27,r23	 ;  tmp942, tmp941
	movw r20,r24	 ; , c.19
	movw r24,r26	 ;  c.19,
	movw r26,r20	 ;  c.19,
	add r24,r16	 ;  c.19, d.18
	adc r25,r17	 ;  c.19, d.18
	adc r26,r18	 ;  c.19, d.18
	adc r27,r19	 ;  c.19, d.18
	ldd r20,Y+33	 ;  tmp947, %sfp
	ldd r21,Y+34	 ;  tmp947, %sfp
	ldd r22,Y+35	 ;  tmp947, %sfp
	ldd r23,Y+36	 ;  tmp947, %sfp
	subi r20,-5	 ;  tmp947,
	sbci r21,-30	 ; ,
	sbci r22,119	 ; ,
	sbci r23,-5	 ; ,
	add r20,r12	 ;  tmp947, b.20
	adc r21,r13	 ;  tmp947, b.20
	adc r22,r14	 ;  tmp947, b.20
	adc r23,r15	 ;  tmp947, b.20
	movw r12,r16	 ;  tmp946, d.18
	movw r14,r18	 ;  tmp946, d.18
	eor r12,r8	 ;  tmp946, a.17
	eor r13,r9	 ;  tmp946, a.17
	eor r14,r10	 ;  tmp946, a.17
	eor r15,r11	 ;  tmp946, a.17
	eor r12,r24	 ;  tmp946, c.19
	eor r13,r25	 ;  tmp946, c.19
	eor r14,r26	 ;  tmp946, c.19
	eor r15,r27	 ;  tmp946, c.19
	add r20,r12	 ;  tmp947, tmp946
	adc r21,r13	 ;  tmp947, tmp946
	adc r22,r14	 ;  tmp947, tmp946
	adc r23,r15	 ;  tmp947, tmp946
	movw r12,r20	 ;  tmp948, tmp947
	movw r14,r22	 ;  tmp948, tmp947
	ldi r30,23	 ; ,
	1:
	lsl r12	 ;  tmp948
	rol r13	 ;  tmp948
	rol r14	 ;  tmp948
	rol r15	 ;  tmp948
	dec r30	 ; 
	brne 1b
	ldi r31,9	 ; ,
	1:
	lsr r23	 ;  b.20
	ror r22	 ;  b.20
	ror r21	 ;  b.20
	ror r20	 ;  b.20
	dec r31	 ; 
	brne 1b
	or r20,r12	 ;  b.20, tmp948
	or r21,r13	 ;  b.20, tmp948
	or r22,r14	 ;  b.20, tmp948
	or r23,r15	 ;  b.20, tmp948
	add r20,r24	 ;  b.20, c.19
	adc r21,r25	 ;  b.20, c.19
	adc r22,r26	 ;  b.20, c.19
	adc r23,r27	 ;  b.20, c.19
	ldd r12,Y+45	 ;  tmp953, %sfp
	ldd r13,Y+46	 ;  tmp953, %sfp
	ldd r14,Y+47	 ;  tmp953, %sfp
	ldd r15,Y+48	 ;  tmp953, %sfp
	ldi r30,-57	 ; ,
	sub r12,r30	 ;  tmp953,
	ldi r30,47	 ; ,
	sbc r13,r30	 ; ,
	ldi r30,43	 ; ,
	sbc r14,r30	 ; ,
	ldi r30,38	 ; ,
	sbc r15,r30	 ; ,
	add r12,r8	 ;  tmp953, a.17
	adc r13,r9	 ;  tmp953, a.17
	adc r14,r10	 ;  tmp953, a.17
	adc r15,r11	 ;  tmp953, a.17
	movw r8,r24	 ;  tmp952, c.19
	movw r10,r26	 ;  tmp952, c.19
	eor r8,r16	 ;  tmp952, d.18
	eor r9,r17	 ;  tmp952, d.18
	eor r10,r18	 ;  tmp952, d.18
	eor r11,r19	 ;  tmp952, d.18
	eor r8,r20	 ;  tmp952, b.20
	eor r9,r21	 ;  tmp952, b.20
	eor r10,r22	 ;  tmp952, b.20
	eor r11,r23	 ;  tmp952, b.20
	add r12,r8	 ;  tmp953, tmp952
	adc r13,r9	 ;  tmp953, tmp952
	adc r14,r10	 ;  tmp953, tmp952
	adc r15,r11	 ;  tmp953, tmp952
	movw r8,r12	 ;  tmp954, tmp953
	movw r10,r14	 ;  tmp954, tmp953
	ldi r30,4	 ; ,
	1:
	lsl r8	 ;  tmp954
	rol r9	 ;  tmp954
	rol r10	 ;  tmp954
	rol r11	 ;  tmp954
	dec r30	 ; 
	brne 1b
	ldi r31,28	 ; ,
	1:
	lsr r15	 ;  a.17
	ror r14	 ;  a.17
	ror r13	 ;  a.17
	ror r12	 ;  a.17
	dec r31	 ; 
	brne 1b
	or r12,r8	 ;  a.17, tmp954
	or r13,r9	 ;  a.17, tmp954
	or r14,r10	 ;  a.17, tmp954
	or r15,r11	 ;  a.17, tmp954
	add r12,r20	 ;  a.17, b.20
	adc r13,r21	 ;  a.17, b.20
	adc r14,r22	 ;  a.17, b.20
	adc r15,r23	 ;  a.17, b.20
	ldd r8,Y+57	 ;  tmp959, %sfp
	ldd r9,Y+58	 ;  tmp959, %sfp
	ldd r10,Y+59	 ;  tmp959, %sfp
	ldd r11,Y+60	 ;  tmp959, %sfp
	ldi r31,27	 ; ,
	sub r8,r31	 ;  tmp959,
	ldi r31,102	 ; ,
	sbc r9,r31	 ; ,
	ldi r31,36	 ; ,
	sbc r10,r31	 ; ,
	ldi r31,25	 ; ,
	sbc r11,r31	 ; ,
	add r8,r16	 ;  tmp959, d.18
	adc r9,r17	 ;  tmp959, d.18
	adc r10,r18	 ;  tmp959, d.18
	adc r11,r19	 ;  tmp959, d.18
	movw r16,r20	 ;  tmp958, b.20
	movw r18,r22	 ;  tmp958, b.20
	eor r16,r24	 ;  tmp958, c.19
	eor r17,r25	 ;  tmp958, c.19
	eor r18,r26	 ;  tmp958, c.19
	eor r19,r27	 ;  tmp958, c.19
	eor r16,r12	 ;  tmp958, a.17
	eor r17,r13	 ;  tmp958, a.17
	eor r18,r14	 ;  tmp958, a.17
	eor r19,r15	 ;  tmp958, a.17
	add r8,r16	 ;  tmp959, tmp958
	adc r9,r17	 ;  tmp959, tmp958
	adc r10,r18	 ;  tmp959, tmp958
	adc r11,r19	 ;  tmp959, tmp958
	movw r18,r10	 ;  tmp960, tmp959
	movw r16,r8	 ;  tmp960, tmp959
	ldi r30,11	 ; ,
	1:
	lsl r16	 ;  tmp960
	rol r17	 ;  tmp960
	rol r18	 ;  tmp960
	rol r19	 ;  tmp960
	dec r30	 ; 
	brne 1b
	ldi r31,21	 ; ,
	1:
	lsr r11	 ;  d.18
	ror r10	 ;  d.18
	ror r9	 ;  d.18
	ror r8	 ;  d.18
	dec r31	 ; 
	brne 1b
	or r8,r16	 ;  d.18, tmp960
	or r9,r17	 ;  d.18, tmp960
	or r10,r18	 ;  d.18, tmp960
	or r11,r19	 ;  d.18, tmp960
	add r8,r12	 ;  d.18, a.17
	adc r9,r13	 ;  d.18, a.17
	adc r10,r14	 ;  d.18, a.17
	adc r11,r15	 ;  d.18, a.17
	adiw r28,69-60	 ;  %sfp
	ldd r16,Y+60	 ;  tmp965
	ldd r17,Y+61	 ;  tmp965
	ldd r18,Y+62	 ;  tmp965
	ldd r19,Y+63	 ;  tmp965
	sbiw r28,69-60	 ;  %sfp
	subi r16,8	 ;  tmp965,
	sbci r17,-125	 ; ,
	sbci r18,93	 ; ,
	sbci r19,-32	 ; ,
	add r16,r24	 ;  tmp965, c.19
	adc r17,r25	 ;  tmp965, c.19
	adc r18,r26	 ;  tmp965, c.19
	adc r19,r27	 ;  tmp965, c.19
	movw r26,r14	 ;  tmp964, a.17
	movw r24,r12	 ;  tmp964, a.17
	eor r24,r20	 ;  tmp964, b.20
	eor r25,r21	 ;  tmp964, b.20
	eor r26,r22	 ;  tmp964, b.20
	eor r27,r23	 ;  tmp964, b.20
	eor r24,r8	 ;  tmp964, d.18
	eor r25,r9	 ;  tmp964, d.18
	eor r26,r10	 ;  tmp964, d.18
	eor r27,r11	 ;  tmp964, d.18
	add r16,r24	 ;  tmp965, tmp964
	adc r17,r25	 ;  tmp965, tmp964
	adc r18,r26	 ;  tmp965, tmp964
	adc r19,r27	 ;  tmp965, tmp964
	movw r26,r16	 ;  c.19, tmp965
	movw r24,r18	 ;  c.19,
	add r24,r8	 ;  c.19, d.18
	adc r25,r9	 ;  c.19, d.18
	adc r26,r10	 ;  c.19, d.18
	adc r27,r11	 ;  c.19, d.18
	ldd r16,Y+17	 ;  tmp970, %sfp
	ldd r17,Y+18	 ;  tmp970, %sfp
	ldd r18,Y+19	 ;  tmp970, %sfp
	ldd r19,Y+20	 ;  tmp970, %sfp
	subi r16,-101	 ;  tmp970,
	sbci r17,-87	 ; ,
	sbci r18,83	 ; ,
	sbci r19,59	 ; ,
	add r16,r20	 ;  tmp970, b.20
	adc r17,r21	 ;  tmp970, b.20
	adc r18,r22	 ;  tmp970, b.20
	adc r19,r23	 ;  tmp970, b.20
	movw r22,r10	 ;  tmp969, d.18
	movw r20,r8	 ;  tmp969, d.18
	eor r20,r12	 ;  tmp969, a.17
	eor r21,r13	 ;  tmp969, a.17
	eor r22,r14	 ;  tmp969, a.17
	eor r23,r15	 ;  tmp969, a.17
	eor r20,r24	 ;  tmp969, c.19
	eor r21,r25	 ;  tmp969, c.19
	eor r22,r26	 ;  tmp969, c.19
	eor r23,r27	 ;  tmp969, c.19
	add r16,r20	 ;  tmp970, tmp969
	adc r17,r21	 ;  tmp970, tmp969
	adc r18,r22	 ;  tmp970, tmp969
	adc r19,r23	 ;  tmp970, tmp969
	movw r22,r18	 ;  tmp971, tmp970
	movw r20,r16	 ;  tmp971, tmp970
	ldi r30,23	 ; ,
	1:
	lsl r20	 ;  tmp971
	rol r21	 ;  tmp971
	rol r22	 ;  tmp971
	rol r23	 ;  tmp971
	dec r30	 ; 
	brne 1b
	ldi r31,9	 ; ,
	1:
	lsr r19	 ;  b.20
	ror r18	 ;  b.20
	ror r17	 ;  b.20
	ror r16	 ;  b.20
	dec r31	 ; 
	brne 1b
	or r16,r20	 ;  b.20, tmp971
	or r17,r21	 ;  b.20, tmp971
	or r18,r22	 ;  b.20, tmp971
	or r19,r23	 ;  b.20, tmp971
	add r16,r24	 ;  b.20, c.19
	adc r17,r25	 ;  b.20, c.19
	adc r18,r26	 ;  b.20, c.19
	adc r19,r27	 ;  b.20, c.19
	ldd r20,Y+9	 ;  tmp977, %sfp
	ldd r21,Y+10	 ;  tmp977, %sfp
	ldd r22,Y+11	 ;  tmp977, %sfp
	ldd r23,Y+12	 ;  tmp977, %sfp
	subi r20,-68	 ;  tmp977,
	sbci r21,-35	 ; ,
	sbci r22,-42	 ; ,
	sbci r23,11	 ; ,
	add r20,r12	 ;  tmp977, a.17
	adc r21,r13	 ;  tmp977, a.17
	adc r22,r14	 ;  tmp977, a.17
	adc r23,r15	 ;  tmp977, a.17
	movw r14,r10	 ;  tmp976, d.18
	movw r12,r8	 ;  tmp976, d.18
	com r12	 ;  tmp976
	com r13	 ;  tmp976
	com r14	 ;  tmp976
	com r15	 ;  tmp976
	or r12,r16	 ;  tmp976, b.20
	or r13,r17	 ;  tmp976, b.20
	or r14,r18	 ;  tmp976, b.20
	or r15,r19	 ;  tmp976, b.20
	eor r12,r24	 ;  tmp976, c.19
	eor r13,r25	 ;  tmp976, c.19
	eor r14,r26	 ;  tmp976, c.19
	eor r15,r27	 ;  tmp976, c.19
	add r20,r12	 ;  tmp977, tmp976
	adc r21,r13	 ;  tmp977, tmp976
	adc r22,r14	 ;  tmp977, tmp976
	adc r23,r15	 ;  tmp977, tmp976
	movw r12,r20	 ;  a.21, tmp977
	movw r14,r22	 ;  a.21, tmp977
	ldi r30,6	 ; ,
	1:
	lsl r12	 ;  a.21
	rol r13	 ;  a.21
	rol r14	 ;  a.21
	rol r15	 ;  a.21
	dec r30	 ; 
	brne 1b
	ldi r31,26	 ; ,
	1:
	lsr r23	 ;  tmp980
	ror r22	 ;  tmp980
	ror r21	 ;  tmp980
	ror r20	 ;  tmp980
	dec r31	 ; 
	brne 1b
	or r12,r20	 ;  a.21, tmp980
	or r13,r21	 ;  a.21, tmp980
	or r14,r22	 ;  a.21, tmp980
	or r15,r23	 ;  a.21, tmp980
	add r12,r16	 ;  a.21, b.20
	adc r13,r17	 ;  a.21, b.20
	adc r14,r18	 ;  a.21, b.20
	adc r15,r19	 ;  a.21, b.20
	ldd r20,Y+37	 ;  tmp987, %sfp
	ldd r21,Y+38	 ;  tmp987, %sfp
	ldd r22,Y+39	 ;  tmp987, %sfp
	ldd r23,Y+40	 ;  tmp987, %sfp
	subi r20,105	 ;  tmp987,
	sbc r21,__zero_reg__	 ; 
	sbci r22,-43	 ; ,
	sbci r23,-68	 ; ,
	add r20,r8	 ;  tmp987, d.18
	adc r21,r9	 ;  tmp987, d.18
	adc r22,r10	 ;  tmp987, d.18
	adc r23,r11	 ;  tmp987, d.18
	movw r8,r24	 ;  tmp986, c.19
	movw r10,r26	 ;  tmp986, c.19
	com r8	 ;  tmp986
	com r9	 ;  tmp986
	com r10	 ;  tmp986
	com r11	 ;  tmp986
	or r8,r12	 ;  tmp986, a.21
	or r9,r13	 ;  tmp986, a.21
	or r10,r14	 ;  tmp986, a.21
	or r11,r15	 ;  tmp986, a.21
	eor r8,r16	 ;  tmp986, b.20
	eor r9,r17	 ;  tmp986, b.20
	eor r10,r18	 ;  tmp986, b.20
	eor r11,r19	 ;  tmp986, b.20
	add r20,r8	 ;  tmp987, tmp986
	adc r21,r9	 ;  tmp987, tmp986
	adc r22,r10	 ;  tmp987, tmp986
	adc r23,r11	 ;  tmp987, tmp986
	movw r8,r20	 ;  d.22, tmp987
	movw r10,r22	 ;  d.22, tmp987
	ldi r30,10	 ; ,
	1:
	lsl r8	 ;  d.22
	rol r9	 ;  d.22
	rol r10	 ;  d.22
	rol r11	 ;  d.22
	dec r30	 ; 
	brne 1b
	ldi r31,22	 ; ,
	1:
	lsr r23	 ;  tmp990
	ror r22	 ;  tmp990
	ror r21	 ;  tmp990
	ror r20	 ;  tmp990
	dec r31	 ; 
	brne 1b
	or r8,r20	 ;  d.22, tmp990
	or r9,r21	 ;  d.22, tmp990
	or r10,r22	 ;  d.22, tmp990
	or r11,r23	 ;  d.22, tmp990
	add r8,r12	 ;  d.22, a.21
	adc r9,r13	 ;  d.22, a.21
	adc r10,r14	 ;  d.22, a.21
	adc r11,r15	 ;  d.22, a.21
	adiw r28,65-60	 ;  %sfp
	ldd r20,Y+60	 ;  tmp997
	ldd r21,Y+61	 ;  tmp997
	ldd r22,Y+62	 ;  tmp997
	ldd r23,Y+63	 ;  tmp997
	sbiw r28,65-60	 ;  %sfp
	subi r20,89	 ;  tmp997,
	sbci r21,-36	 ; ,
	sbci r22,107	 ; ,
	sbci r23,84	 ; ,
	add r20,r24	 ;  tmp997, c.19
	adc r21,r25	 ;  tmp997, c.19
	adc r22,r26	 ;  tmp997, c.19
	adc r23,r27	 ;  tmp997, c.19
	movw r26,r18	 ;  tmp996, b.20
	movw r24,r16	 ;  tmp996, b.20
	com r24	 ;  tmp996
	com r25	 ;  tmp996
	com r26	 ;  tmp996
	com r27	 ;  tmp996
	or r24,r8	 ;  tmp996, d.22
	or r25,r9	 ;  tmp996, d.22
	or r26,r10	 ;  tmp996, d.22
	or r27,r11	 ;  tmp996, d.22
	eor r24,r12	 ;  tmp996, a.21
	eor r25,r13	 ;  tmp996, a.21
	eor r26,r14	 ;  tmp996, a.21
	eor r27,r15	 ;  tmp996, a.21
	add r20,r24	 ;  tmp997, tmp996
	adc r21,r25	 ;  tmp997, tmp996
	adc r22,r26	 ;  tmp997, tmp996
	adc r23,r27	 ;  tmp997, tmp996
	movw r26,r22	 ;  c.23, tmp997
	movw r24,r20	 ;  c.23, tmp997
	ldi r30,15	 ; ,
	1:
	lsl r24	 ;  c.23
	rol r25	 ;  c.23
	rol r26	 ;  c.23
	rol r27	 ;  c.23
	dec r30	 ; 
	brne 1b
	ldi r31,17	 ; ,
	1:
	lsr r23	 ;  tmp1000
	ror r22	 ;  tmp1000
	ror r21	 ;  tmp1000
	ror r20	 ;  tmp1000
	dec r31	 ; 
	brne 1b
	or r24,r20	 ;  c.23, tmp1000
	or r25,r21	 ;  c.23, tmp1000
	or r26,r22	 ;  c.23, tmp1000
	or r27,r23	 ;  c.23, tmp1000
	add r24,r8	 ;  c.23, d.22
	adc r25,r9	 ;  c.23, d.22
	adc r26,r10	 ;  c.23, d.22
	adc r27,r11	 ;  c.23, d.22
	ldd r20,Y+29	 ;  tmp1007, %sfp
	ldd r21,Y+30	 ;  tmp1007, %sfp
	ldd r22,Y+31	 ;  tmp1007, %sfp
	ldd r23,Y+32	 ;  tmp1007, %sfp
	subi r20,-57	 ;  tmp1007,
	sbci r21,95	 ; ,
	sbci r22,108	 ; ,
	sbci r23,3	 ; ,
	add r20,r16	 ;  tmp1007, b.20
	adc r21,r17	 ;  tmp1007, b.20
	adc r22,r18	 ;  tmp1007, b.20
	adc r23,r19	 ;  tmp1007, b.20
	movw r18,r14	 ;  tmp1006, a.21
	movw r16,r12	 ;  tmp1006, a.21
	com r16	 ;  tmp1006
	com r17	 ;  tmp1006
	com r18	 ;  tmp1006
	com r19	 ;  tmp1006
	or r16,r24	 ;  tmp1006, c.23
	or r17,r25	 ;  tmp1006, c.23
	or r18,r26	 ;  tmp1006, c.23
	or r19,r27	 ;  tmp1006, c.23
	eor r16,r8	 ;  tmp1006, d.22
	eor r17,r9	 ;  tmp1006, d.22
	eor r18,r10	 ;  tmp1006, d.22
	eor r19,r11	 ;  tmp1006, d.22
	add r20,r16	 ;  tmp1007, tmp1006
	adc r21,r17	 ;  tmp1007, tmp1006
	adc r22,r18	 ;  tmp1007, tmp1006
	adc r23,r19	 ;  tmp1007, tmp1006
	movw r16,r20	 ;  b.24, tmp1007
	movw r18,r22	 ;  b.24, tmp1007
	ldi r30,21	 ; ,
	1:
	lsl r16	 ;  b.24
	rol r17	 ;  b.24
	rol r18	 ;  b.24
	rol r19	 ;  b.24
	dec r30	 ; 
	brne 1b
	ldi r31,11	 ; ,
	1:
	lsr r23	 ;  tmp1010
	ror r22	 ;  tmp1010
	ror r21	 ;  tmp1010
	ror r20	 ;  tmp1010
	dec r31	 ; 
	brne 1b
	or r16,r20	 ;  b.24, tmp1010
	or r17,r21	 ;  b.24, tmp1010
	or r18,r22	 ;  b.24, tmp1010
	or r19,r23	 ;  b.24, tmp1010
	add r16,r24	 ;  b.24, c.23
	adc r17,r25	 ;  b.24, c.23
	adc r18,r26	 ;  b.24, c.23
	adc r19,r27	 ;  b.24, c.23
	ldd r20,Y+57	 ;  tmp1017, %sfp
	ldd r21,Y+58	 ;  tmp1017, %sfp
	ldd r22,Y+59	 ;  tmp1017, %sfp
	ldd r23,Y+60	 ;  tmp1017, %sfp
	subi r20,61	 ;  tmp1017,
	sbci r21,-90	 ; ,
	sbci r22,-92	 ; ,
	sbci r23,-102	 ; ,
	add r20,r12	 ;  tmp1017, a.21
	adc r21,r13	 ;  tmp1017, a.21
	adc r22,r14	 ;  tmp1017, a.21
	adc r23,r15	 ;  tmp1017, a.21
	movw r14,r10	 ;  tmp1016, d.22
	movw r12,r8	 ;  tmp1016, d.22
	com r12	 ;  tmp1016
	com r13	 ;  tmp1016
	com r14	 ;  tmp1016
	com r15	 ;  tmp1016
	or r12,r16	 ;  tmp1016, b.24
	or r13,r17	 ;  tmp1016, b.24
	or r14,r18	 ;  tmp1016, b.24
	or r15,r19	 ;  tmp1016, b.24
	eor r12,r24	 ;  tmp1016, c.23
	eor r13,r25	 ;  tmp1016, c.23
	eor r14,r26	 ;  tmp1016, c.23
	eor r15,r27	 ;  tmp1016, c.23
	add r20,r12	 ;  tmp1017, tmp1016
	adc r21,r13	 ;  tmp1017, tmp1016
	adc r22,r14	 ;  tmp1017, tmp1016
	adc r23,r15	 ;  tmp1017, tmp1016
	movw r12,r20	 ;  tmp1018, tmp1017
	movw r14,r22	 ;  tmp1018, tmp1017
	ldi r30,6	 ; ,
	1:
	lsl r12	 ;  tmp1018
	rol r13	 ;  tmp1018
	rol r14	 ;  tmp1018
	rol r15	 ;  tmp1018
	dec r30	 ; 
	brne 1b
	ldi r31,26	 ; ,
	1:
	lsr r23	 ;  a.21
	ror r22	 ;  a.21
	ror r21	 ;  a.21
	ror r20	 ;  a.21
	dec r31	 ; 
	brne 1b
	or r20,r12	 ;  a.21, tmp1018
	or r21,r13	 ;  a.21, tmp1018
	or r22,r14	 ;  a.21, tmp1018
	or r23,r15	 ;  a.21, tmp1018
	add r20,r16	 ;  a.21, b.24
	adc r21,r17	 ;  a.21, b.24
	adc r22,r18	 ;  a.21, b.24
	adc r23,r19	 ;  a.21, b.24
	ldd r12,Y+21	 ;  tmp1024, %sfp
	ldd r13,Y+22	 ;  tmp1024, %sfp
	ldd r14,Y+23	 ;  tmp1024, %sfp
	ldd r15,Y+24	 ;  tmp1024, %sfp
	ldi r31,110	 ; ,
	sub r12,r31	 ;  tmp1024,
	ldi r31,51	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,-13	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,112	 ; ,
	sbc r15,r31	 ; ,
	add r12,r8	 ;  tmp1024, d.22
	adc r13,r9	 ;  tmp1024, d.22
	adc r14,r10	 ;  tmp1024, d.22
	adc r15,r11	 ;  tmp1024, d.22
	movw r8,r24	 ;  tmp1023, c.23
	movw r10,r26	 ;  tmp1023, c.23
	com r8	 ;  tmp1023
	com r9	 ;  tmp1023
	com r10	 ;  tmp1023
	com r11	 ;  tmp1023
	or r8,r20	 ;  tmp1023, a.21
	or r9,r21	 ;  tmp1023, a.21
	or r10,r22	 ;  tmp1023, a.21
	or r11,r23	 ;  tmp1023, a.21
	eor r8,r16	 ;  tmp1023, b.24
	eor r9,r17	 ;  tmp1023, b.24
	eor r10,r18	 ;  tmp1023, b.24
	eor r11,r19	 ;  tmp1023, b.24
	add r12,r8	 ;  tmp1024, tmp1023
	adc r13,r9	 ;  tmp1024, tmp1023
	adc r14,r10	 ;  tmp1024, tmp1023
	adc r15,r11	 ;  tmp1024, tmp1023
	movw r8,r12	 ;  tmp1025, tmp1024
	movw r10,r14	 ;  tmp1025, tmp1024
	ldi r30,10	 ; ,
	1:
	lsl r8	 ;  tmp1025
	rol r9	 ;  tmp1025
	rol r10	 ;  tmp1025
	rol r11	 ;  tmp1025
	dec r30	 ; 
	brne 1b
	ldi r31,22	 ; ,
	1:
	lsr r15	 ;  d.22
	ror r14	 ;  d.22
	ror r13	 ;  d.22
	ror r12	 ;  d.22
	dec r31	 ; 
	brne 1b
	or r12,r8	 ;  d.22, tmp1025
	or r13,r9	 ;  d.22, tmp1025
	or r14,r10	 ;  d.22, tmp1025
	or r15,r11	 ;  d.22, tmp1025
	add r12,r20	 ;  d.22, a.21
	adc r13,r21	 ;  d.22, a.21
	adc r14,r22	 ;  d.22, a.21
	adc r15,r23	 ;  d.22, a.21
	ldd r8,Y+49	 ;  tmp1031, %sfp
	ldd r9,Y+50	 ;  tmp1031, %sfp
	ldd r10,Y+51	 ;  tmp1031, %sfp
	ldd r11,Y+52	 ;  tmp1031, %sfp
	ldi r30,-125	 ; ,
	sub r8,r30	 ;  tmp1031,
	ldi r30,11	 ; ,
	sbc r9,r30	 ; ,
	ldi r30,16	 ; ,
	sbc r10,r30	 ; ,
	sbc r11,__zero_reg__	 ; 
	add r8,r24	 ;  tmp1031, c.23
	adc r9,r25	 ;  tmp1031, c.23
	adc r10,r26	 ;  tmp1031, c.23
	adc r11,r27	 ;  tmp1031, c.23
	movw r26,r18	 ;  tmp1030, b.24
	movw r24,r16	 ;  tmp1030, b.24
	com r24	 ;  tmp1030
	com r25	 ;  tmp1030
	com r26	 ;  tmp1030
	com r27	 ;  tmp1030
	or r24,r12	 ;  tmp1030, d.22
	or r25,r13	 ;  tmp1030, d.22
	or r26,r14	 ;  tmp1030, d.22
	or r27,r15	 ;  tmp1030, d.22
	eor r24,r20	 ;  tmp1030, a.21
	eor r25,r21	 ;  tmp1030, a.21
	eor r26,r22	 ;  tmp1030, a.21
	eor r27,r23	 ;  tmp1030, a.21
	add r8,r24	 ;  tmp1031, tmp1030
	adc r9,r25	 ;  tmp1031, tmp1030
	adc r10,r26	 ;  tmp1031, tmp1030
	adc r11,r27	 ;  tmp1031, tmp1030
	movw r26,r10	 ;  tmp1032, tmp1031
	movw r24,r8	 ;  tmp1032, tmp1031
	ldi r30,15	 ; ,
	1:
	lsl r24	 ;  tmp1032
	rol r25	 ;  tmp1032
	rol r26	 ;  tmp1032
	rol r27	 ;  tmp1032
	dec r30	 ; 
	brne 1b
	ldi r31,17	 ; ,
	1:
	lsr r11	 ;  c.23
	ror r10	 ;  c.23
	ror r9	 ;  c.23
	ror r8	 ;  c.23
	dec r31	 ; 
	brne 1b
	or r8,r24	 ;  c.23, tmp1032
	or r9,r25	 ;  c.23, tmp1032
	or r10,r26	 ;  c.23, tmp1032
	or r11,r27	 ;  c.23, tmp1032
	add r8,r12	 ;  c.23, d.22
	adc r9,r13	 ;  c.23, d.22
	adc r10,r14	 ;  c.23, d.22
	adc r11,r15	 ;  c.23, d.22
	ldd r24,Y+13	 ;  tmp1038, %sfp
	ldd r25,Y+14	 ;  tmp1038, %sfp
	ldd r26,Y+15	 ;  tmp1038, %sfp
	ldd r27,Y+16	 ;  tmp1038, %sfp
	subi r24,47	 ;  tmp1038,
	sbci r25,-94	 ; ,
	sbci r26,123	 ; ,
	sbci r27,122	 ; ,
	add r24,r16	 ;  tmp1038, b.24
	adc r25,r17	 ;  tmp1038, b.24
	adc r26,r18	 ;  tmp1038, b.24
	adc r27,r19	 ;  tmp1038, b.24
	movw r16,r20	 ;  tmp1037, a.21
	movw r18,r22	 ;  tmp1037, a.21
	com r16	 ;  tmp1037
	com r17	 ;  tmp1037
	com r18	 ;  tmp1037
	com r19	 ;  tmp1037
	or r16,r8	 ;  tmp1037, c.23
	or r17,r9	 ;  tmp1037, c.23
	or r18,r10	 ;  tmp1037, c.23
	or r19,r11	 ;  tmp1037, c.23
	eor r16,r12	 ;  tmp1037, d.22
	eor r17,r13	 ;  tmp1037, d.22
	eor r18,r14	 ;  tmp1037, d.22
	eor r19,r15	 ;  tmp1037, d.22
	add r24,r16	 ;  tmp1038, tmp1037
	adc r25,r17	 ;  tmp1038, tmp1037
	adc r26,r18	 ;  tmp1038, tmp1037
	adc r27,r19	 ;  tmp1038, tmp1037
	movw r16,r24	 ;  tmp1039, tmp1038
	movw r18,r26	 ;  tmp1039, tmp1038
	ldi r30,21	 ; ,
	1:
	lsl r16	 ;  tmp1039
	rol r17	 ;  tmp1039
	rol r18	 ;  tmp1039
	rol r19	 ;  tmp1039
	dec r30	 ; 
	brne 1b
	ldi r31,11	 ; ,
	1:
	lsr r27	 ;  b.24
	ror r26	 ;  b.24
	ror r25	 ;  b.24
	ror r24	 ;  b.24
	dec r31	 ; 
	brne 1b
	or r24,r16	 ;  b.24, tmp1039
	or r25,r17	 ;  b.24, tmp1039
	or r26,r18	 ;  b.24, tmp1039
	or r27,r19	 ;  b.24, tmp1039
	add r24,r8	 ;  b.24, c.23
	adc r25,r9	 ;  b.24, c.23
	adc r26,r10	 ;  b.24, c.23
	adc r27,r11	 ;  b.24, c.23
	ldd r16,Y+41	 ;  tmp1045, %sfp
	ldd r17,Y+42	 ;  tmp1045, %sfp
	ldd r18,Y+43	 ;  tmp1045, %sfp
	ldd r19,Y+44	 ;  tmp1045, %sfp
	subi r16,-79	 ;  tmp1045,
	sbci r17,-127	 ; ,
	sbci r18,87	 ; ,
	sbci r19,-112	 ; ,
	add r16,r20	 ;  tmp1045, a.21
	adc r17,r21	 ;  tmp1045, a.21
	adc r18,r22	 ;  tmp1045, a.21
	adc r19,r23	 ;  tmp1045, a.21
	movw r22,r14	 ;  tmp1044, d.22
	movw r20,r12	 ;  tmp1044, d.22
	com r20	 ;  tmp1044
	com r21	 ;  tmp1044
	com r22	 ;  tmp1044
	com r23	 ;  tmp1044
	or r20,r24	 ;  tmp1044, b.24
	or r21,r25	 ;  tmp1044, b.24
	or r22,r26	 ;  tmp1044, b.24
	or r23,r27	 ;  tmp1044, b.24
	eor r20,r8	 ;  tmp1044, c.23
	eor r21,r9	 ;  tmp1044, c.23
	eor r22,r10	 ;  tmp1044, c.23
	eor r23,r11	 ;  tmp1044, c.23
	add r16,r20	 ;  tmp1045, tmp1044
	adc r17,r21	 ;  tmp1045, tmp1044
	adc r18,r22	 ;  tmp1045, tmp1044
	adc r19,r23	 ;  tmp1045, tmp1044
	movw r22,r18	 ;  tmp1046, tmp1045
	movw r20,r16	 ;  tmp1046, tmp1045
	ldi r30,6	 ; ,
	1:
	lsl r20	 ;  tmp1046
	rol r21	 ;  tmp1046
	rol r22	 ;  tmp1046
	rol r23	 ;  tmp1046
	dec r30	 ; 
	brne 1b
	ldi r31,26	 ; ,
	1:
	lsr r19	 ;  a.21
	ror r18	 ;  a.21
	ror r17	 ;  a.21
	ror r16	 ;  a.21
	dec r31	 ; 
	brne 1b
	or r16,r20	 ;  a.21, tmp1046
	or r17,r21	 ;  a.21, tmp1046
	or r18,r22	 ;  a.21, tmp1046
	or r19,r23	 ;  a.21, tmp1046
	add r16,r24	 ;  a.21, b.24
	adc r17,r25	 ;  a.21, b.24
	adc r18,r26	 ;  a.21, b.24
	adc r19,r27	 ;  a.21, b.24
	adiw r28,69-60	 ;  %sfp
	ldd r20,Y+60	 ;  tmp1052
	ldd r21,Y+61	 ;  tmp1052
	ldd r22,Y+62	 ;  tmp1052
	ldd r23,Y+63	 ;  tmp1052
	sbiw r28,69-60	 ;  %sfp
	subi r20,32	 ;  tmp1052,
	sbci r21,25	 ; ,
	sbci r22,-45	 ; ,
	sbci r23,1	 ; ,
	add r20,r12	 ;  tmp1052, d.22
	adc r21,r13	 ;  tmp1052, d.22
	adc r22,r14	 ;  tmp1052, d.22
	adc r23,r15	 ;  tmp1052, d.22
	movw r14,r10	 ;  tmp1051, c.23
	movw r12,r8	 ;  tmp1051, c.23
	com r12	 ;  tmp1051
	com r13	 ;  tmp1051
	com r14	 ;  tmp1051
	com r15	 ;  tmp1051
	or r12,r16	 ;  tmp1051, a.21
	or r13,r17	 ;  tmp1051, a.21
	or r14,r18	 ;  tmp1051, a.21
	or r15,r19	 ;  tmp1051, a.21
	eor r12,r24	 ;  tmp1051, b.24
	eor r13,r25	 ;  tmp1051, b.24
	eor r14,r26	 ;  tmp1051, b.24
	eor r15,r27	 ;  tmp1051, b.24
	add r20,r12	 ;  tmp1052, tmp1051
	adc r21,r13	 ;  tmp1052, tmp1051
	adc r22,r14	 ;  tmp1052, tmp1051
	adc r23,r15	 ;  tmp1052, tmp1051
	movw r12,r20	 ;  tmp1053, tmp1052
	movw r14,r22	 ;  tmp1053, tmp1052
	ldi r30,10	 ; ,
	1:
	lsl r12	 ;  tmp1053
	rol r13	 ;  tmp1053
	rol r14	 ;  tmp1053
	rol r15	 ;  tmp1053
	dec r30	 ; 
	brne 1b
	ldi r31,22	 ; ,
	1:
	lsr r23	 ;  d.22
	ror r22	 ;  d.22
	ror r21	 ;  d.22
	ror r20	 ;  d.22
	dec r31	 ; 
	brne 1b
	or r20,r12	 ;  d.22, tmp1053
	or r21,r13	 ;  d.22, tmp1053
	or r22,r14	 ;  d.22, tmp1053
	or r23,r15	 ;  d.22, tmp1053
	add r20,r16	 ;  d.22, a.21
	adc r21,r17	 ;  d.22, a.21
	adc r22,r18	 ;  d.22, a.21
	adc r23,r19	 ;  d.22, a.21
	ldd r12,Y+33	 ;  tmp1059, %sfp
	ldd r13,Y+34	 ;  tmp1059, %sfp
	ldd r14,Y+35	 ;  tmp1059, %sfp
	ldd r15,Y+36	 ;  tmp1059, %sfp
	ldi r31,-20	 ; ,
	sub r12,r31	 ;  tmp1059,
	ldi r31,-68	 ; ,
	sbc r13,r31	 ; ,
	ldi r31,-2	 ; ,
	sbc r14,r31	 ; ,
	ldi r31,92	 ; ,
	sbc r15,r31	 ; ,
	add r12,r8	 ;  tmp1059, c.23
	adc r13,r9	 ;  tmp1059, c.23
	adc r14,r10	 ;  tmp1059, c.23
	adc r15,r11	 ;  tmp1059, c.23
	movw r8,r24	 ;  tmp1058, b.24
	movw r10,r26	 ;  tmp1058, b.24
	com r8	 ;  tmp1058
	com r9	 ;  tmp1058
	com r10	 ;  tmp1058
	com r11	 ;  tmp1058
	or r8,r20	 ;  tmp1058, d.22
	or r9,r21	 ;  tmp1058, d.22
	or r10,r22	 ;  tmp1058, d.22
	or r11,r23	 ;  tmp1058, d.22
	eor r8,r16	 ;  tmp1058, a.21
	eor r9,r17	 ;  tmp1058, a.21
	eor r10,r18	 ;  tmp1058, a.21
	eor r11,r19	 ;  tmp1058, a.21
	add r12,r8	 ;  tmp1059, tmp1058
	adc r13,r9	 ;  tmp1059, tmp1058
	adc r14,r10	 ;  tmp1059, tmp1058
	adc r15,r11	 ;  tmp1059, tmp1058
	movw r8,r12	 ;  tmp1060, tmp1059
	movw r10,r14	 ;  tmp1060, tmp1059
	ldi r30,15	 ; ,
	1:
	lsl r8	 ;  tmp1060
	rol r9	 ;  tmp1060
	rol r10	 ;  tmp1060
	rol r11	 ;  tmp1060
	dec r30	 ; 
	brne 1b
	ldi r31,17	 ; ,
	1:
	lsr r15	 ;  c.23
	ror r14	 ;  c.23
	ror r13	 ;  c.23
	ror r12	 ;  c.23
	dec r31	 ; 
	brne 1b
	or r12,r8	 ;  c.23, tmp1060
	or r13,r9	 ;  c.23, tmp1060
	or r14,r10	 ;  c.23, tmp1060
	or r15,r11	 ;  c.23, tmp1060
	add r12,r20	 ;  c.23, d.22
	adc r13,r21	 ;  c.23, d.22
	adc r14,r22	 ;  c.23, d.22
	adc r15,r23	 ;  c.23, d.22
	adiw r28,61-60	 ;  %sfp
	ldd r8,Y+60	 ;  tmp1066
	ldd r9,Y+61	 ;  tmp1066
	ldd r10,Y+62	 ;  tmp1066
	ldd r11,Y+63	 ;  tmp1066
	sbiw r28,61-60	 ;  %sfp
	ldi r30,95	 ; ,
	sub r8,r30	 ;  tmp1066,
	ldi r30,-18	 ; ,
	sbc r9,r30	 ; ,
	ldi r30,-9	 ; ,
	sbc r10,r30	 ; ,
	ldi r30,-79	 ; ,
	sbc r11,r30	 ; ,
	add r8,r24	 ;  tmp1066, b.24
	adc r9,r25	 ;  tmp1066, b.24
	adc r10,r26	 ;  tmp1066, b.24
	adc r11,r27	 ;  tmp1066, b.24
	movw r26,r18	 ;  tmp1065, a.21
	movw r24,r16	 ;  tmp1065, a.21
	com r24	 ;  tmp1065
	com r25	 ;  tmp1065
	com r26	 ;  tmp1065
	com r27	 ;  tmp1065
	or r24,r12	 ;  tmp1065, c.23
	or r25,r13	 ;  tmp1065, c.23
	or r26,r14	 ;  tmp1065, c.23
	or r27,r15	 ;  tmp1065, c.23
	eor r24,r20	 ;  tmp1065, d.22
	eor r25,r21	 ;  tmp1065, d.22
	eor r26,r22	 ;  tmp1065, d.22
	eor r27,r23	 ;  tmp1065, d.22
	add r8,r24	 ;  tmp1066, tmp1065
	adc r9,r25	 ;  tmp1066, tmp1065
	adc r10,r26	 ;  tmp1066, tmp1065
	adc r11,r27	 ;  tmp1066, tmp1065
	movw r26,r10	 ;  tmp1067, tmp1066
	movw r24,r8	 ;  tmp1067, tmp1066
	ldi r30,21	 ; ,
	1:
	lsl r24	 ;  tmp1067
	rol r25	 ;  tmp1067
	rol r26	 ;  tmp1067
	rol r27	 ;  tmp1067
	dec r30	 ; 
	brne 1b
	ldi r31,11	 ; ,
	1:
	lsr r11	 ;  b.24
	ror r10	 ;  b.24
	ror r9	 ;  b.24
	ror r8	 ;  b.24
	dec r31	 ; 
	brne 1b
	or r8,r24	 ;  b.24, tmp1067
	or r9,r25	 ;  b.24, tmp1067
	or r10,r26	 ;  b.24, tmp1067
	or r11,r27	 ;  b.24, tmp1067
	add r8,r12	 ;  b.24, c.23
	adc r9,r13	 ;  b.24, c.23
	adc r10,r14	 ;  b.24, c.23
	adc r11,r15	 ;  b.24, c.23
	ldd r24,Y+25	 ;  tmp1073, %sfp
	ldd r25,Y+26	 ;  tmp1073, %sfp
	ldd r26,Y+27	 ;  tmp1073, %sfp
	ldd r27,Y+28	 ;  tmp1073, %sfp
	subi r24,126	 ;  tmp1073,
	sbci r25,-127	 ; ,
	sbci r26,-84	 ; ,
	sbci r27,8	 ; ,
	add r24,r16	 ;  tmp1073, a.21
	adc r25,r17	 ;  tmp1073, a.21
	adc r26,r18	 ;  tmp1073, a.21
	adc r27,r19	 ;  tmp1073, a.21
	movw r16,r20	 ;  tmp1072, d.22
	movw r18,r22	 ;  tmp1072, d.22
	com r16	 ;  tmp1072
	com r17	 ;  tmp1072
	com r18	 ;  tmp1072
	com r19	 ;  tmp1072
	or r16,r8	 ;  tmp1072, b.24
	or r17,r9	 ;  tmp1072, b.24
	or r18,r10	 ;  tmp1072, b.24
	or r19,r11	 ;  tmp1072, b.24
	eor r16,r12	 ;  tmp1072, c.23
	eor r17,r13	 ;  tmp1072, c.23
	eor r18,r14	 ;  tmp1072, c.23
	eor r19,r15	 ;  tmp1072, c.23
	add r24,r16	 ;  tmp1073, tmp1072
	adc r25,r17	 ;  tmp1073, tmp1072
	adc r26,r18	 ;  tmp1073, tmp1072
	adc r27,r19	 ;  tmp1073, tmp1072
	movw r16,r24	 ;  tmp1074, tmp1073
	movw r18,r26	 ;  tmp1074, tmp1073
	ldi r30,6	 ; ,
	1:
	lsl r16	 ;  tmp1074
	rol r17	 ;  tmp1074
	rol r18	 ;  tmp1074
	rol r19	 ;  tmp1074
	dec r30	 ; 
	brne 1b
	ldi r31,26	 ; ,
	1:
	lsr r27	 ;  a.21
	ror r26	 ;  a.21
	ror r25	 ;  a.21
	ror r24	 ;  a.21
	dec r31	 ; 
	brne 1b
	or r24,r16	 ;  a.21, tmp1074
	or r25,r17	 ;  a.21, tmp1074
	or r26,r18	 ;  a.21, tmp1074
	or r27,r19	 ;  a.21, tmp1074
	add r24,r8	 ;  a.21, b.24
	adc r25,r9	 ;  a.21, b.24
	adc r26,r10	 ;  a.21, b.24
	adc r27,r11	 ;  a.21, b.24
	ldd r16,Y+53	 ;  tmp1080, %sfp
	ldd r17,Y+54	 ;  tmp1080, %sfp
	ldd r18,Y+55	 ;  tmp1080, %sfp
	ldd r19,Y+56	 ;  tmp1080, %sfp
	subi r16,-53	 ;  tmp1080,
	sbci r17,13	 ; ,
	sbci r18,-59	 ; ,
	sbci r19,66	 ; ,
	add r16,r20	 ;  tmp1080, d.22
	adc r17,r21	 ;  tmp1080, d.22
	adc r18,r22	 ;  tmp1080, d.22
	adc r19,r23	 ;  tmp1080, d.22
	movw r22,r14	 ;  tmp1079, c.23
	movw r20,r12	 ;  tmp1079, c.23
	com r20	 ;  tmp1079
	com r21	 ;  tmp1079
	com r22	 ;  tmp1079
	com r23	 ;  tmp1079
	or r20,r24	 ;  tmp1079, a.21
	or r21,r25	 ;  tmp1079, a.21
	or r22,r26	 ;  tmp1079, a.21
	or r23,r27	 ;  tmp1079, a.21
	eor r20,r8	 ;  tmp1079, b.24
	eor r21,r9	 ;  tmp1079, b.24
	eor r22,r10	 ;  tmp1079, b.24
	eor r23,r11	 ;  tmp1079, b.24
	add r16,r20	 ;  tmp1080, tmp1079
	adc r17,r21	 ;  tmp1080, tmp1079
	adc r18,r22	 ;  tmp1080, tmp1079
	adc r19,r23	 ;  tmp1080, tmp1079
	movw r22,r18	 ;  tmp1081, tmp1080
	movw r20,r16	 ;  tmp1081, tmp1080
	ldi r30,10	 ; ,
	1:
	lsl r20	 ;  tmp1081
	rol r21	 ;  tmp1081
	rol r22	 ;  tmp1081
	rol r23	 ;  tmp1081
	dec r30	 ; 
	brne 1b
	ldi r31,22	 ; ,
	1:
	lsr r19	 ;  d.22
	ror r18	 ;  d.22
	ror r17	 ;  d.22
	ror r16	 ;  d.22
	dec r31	 ; 
	brne 1b
	or r16,r20	 ;  d.22, tmp1081
	or r17,r21	 ;  d.22, tmp1081
	or r18,r22	 ;  d.22, tmp1081
	or r19,r23	 ;  d.22, tmp1081
	add r16,r24	 ;  d.22, a.21
	adc r17,r25	 ;  d.22, a.21
	adc r18,r26	 ;  d.22, a.21
	adc r19,r27	 ;  d.22, a.21
	ldd r20,Y+17	 ;  tmp1087, %sfp
	ldd r21,Y+18	 ;  tmp1087, %sfp
	ldd r22,Y+19	 ;  tmp1087, %sfp
	ldd r23,Y+20	 ;  tmp1087, %sfp
	subi r20,69	 ;  tmp1087,
	sbci r21,45	 ; ,
	sbci r22,40	 ; ,
	sbci r23,-43	 ; ,
	add r20,r12	 ;  tmp1087, c.23
	adc r21,r13	 ;  tmp1087, c.23
	adc r22,r14	 ;  tmp1087, c.23
	adc r23,r15	 ;  tmp1087, c.23
	movw r14,r10	 ;  tmp1086, b.24
	movw r12,r8	 ;  tmp1086, b.24
	com r12	 ;  tmp1086
	com r13	 ;  tmp1086
	com r14	 ;  tmp1086
	com r15	 ;  tmp1086
	or r12,r16	 ;  tmp1086, d.22
	or r13,r17	 ;  tmp1086, d.22
	or r14,r18	 ;  tmp1086, d.22
	or r15,r19	 ;  tmp1086, d.22
	eor r12,r24	 ;  tmp1086, a.21
	eor r13,r25	 ;  tmp1086, a.21
	eor r14,r26	 ;  tmp1086, a.21
	eor r15,r27	 ;  tmp1086, a.21
	add r20,r12	 ;  tmp1087, tmp1086
	adc r21,r13	 ;  tmp1087, tmp1086
	adc r22,r14	 ;  tmp1087, tmp1086
	adc r23,r15	 ;  tmp1087, tmp1086
	movw r12,r20	 ;  tmp1088, tmp1087
	movw r14,r22	 ;  tmp1088, tmp1087
	ldi r30,15	 ; ,
	1:
	lsl r12	 ;  tmp1088
	rol r13	 ;  tmp1088
	rol r14	 ;  tmp1088
	rol r15	 ;  tmp1088
	dec r30	 ; 
	brne 1b
	ldi r31,17	 ; ,
	1:
	lsr r23	 ;  c.23
	ror r22	 ;  c.23
	ror r21	 ;  c.23
	ror r20	 ;  c.23
	dec r31	 ; 
	brne 1b
	or r20,r12	 ;  c.23, tmp1088
	or r21,r13	 ;  c.23, tmp1088
	or r22,r14	 ;  c.23, tmp1088
	or r23,r15	 ;  c.23, tmp1088
	add r20,r16	 ;  c.23, d.22
	adc r21,r17	 ;  c.23, d.22
	adc r22,r18	 ;  c.23, d.22
	adc r23,r19	 ;  c.23, d.22
	adiw r28,77-60	 ;  %sfp
	ldd r12,Y+60	 ;  tmp1089
	ldd r13,Y+61	 ;  tmp1089
	ldd r14,Y+62	 ;  tmp1089
	ldd r15,Y+63	 ;  tmp1089
	sbiw r28,77-60	 ;  %sfp
	add r12,r24	 ;  tmp1089, a.21
	adc r13,r25	 ;  tmp1089, a.21
	adc r14,r26	 ;  tmp1089, a.21
	adc r15,r27	 ;  tmp1089, a.21
	adiw r28,89-62	 ;  %sfp
	ldd r30,Y+62	 ; 
	ldd r31,Y+63	 ; 
	sbiw r28,89-62	 ;  %sfp
	std Z+8,r12	 ;  pms_1(D)->abcd, tmp1089
	std Z+9,r13	 ;  pms_1(D)->abcd, tmp1089
	std Z+10,r14	 ;  pms_1(D)->abcd, tmp1089
	std Z+11,r15	 ;  pms_1(D)->abcd, tmp1089
	ldd r12,Y+1	 ;  tmp1101, %sfp
	ldd r13,Y+2	 ;  tmp1101, %sfp
	ldd r14,Y+3	 ;  tmp1101, %sfp
	ldd r15,Y+4	 ;  tmp1101, %sfp
	add r12,r20	 ;  tmp1101, c.23
	adc r13,r21	 ;  tmp1101, c.23
	adc r14,r22	 ;  tmp1101, c.23
	adc r15,r23	 ;  tmp1101, c.23
	ldd r4,Y+45	 ;  tmp1096, %sfp
	ldd r5,Y+46	 ;  tmp1096, %sfp
	ldd r6,Y+47	 ;  tmp1096, %sfp
	ldd r7,Y+48	 ;  tmp1096, %sfp
	ldi r31,111	 ; ,
	sub r4,r31	 ;  tmp1096,
	ldi r31,44	 ; ,
	sbc r5,r31	 ; ,
	ldi r31,121	 ; ,
	sbc r6,r31	 ; ,
	ldi r31,20	 ; ,
	sbc r7,r31	 ; ,
	add r4,r8	 ;  tmp1096, b.24
	adc r5,r9	 ;  tmp1096, b.24
	adc r6,r10	 ;  tmp1096, b.24
	adc r7,r11	 ;  tmp1096, b.24
	com r24	 ;  tmp1095
	com r25	 ;  tmp1095
	com r26	 ;  tmp1095
	com r27	 ;  tmp1095
	or r24,r20	 ;  tmp1095, c.23
	or r25,r21	 ;  tmp1095, c.23
	or r26,r22	 ;  tmp1095, c.23
	or r27,r23	 ;  tmp1095, c.23
	eor r24,r16	 ;  tmp1095, d.22
	eor r25,r17	 ;  tmp1095, d.22
	eor r26,r18	 ;  tmp1095, d.22
	eor r27,r19	 ;  tmp1095, d.22
	add r4,r24	 ;  tmp1096, tmp1095
	adc r5,r25	 ;  tmp1096, tmp1095
	adc r6,r26	 ;  tmp1096, tmp1095
	adc r7,r27	 ;  tmp1096, tmp1095
	movw r26,r6	 ;  tmp1100, tmp1096
	movw r24,r4	 ;  tmp1100, tmp1096
	ldi r30,21	 ; ,
	1:
	lsl r24	 ;  tmp1100
	rol r25	 ;  tmp1100
	rol r26	 ;  tmp1100
	rol r27	 ;  tmp1100
	dec r30	 ; 
	brne 1b
	ldi r31,11	 ; ,
	1:
	lsr r7	 ;  tmp1099
	ror r6	 ;  tmp1099
	ror r5	 ;  tmp1099
	ror r4	 ;  tmp1099
	dec r31	 ; 
	brne 1b
	or r24,r4	 ;  tmp1100, tmp1099
	or r25,r5	 ;  tmp1100, tmp1099
	or r26,r6	 ;  tmp1100, tmp1099
	or r27,r7	 ;  tmp1100, tmp1099
	add r12,r24	 ;  tmp1101, tmp1100
	adc r13,r25	 ;  tmp1101, tmp1100
	adc r14,r26	 ;  tmp1101, tmp1100
	adc r15,r27	 ;  tmp1101, tmp1100
	adiw r28,89-62	 ;  %sfp
	ldd r26,Y+62	 ; 
	ldd r27,Y+63	 ; 
	sbiw r28,89-62	 ;  %sfp
	adiw r26,12	 ;  pms_1(D)->abcd
	st X+,r12	 ;  tmp1101
	st X+,r13	 ;  tmp1101
	st X+,r14	 ;  tmp1101
	st X,r15	 ;  tmp1101
	sbiw r26,12+3	 ;  pms_1(D)->abcd
	ldd r8,Y+5	 ; , %sfp
	ldd r9,Y+6	 ; , %sfp
	ldd r10,Y+7	 ; , %sfp
	ldd r11,Y+8	 ; , %sfp
	add r20,r8	 ;  tmp1102,
	adc r21,r9	 ;  tmp1102,
	adc r22,r10	 ;  tmp1102,
	adc r23,r11	 ;  tmp1102,
	adiw r26,16	 ;  pms_1(D)->abcd
	st X+,r20	 ;  tmp1102
	st X+,r21	 ;  tmp1102
	st X+,r22	 ;  tmp1102
	st X,r23	 ;  tmp1102
	sbiw r26,16+3	 ;  pms_1(D)->abcd
	adiw r28,73-60	 ;  %sfp
	ldd r8,Y+60	 ; 
	ldd r9,Y+61	 ; 
	ldd r10,Y+62	 ; 
	ldd r11,Y+63	 ; 
	sbiw r28,73-60	 ;  %sfp
	add r16,r8	 ;  tmp1103,
	adc r17,r9	 ;  tmp1103,
	adc r18,r10	 ;  tmp1103,
	adc r19,r11	 ;  tmp1103,
	adiw r26,20	 ;  pms_1(D)->abcd
	st X+,r16	 ;  tmp1103
	st X+,r17	 ;  tmp1103
	st X+,r18	 ;  tmp1103
	st X,r19	 ;  tmp1103
	sbiw r26,20+3	 ;  pms_1(D)->abcd
/* epilogue start */
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
	.section	.text._Z8md5_initP11md5_state_s,"ax",@progbits
.global	_Z8md5_initP11md5_state_s
	.type	_Z8md5_initP11md5_state_s, @function
_Z8md5_initP11md5_state_s:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24	 ;  pms, pms
	std Z+4,__zero_reg__	 ;  pms_1(D)->count,
	std Z+5,__zero_reg__	 ;  pms_1(D)->count,
	std Z+6,__zero_reg__	 ;  pms_1(D)->count,
	std Z+7,__zero_reg__	 ;  pms_1(D)->count,
	st Z,__zero_reg__	 ;  pms_1(D)->count,
	std Z+1,__zero_reg__	 ;  pms_1(D)->count,
	std Z+2,__zero_reg__	 ;  pms_1(D)->count,
	std Z+3,__zero_reg__	 ;  pms_1(D)->count,
	ldi r24,lo8(1)	 ;  tmp43,
	ldi r25,lo8(35)	 ; ,
	ldi r26,lo8(69)	 ; ,
	ldi r27,lo8(103)	 ; ,
	std Z+8,r24	 ;  pms_1(D)->abcd, tmp43
	std Z+9,r25	 ;  pms_1(D)->abcd, tmp43
	std Z+10,r26	 ;  pms_1(D)->abcd, tmp43
	std Z+11,r27	 ;  pms_1(D)->abcd, tmp43
	ldi r20,lo8(-119)	 ;  tmp44,
	ldi r21,lo8(-85)	 ; ,
	ldi r22,lo8(-51)	 ; ,
	ldi r23,lo8(-17)	 ; ,
	std Z+12,r20	 ;  pms_1(D)->abcd, tmp44
	std Z+13,r21	 ;  pms_1(D)->abcd, tmp44
	std Z+14,r22	 ;  pms_1(D)->abcd, tmp44
	std Z+15,r23	 ;  pms_1(D)->abcd, tmp44
	ldi r20,lo8(-2)	 ;  tmp45,
	ldi r21,lo8(-36)	 ; ,
	ldi r22,lo8(-70)	 ; ,
	ldi r23,lo8(-104)	 ; ,
	std Z+16,r20	 ;  pms_1(D)->abcd, tmp45
	std Z+17,r21	 ;  pms_1(D)->abcd, tmp45
	std Z+18,r22	 ;  pms_1(D)->abcd, tmp45
	std Z+19,r23	 ;  pms_1(D)->abcd, tmp45
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
	.section	.text._Z10md5_appendP11md5_state_sPKhm,"ax",@progbits
.global	_Z10md5_appendP11md5_state_sPKhm
	.type	_Z10md5_appendP11md5_state_sPKhm, @function
_Z10md5_appendP11md5_state_sPKhm:
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
	ld r24,Y	 ;  D.2215, pms_8(D)->count
	ldd r25,Y+1	 ;  D.2215, pms_8(D)->count
	ldd r26,Y+2	 ;  D.2215, pms_8(D)->count
	ldd r27,Y+3	 ;  D.2215, pms_8(D)->count
	cp r18,__zero_reg__	 ;  nbytes
	cpc r19,__zero_reg__	 ;  nbytes
	cpc r20,__zero_reg__	 ;  nbytes
	cpc r21,__zero_reg__	 ;  nbytes
	brne .+2	 ; 
	rjmp .L3	 ; 
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
	cp r8,r4	 ;  D.2223, nbits
	cpc r9,r5	 ;  D.2223, nbits
	cpc r10,r6	 ;  D.2223, nbits
	cpc r11,r7	 ;  D.2223, nbits
	brsh .L6	 ; ,
	subi r20,-1	 ;  tmp99,
	sbci r21,-1	 ; ,
	sbci r22,-1	 ; ,
	sbci r23,-1	 ; ,
	std Y+4,r20	 ;  pms_8(D)->count, tmp99
	std Y+5,r21	 ;  pms_8(D)->count, tmp99
	std Y+6,r22	 ;  pms_8(D)->count, tmp99
	std Y+7,r23	 ;  pms_8(D)->count, tmp99
.L6:
	ldi r21,3	 ; ,
	1:
	lsr r27	 ;  D.2461
	ror r26	 ;  D.2461
	ror r25	 ;  D.2461
	ror r24	 ;  D.2461
	dec r21	 ; 
	brne 1b
	andi r24,63	 ;  D.2461,
	clr r25	 ;  D.2461
	clr r26	 ;  D.2461
	clr r27	 ;  D.2461
	mov r8,r24	 ;  offset, D.2461
	tst r24	 ;  offset
	breq .L7	 ; ,
	add r24,r12	 ;  tmp101, nbytes
	adc r25,r13	 ;  tmp101, nbytes
	adc r26,r14	 ;  tmp101, nbytes
	adc r27,r15	 ;  tmp101, nbytes
	cpi r24,65	 ;  tmp101,
	cpc r25,__zero_reg__	 ; 
	cpc r26,__zero_reg__	 ; 
	cpc r27,__zero_reg__	 ; 
	brlo .L8	 ; ,
	ldi r20,lo8(64)	 ; ,
	mov r7,r20	 ;  copy,
	sub r7,r8	 ;  copy, offset
	rjmp .L9	 ; 
.L8:
	mov r7,r12	 ;  copy, nbytes
.L9:
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
	add r8,r10	 ;  tmp113, D.2236
	adc r9,r11	 ;  tmp113, D.2236
	ldi r24,64	 ; ,
	cp r8,r24	 ;  tmp113,
	cpc r9,__zero_reg__	 ; 
	brge .+2	 ; 
	rjmp .L3	 ; 
	add r16,r10	 ;  p, D.2236
	adc r17,r11	 ;  p, D.2236
	sub r12,r7	 ;  left, copy
	sbc r13,__zero_reg__	 ;  left
	sbc r14,__zero_reg__	 ;  left
	sbc r15,__zero_reg__	 ;  left
	movw r22,r28	 ;  tmp115, pms
	subi r22,-24	 ;  tmp115,
	sbci r23,-1	 ; ,
	movw r24,r28	 ; , pms
	call _Z11md5_processP11md5_state_sPKh	 ; 
.L7:
	movw r4,r12	 ;  left, left
	movw r6,r14	 ;  left, left
	movw r10,r16	 ;  p, p
	rjmp .L11	 ; 
.L12:
	movw r22,r10	 ; , p
	movw r24,r28	 ; , pms
	call _Z11md5_processP11md5_state_sPKh	 ; 
	ldi r24,64	 ; ,
	add r10,r24	 ;  p,
	adc r11,__zero_reg__	 ;  p
	ldi r24,64	 ; ,
	sub r4,r24	 ;  left,
	sbc r5,__zero_reg__	 ;  left
	sbc r6,__zero_reg__	 ;  left
	sbc r7,__zero_reg__	 ;  left
.L11:
	ldi r24,64	 ; ,
	cp r4,r24	 ;  left,
	cpc r5,__zero_reg__	 ;  left
	cpc r6,__zero_reg__	 ;  left
	cpc r7,__zero_reg__	 ;  left
	brsh .L12	 ; ,
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
	cp r20,__zero_reg__	 ;  left
	cpc r21,__zero_reg__	 ;  left
	cpc r22,__zero_reg__	 ;  left
	cpc r23,__zero_reg__	 ;  left
	breq .L3	 ; ,
	adiw r28,24	 ;  tmp118,
	movw r22,r24	 ; ,
	movw r24,r28	 ; ,
/* epilogue start */
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
	jmp memcpy	 ; 
.L3:
/* epilogue start */
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
.Lscope3:
	.section	.text._Z10md5_finishP11md5_state_sPh,"ax",@progbits
.global	_Z10md5_finishP11md5_state_sPh
	.type	_Z10md5_finishP11md5_state_sPh, @function
_Z10md5_finishP11md5_state_sPh:
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
	movw r22,r28	 ;  ivtmp.86,
	subi r22,-1	 ;  ivtmp.86,
	sbci r23,-1	 ;  ivtmp.86,
	ldi r18,0	 ;  ivtmp.79
	ldi r19,0	 ;  ivtmp.79
.L18:
	movw r30,r18	 ;  tmp146, ivtmp.79
	andi r30,252	 ;  tmp146,
	add r30,r16	 ;  tmp146, pms
	adc r31,r17	 ;  tmp146, pms
	movw r20,r18	 ;  tmp148, ivtmp.79
	andi r20,3	 ;  tmp148,
	clr r21	 ; 
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
	movw r30,r22	 ; , ivtmp.86
	st Z+,r24	 ;  MEM[base: D.2540_71, offset: 0B], tmp149
	movw r22,r30	 ;  ivtmp.86,
	subi r18,-1	 ;  ivtmp.79,
	sbci r19,-1	 ;  ivtmp.79,
	cpi r18,8	 ;  ivtmp.79,
	cpc r19,__zero_reg__	 ;  ivtmp.79
	brne .L18	 ; ,
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
	ldi r18,0	 ;  ivtmp.70
	ldi r19,0	 ;  ivtmp.70
.L19:
	movw r26,r18	 ;  tmp161, ivtmp.70
	andi r26,252	 ;  tmp161,
	add r26,r16	 ;  tmp161, pms
	adc r27,r17	 ;  tmp161, pms
	movw r20,r18	 ;  tmp163, ivtmp.70
	andi r20,3	 ;  tmp163,
	clr r21	 ; 
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
	st Z+,r24	 ;  MEM[base: D.2528_70, offset: 0B], tmp164
	subi r18,-1	 ;  ivtmp.70,
	sbci r19,-1	 ;  ivtmp.70,
	cpi r18,16	 ;  ivtmp.70,
	cpc r19,__zero_reg__	 ;  ivtmp.70
	brne .L19	 ; ,
/* epilogue start */
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
.Lscope4:
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
.Letext0:
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
