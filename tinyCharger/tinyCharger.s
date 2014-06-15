	.file	"tinyCharger.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C++ (GCC) version 4.7.2 (avr)
 ; 	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -I ../lib -I ../sd -I ../TinyDebugSerial
 ;  -imultilib avr25 -MMD tinyCharger.d -D F_CPU=8000000L tinyCharger.cpp
 ;  -mmcu=attiny85 -g -Os -Wall -ffunction-sections -fdata-sections
 ;  -fverbose-asm -fno-rtti -fno-enforce-eh-specs -fno-exceptions
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

	.stabs	"/Users/zigzagjoe/Documents/rawAVR/tinyCharger/",100,0,4,.Ltext0
	.stabs	"tinyCharger.cpp",100,0,4,.Ltext0
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
	.stabs	"size_t:t(0,28)=(0,12)",128,0,213,0
	.stabs	"._0:Tt(0,29)=s4quot:(0,9),0,16;rem:(0,9),16,16;;",128,0,68,0
	.stabs	"div_t:t(0,29)",128,0,71,0
	.stabs	"._1:Tt(0,30)=s8quot:(0,15),0,32;rem:(0,15),32,32;;",128,0,74,0
	.stabs	"ldiv_t:t(0,30)",128,0,77,0
	.stabs	"__compar_fn_t:t(0,31)=(0,32)=*(0,33)=f(0,9)",128,0,80,0
	.stabs	"int8_t:t(0,34)=(0,16)",128,0,121,0
	.stabs	"uint8_t:t(0,35)=(0,13)",128,0,122,0
	.stabs	"int16_t:t(0,36)=(0,9)",128,0,123,0
	.stabs	"uint16_t:t(0,37)=(0,12)",128,0,124,0
	.stabs	"int32_t:t(0,38)=(0,15)",128,0,125,0
	.stabs	"uint32_t:t(0,39)=(0,11)",128,0,126,0
	.stabs	"int64_t:t(0,40)=(0,14)",128,0,128,0
	.stabs	"uint64_t:t(0,41)=(0,10)",128,0,129,0
	.stabs	"intptr_t:t(0,42)=(0,36)",128,0,142,0
	.stabs	"uintptr_t:t(0,43)=(0,37)",128,0,147,0
	.stabs	"int_least8_t:t(0,44)=(0,34)",128,0,159,0
	.stabs	"uint_least8_t:t(0,45)=(0,35)",128,0,164,0
	.stabs	"int_least16_t:t(0,46)=(0,36)",128,0,169,0
	.stabs	"uint_least16_t:t(0,47)=(0,37)",128,0,174,0
	.stabs	"int_least32_t:t(0,48)=(0,38)",128,0,179,0
	.stabs	"uint_least32_t:t(0,49)=(0,39)",128,0,184,0
	.stabs	"int_least64_t:t(0,50)=(0,40)",128,0,192,0
	.stabs	"uint_least64_t:t(0,51)=(0,41)",128,0,199,0
	.stabs	"int_fast8_t:t(0,52)=(0,34)",128,0,213,0
	.stabs	"uint_fast8_t:t(0,53)=(0,35)",128,0,218,0
	.stabs	"int_fast16_t:t(0,54)=(0,36)",128,0,223,0
	.stabs	"uint_fast16_t:t(0,55)=(0,37)",128,0,228,0
	.stabs	"int_fast32_t:t(0,56)=(0,38)",128,0,233,0
	.stabs	"uint_fast32_t:t(0,57)=(0,39)",128,0,238,0
	.stabs	"int_fast64_t:t(0,58)=(0,40)",128,0,246,0
	.stabs	"uint_fast64_t:t(0,59)=(0,41)",128,0,253,0
	.stabs	"intmax_t:t(0,60)=(0,40)",128,0,273,0
	.stabs	"uintmax_t:t(0,61)=(0,41)",128,0,278,0
	.stabs	"int_farptr_t:t(0,62)=(0,38)",128,0,77,0
	.stabs	"uint_farptr_t:t(0,63)=(0,39)",128,0,81,0
	.stabs	"._2:Tt(0,64)=s3low:(0,13),0,8;high:(0,13),8,8;extended:(0,13),16,8;;",128,0,240,0
	.stabs	"__fuse_t:t(0,64)",128,0,244,0
	.stabs	"ptrdiff_t:t(0,65)=(0,9)",128,0,150,0
	.stabs	"word:t(0,66)=(0,12)",128,0,83,0
	.stabs	"boolean:t(0,67)=(0,35)",128,0,84,0
	.stabs	"byte:t(0,68)=(0,35)",128,0,85,0
	.stabs	"u8:t(0,69)=(0,13)",128,0,86,0
	.stabs	"u16:t(0,70)=(0,19)",128,0,87,0
	.stabs	"u32:t(0,71)=(0,11)",128,0,88,0
	.stabs	"String:Tt(0,72)=s7buffer:/1(0,73)=*(0,17),0,16;capacity:/1(0,12),16,16;len:/1(0,12),32,16;flags:/1(0,13),48,8;StringIfHelper::(0,74)=#(0,72),(0,4),(0,75)=*(0,76)=k(0,72),(0,4);:_ZNK6String14StringIfHelperEv;0B.;__base_ctor ::(0,77)=#(0,72),(0,4),(0,78)=*(0,72),(0,79)=*(0,80)=k(0,17),(0,4);:_ZN6StringC2EPKc;2A.;__comp_ctor ::(0,77):_ZN6StringC1EPKc;2A.;__base_ctor ::(0,81)=#(0,72),(0,4),(0,78),(0,82)=&(0,83)=k(0,84)=(0,72),(0,4);:_ZN6StringC2ERKS_;2A.;__comp_ctor ::(0,81):_ZN6StringC1ERKS_;2A.;__base_ctor ::(0,85)=#(0,72),(0,4),(0,78),(0,17),(0,4);:_ZN6StringC2Ec;2A.;__comp_ctor ::(0,85):_ZN6StringC1Ec;2A.;__base_ctor ::(0,86)=#(0,72),(0,4),(0,78),(0,13),(0,13),(0,4);:_ZN6StringC2Ehh;2A.;__comp_ctor ::(0,86):_ZN6StringC1Ehh;2A.;__base_ctor ::(0,87)=#(0,72),(0,4),(0,78),(0,9),(0,13),(0,4);:_ZN6StringC2Eih;2A.;__comp_ctor ::(0,87):_ZN6StringC1Eih;2A.;__base_ctor ::(0,88)=#(0,72),(0,4),(0,78),(0,12),(0,13),(0,4);:_ZN6StringC2Ejh;2A.;__comp_ctor ::(0,88):_ZN6StringC1Ejh;2A.;__base_ctor ::(0,89)=#(0,72),(0,4),(0,78),(0,15),(0,13),(0,4);:_ZN6StringC2Elh;2A.;__comp_ctor ::(0,89):_ZN6StringC1Elh;2A.;__base_ctor ::(0,90)=#(0,72),(0,4),(0,78),(0,11),(0,13),(0,4);:_ZN6StringC2Emh;2A.;__comp_ctor ::(0,90):_ZN6StringC1Emh;2A.;__base_dtor ::(0,91)=#(0,72),(0,4),(0,78),(0,4);:_ZN6StringD2Ev;2A.;__comp_dtor ::(0,91):_ZN6StringD1Ev;2A.;reserve::(0,92)=#(0,72),(0,13),(0,78),(0,12),(0,4);:_ZN6String7reserveEj;2A.;length::(0,93)=#(0,72),(0,12),(0,75),(0,4);:_ZNK6String6lengthEv;2B.;operator=::(0,94)=#(0,72),(0,95)=&(0,84),(0,78),(0,82),(0,4);:_ZN6StringaSERKS_;2A.(0,96)=#(0,72),(0,95),(0,78),(0,79),(0,4);:_ZN6StringaSEPKc;2A.;concat::(0,97)=#(0,72),(0,13),(0,78),(0,82),(0,4);:_ZN6String6concatERKS_;2A.(0,98)=#(0,72),(0,13),(0,78),(0,79),(0,4);:_ZN6String6concatEPKc;2A.(0,99)=#(0,72),(0,13),(0,78),(0,17),(0,4);:_ZN6String6concatEc;2A.(0,100)=#(0,72),(0,13),(0,78),(0,13),(0,4);:_ZN6String6concatEh;2A.(0,101)=#(0,72),(0,13),(0,78),(0,9),(0,4);:_ZN6String6concatEi;2A.(0,92):_ZN6String6concatEj;2A.(0,102)=#(0,72),(0,13),(0,78),(0,15),(0,4);:_ZN6String6concatEl;2A.(0,103)=#(0,72),(0,13),(0,78),(0,11),(0,4);:_ZN6String6concatEm;2A.;operator+=::(0,94):_ZN6StringpLERKS_;2A.(0,96):_ZN6StringpLEPKc;2A.(0,104)=#(0,72),(0,95),(0,78),(0,17),(0,4);:_ZN6StringpLEc;2A.(0,105)=#(0,72),(0,95),(0,78),(0,13),(0,4);:_ZN6StringpLEh;2A.(0,106)=#(0,72),(0,95),(0,78),(0,9),(0,4);:_ZN6StringpLEi;2A.(0,107)=#(0,72),(0,95),(0,78),(0,12),(0,4);:_ZN6StringpLEj;2A.(0,108)=#(0,72),(0,95),(0,78),(0,15),(0,4);:_ZN6StringpLEl;2A.(0,109)=#(0,72),(0,95),(0,78),(0,11),(0,4);:_ZN6StringpLEm;2A.;operator 1::(0,110)=#(0,72),(0,111)=(0,112)=s4__pfn:(0,113)=*(0,74),0,16;__delta:(0,9),16,16;;,(0,75),(0,4);:_ZNK6StringcvMS_KFvvEEv;2B.;compareTo::(0,114)=#(0,72),(0,9),(0,75),(0,82),(0,4);:_ZNK6String9compareToERKS_;2B.;equals::(0,115)=#(0,72),(0,13),(0,75),(0,82),(0,4);:_ZNK6String6equalsERKS_;2B.(0,116)=#(0,72),(0,13),(0,75),(0,79),(0,4);:_ZNK6String6equalsEPKc;2B.;operator==::(0,115):_ZNK6StringeqERKS_;2B.(0,116):_ZNK6StringeqEPKc;2B.;operator!=::(0,115):_ZNK6StringneERKS_;2B.(0,116):_ZNK6StringneEPKc;2B.;operator<::(0,115):_ZNK6StringltERKS_;2B.;operator>::(0,115):_ZNK6StringgtERKS_;2B.;operator<=::(0,115):_ZNK6StringleERKS_;2B.;operator>=::(0,115):_ZNK6StringgeERKS_;2B.;equalsIgnoreCase::(0,115):_ZNK6String16equalsIgnoreCaseERKS_;2B.;startsWith::(0,115):_ZNK6String10startsWithERKS_;2B.(0,117)=#(0,72),(0,13),(0,75),(0,82),(0,12),(0,4);:_ZNK6String10startsWithERKS_j;2B.;endsWith::(0,115):_ZNK6String8endsWithERKS_;2B.;charAt::(0,118)=#(0,72),(0,17),(0,75),(0,12),(0,4);:_ZNK6String6charAtEj;2B.;setCharAt::(0,119)=#(0,72),(0,4),(0,78),(0,12),(0,17),(0,4);:_ZN6String9setCharAtEjc;2A.;operator[]::(0,118):_ZNK6StringixEj;2B.(0,120)=#(0,72),(0,121)=&(0,17),(0,78),(0,12),(0,4);:_ZN6StringixEj;2A.;getBytes::(0,122)=#(0,72),(0,4),(0,75),(0,123)=*(0,13),(0,12),(0,12),(0,4);:_ZNK6String8getBytesEPhjj;2B.;toCharArray::(0,124)=#(0,72),(0,4),(0,75),(0,73),(0,12),(0,12),(0,4);:_ZNK6String11toCharArrayEPcjj;2B.;indexOf::(0,125)=#(0,72),(0,9),(0,75),(0,17),(0,4);:_ZNK6String7indexOfEc;2B.(0,126)=#(0,72),(0,9),(0,75),(0,17),(0,12),(0,4);:_ZNK6String7indexOfEcj;2B.(0,114):_ZNK6String7indexOfERKS_;2B.(0,127)=#(0,72),(0,9),(0,75),(0,82),(0,12),(0,4);:_ZNK6String7indexOfERKS_j;2B.;lastIndexOf::(0,125):_ZNK6String11lastIndexOfEc;2B.(0,126):_ZNK6String11lastIndexOfEcj;2B.(0,114):_ZNK6String11lastIndexOfERKS_;2B.(0,127):_ZNK6String11lastIndexOfERKS_j;2B.;substring::(0,128)=#(0,72),(0,84),(0,75),(0,12),(0,4);:_ZNK6String9substringEj;2B.(0,129)=#(0,72),(0,84),(0,75),(0,12),(0,12),(0,4);:_ZNK6String9substringEjj;2B.;replace::(0,130)=#(0,72),(0,4),(0,78),(0,17),(0,17),(0,4);:_ZN6String7replaceEcc;2A.(0,131)=#(0,72),(0,4),(0,78),(0,82),(0,82),(0,4);:_ZN6String7replaceERKS_S1_;2A.;toLowerCase::(0,91):_ZN6String11toLowerCaseEv;2A.;toUpperCase::(0,91):_ZN6String11toUpperCaseEv;2A.;trim::(0,91):_ZN6String4trimEv;2A.;toInt::(0,132)=#(0,72),(0,15),(0,75),(0,4);:_ZNK6String5toIntEv;2B.;init::(0,91):_ZN6String4initEv;1A.;invalidate::(0,91):_ZN6String10invalidateEv;1A.;changeBuffer::(0,92):_ZN6String12changeBufferEj;1A.;concat::(0,133)=#(0,72),(0,13),(0,78),(0,79),(0,12),(0,4);:_ZN6String6concatEPKcj;1A.;copy::(0,134)=#(0,72),(0,95),(0,78),(0,79),(0,12),(0,4);:_ZN6String4copyEPKcj;1A.;;",128,0,45,0
	.stabs	"StringSumHelper:Tt(0,135)=s7!1,020,(0,72);__base_ctor ::(0,136)=#(0,135),(0,4),(0,137)=*(0,135),(0,82),(0,4);:_ZN15StringSumHelperC2ERK6String;2A.;__comp_ctor ::(0,136):_ZN15StringSumHelperC1ERK6String;2A.;__base_ctor ::(0,138)=#(0,135),(0,4),(0,137),(0,79),(0,4);:_ZN15StringSumHelperC2EPKc;2A.;__comp_ctor ::(0,138):_ZN15StringSumHelperC1EPKc;2A.;__base_ctor ::(0,139)=#(0,135),(0,4),(0,137),(0,17),(0,4);:_ZN15StringSumHelperC2Ec;2A.;__comp_ctor ::(0,139):_ZN15StringSumHelperC1Ec;2A.;__base_ctor ::(0,140)=#(0,135),(0,4),(0,137),(0,13),(0,4);:_ZN15StringSumHelperC2Eh;2A.;__comp_ctor ::(0,140):_ZN15StringSumHelperC1Eh;2A.;__base_ctor ::(0,141)=#(0,135),(0,4),(0,137),(0,9),(0,4);:_ZN15StringSumHelperC2Ei;2A.;__comp_ctor ::(0,141):_ZN15StringSumHelperC1Ei;2A.;__base_ctor ::(0,142)=#(0,135),(0,4),(0,137),(0,12),(0,4);:_ZN15StringSumHelperC2Ej;2A.;__comp_ctor ::(0,142):_ZN15StringSumHelperC1Ej;2A.;__base_ctor ::(0,143)=#(0,135),(0,4),(0,137),(0,15),(0,4);:_ZN15StringSumHelperC2El;2A.;__comp_ctor ::(0,143):_ZN15StringSumHelperC1El;2A.;__base_ctor ::(0,144)=#(0,135),(0,4),(0,137),(0,11),(0,4);:_ZN15StringSumHelperC2Em;2A.;__comp_ctor ::(0,144):_ZN15StringSumHelperC1Em;2A.;;",128,0,191,0
	.stabs	"__gnuc_va_list:t(0,145)=(0,3)",128,0,40,0
	.stabs	"va_list:t(0,146)=(0,145)",128,0,102,0
	.stabs	"__file:Tt(0,147)=s14buf:(0,73),0,16;unget:(0,13),16,8;flags:(0,35),24,8;size:(0,9),32,16;len:(0,9),48,16;put:(0,148)=*(0,149)=f(0,9),64,16;get:(0,150)=*(0,151)=f(0,9),80,16;udata:(0,152)=*(0,4),96,16;;",128,0,242,0
	.stabs	"__guard:t(0,153)=(0,14)",128,0,15,0
	.stabs	"TinyDebugSerialWriter_9600:t(0,154)=(0,155)=xsTinyDebugSerialWriter_8_9600:",128,0,632,0
	.stabs	"TinyDebugSerialWriter_38400:t(0,156)=(0,157)=xsTinyDebugSerialWriter_8_38400:",128,0,633,0
	.stabs	"TinyDebugSerialWriter_115200:t(0,158)=(0,159)=xsTinyDebugSerialWriter_8_115200:",128,0,634,0
	.stabs	"._3:t(0,160)=eTIMEOUT:0,DELTAV:1,DELTAT:2,TEMPMAX:3,OUTOFRANGE:4,;",128,0,9,0
	.stabs	"Stream:Tt(0,161)=s12!1,020,(0,162)=xsPrint:;_timeout:/0(0,11),32,32;_startMillis:/0(0,11),64,32;__base_ctor ::(0,163)=#(0,161),(0,4),(0,164)=*(0,161),(0,165)=&(0,166)=k(0,161),(0,4);:_ZN6StreamC2ERKS_;2A.;__comp_ctor ::(0,163):_ZN6StreamC1ERKS_;2A.;timedRead::(0,167)=#(0,161),(0,9),(0,164),(0,4);:_ZN6Stream9timedReadEv;0A.;timedPeek::(0,167):_ZN6Stream9timedPeekEv;0A.;peekNextDigit::(0,167):_ZN6Stream13peekNextDigitEv;0A.;available::(0,167):_ZN6Stream9availableEv;2A*2;(0,161);;read::(0,167):_ZN6Stream4readEv;2A*3;(0,161);;peek::(0,167):_ZN6Stream4peekEv;2A*4;(0,161);;flush::(0,168)=#(0,161),(0,4),(0,164),(0,4);:_ZN6Stream5flushEv;2A*5;(0,161);;__base_ctor ::(0,168):_ZN6StreamC2Ev;2A.;__comp_ctor ::(0,168):_ZN6StreamC1Ev;2A.;setTimeout::(0,169)=#(0,161),(0,4),(0,164),(0,11),(0,4);:_ZN6Stream10setTimeoutEm;2A.;find::(0,170)=#(0,161),(0,24),(0,164),(0,73),(0,4);:_ZN6Stream4findEPc;2A.(0,171)=#(0,161),(0,24),(0,164),(0,73),(0,28),(0,4);:_ZN6Stream4findEPcj;2A.;findUntil::(0,172)=#(0,161),(0,24),(0,164),(0,73),(0,73),(0,4);:_ZN6Stream9findUntilEPcS0_;2A.(0,173)=#(0,161),(0,24),(0,164),(0,73),(0,28),(0,73),(0,28),(0,4);:_ZN6Stream9findUntilEPcjS0_j;2A.;parseInt::(0,174)=#(0,161),(0,15),(0,164),(0,4);:_ZN6Stream8parseIntEv;2A.;parseFloat::(0,175)=#(0,161),(0,20),(0,164),(0,4);:_ZN6Stream10parseFloatEv;2A.;readBytes::(0,176)=#(0,161),(0,28),(0,164),(0,73),(0,28),(0,4);:_ZN6Stream9readBytesEPcj;2A.;readBytesUntil::(0,177)=#(0,161),(0,28),(0,164),(0,17),(0,73),(0,28),(0,4);:_ZN6Stream14readBytesUntilEcPcj;2A.;readString::(0,178)=#(0,161),(0,72),(0,164),(0,4);:_ZN6Stream10readStringEv;2A.;readStringUntil::(0,179)=#(0,161),(0,72),(0,164),(0,17),(0,4);:_ZN6Stream15readStringUntilEc;2A.;parseInt::(0,180)=#(0,161),(0,15),(0,164),(0,17),(0,4);:_ZN6Stream8parseIntEc;1A.;parseFloat::(0,181)=#(0,161),(0,20),(0,164),(0,17),(0,4);:_ZN6Stream10parseFloatEc;1A.;;~%(0,162);",128,0,38,0
	.section	.text.__vector_8,"ax",@progbits
	.stabs	"__vector_8:F(0,4)",36,0,46,__vector_8
.global	__vector_8
	.type	__vector_8, @function
__vector_8:
	.stabd	46,0,0
	.stabn	68,0,46,.LM0-.LFBB1
.LM0:
.LFBB1:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,46,.LM1-.LFBB1
.LM1:
/* #APP */
 ;  46 "tinyCharger.cpp" 1
	reti
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	__vector_8, .-__vector_8
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabd	78,0,0
	.section	.text._Z16analogRead_noslph,"ax",@progbits
	.stabs	"_Z16analogRead_noslph:F(0,37)",36,0,48,_Z16analogRead_noslph
	.stabs	"pin:P(0,35)",64,0,48,24
.global	_Z16analogRead_noslph
	.type	_Z16analogRead_noslph, @function
_Z16analogRead_noslph:
	.stabd	46,0,0
	.stabn	68,0,48,.LM2-.LFBB2
.LM2:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB13:
	.stabn	68,0,52,.LM3-.LFBB2
.LM3:
	cpi r24,lo8(6)	 ;  pin,
	brsh .L6	 ; ,
.LBB14:
	.stabn	68,0,55,.LM4-.LFBB2
.LM4:
	mov r30,r24	 ;  tmp57, pin
	ldi r31,0	 ; 
	subi r30,lo8(-(_ZL11adc_mapping))	 ;  tmp57,
	sbci r31,hi8(-(_ZL11adc_mapping))	 ;  tmp57,
/* #APP */
 ;  55 "tinyCharger.cpp" 1
	lpm r30, Z	 ;  __result
	
 ;  0 "" 2
/* #NOAPP */
.LBE14:
	.stabn	68,0,57,.LM5-.LFBB2
.LM5:
	cpi r30,lo8(-1)	 ;  __result,
	breq .L6	 ; ,
	.stabn	68,0,62,.LM6-.LFBB2
.LM6:
	out 0x3,__zero_reg__	 ;  MEM[(volatile uint8_t *)35B],
	.stabn	68,0,63,.LM7-.LFBB2
.LM7:
	lds r24,aref	 ;  D.4012, aref
	or r24,r30	 ;  D.4012, __result
	out 0x7,r24	 ;  MEM[(volatile uint8_t *)39B], D.4012
	.stabn	68,0,65,.LM8-.LFBB2
.LM8:
	sbi 0x6,6	 ; ,
.L4:
	.stabn	68,0,66,.LM9-.LFBB2
.LM9:
	sbic 0x6,6	 ; ,
	rjmp .L4	 ; 
	.stabn	68,0,67,.LM10-.LFBB2
.LM10:
	in r18,0x4	 ;  v, MEM[(volatile uint16_t *)36B]
	in r19,0x4+1	 ;  v, MEM[(volatile uint16_t *)36B]
	.stabn	68,0,70,.LM11-.LFBB2
.LM11:
	rjmp .L3	 ; 
.L6:
	.stabn	68,0,53,.LM12-.LFBB2
.LM12:
	ldi r18,0	 ;  v
	ldi r19,0	 ;  v
.L3:
.LBE13:
	.stabn	68,0,71,.LM13-.LFBB2
.LM13:
	movw r24,r18	 ; ,
	ret
	.size	_Z16analogRead_noslph, .-_Z16analogRead_noslph
	.stabs	"v:r(0,37)",64,0,50,18
	.stabn	192,0,0,.LBB13-.LFBB2
	.stabn	224,0,0,.LBE13-.LFBB2
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabd	78,0,0
	.section	.text._Z10analogReadh,"ax",@progbits
	.stabs	"_Z10analogReadh:F(0,37)",36,0,73,_Z10analogReadh
	.stabs	"pin:P(0,35)",64,0,73,24
.global	_Z10analogReadh
	.type	_Z10analogReadh, @function
_Z10analogReadh:
	.stabd	46,0,0
	.stabn	68,0,73,.LM14-.LFBB3
.LM14:
.LFBB3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB15:
	.stabn	68,0,77,.LM15-.LFBB3
.LM15:
	cpi r24,lo8(6)	 ;  pin,
	brsh .L11	 ; ,
.LBB16:
	.stabn	68,0,80,.LM16-.LFBB3
.LM16:
	mov r30,r24	 ;  tmp57, pin
	ldi r31,0	 ; 
	subi r30,lo8(-(_ZL11adc_mapping))	 ;  tmp57,
	sbci r31,hi8(-(_ZL11adc_mapping))	 ;  tmp57,
/* #APP */
 ;  80 "tinyCharger.cpp" 1
	lpm r30, Z	 ;  __result
	
 ;  0 "" 2
/* #NOAPP */
.LBE16:
	.stabn	68,0,82,.LM17-.LFBB3
.LM17:
	cpi r30,lo8(-1)	 ;  __result,
	breq .L11	 ; ,
	.stabn	68,0,87,.LM18-.LFBB3
.LM18:
	out 0x3,__zero_reg__	 ;  MEM[(volatile uint8_t *)35B],
	.stabn	68,0,88,.LM19-.LFBB3
.LM19:
	lds r24,aref	 ;  D.3988, aref
	or r24,r30	 ;  D.3988, __result
	out 0x7,r24	 ;  MEM[(volatile uint8_t *)39B], D.3988
	.stabn	68,0,90,.LM20-.LFBB3
.LM20:
	in r24,0x35	 ;  D.3993, MEM[(volatile uint8_t *)85B]
	ori r24,lo8(32)	 ;  D.3993,
	out 0x35,r24	 ;  MEM[(volatile uint8_t *)85B], D.3993
	.stabn	68,0,91,.LM21-.LFBB3
.LM21:
/* #APP */
 ;  91 "tinyCharger.cpp" 1
	sei
 ;  0 "" 2
	.stabn	68,0,92,.LM22-.LFBB3
.LM22:
 ;  92 "tinyCharger.cpp" 1
	sleep
	
 ;  0 "" 2
	.stabn	68,0,93,.LM23-.LFBB3
.LM23:
/* #NOAPP */
	in r24,0x35	 ;  D.3999, MEM[(volatile uint8_t *)85B]
	andi r24,lo8(-33)	 ;  D.3999,
	out 0x35,r24	 ;  MEM[(volatile uint8_t *)85B], D.3999
	.stabn	68,0,94,.LM24-.LFBB3
.LM24:
	in r18,0x4	 ;  v, MEM[(volatile uint16_t *)36B]
	in r19,0x4+1	 ;  v, MEM[(volatile uint16_t *)36B]
	.stabn	68,0,97,.LM25-.LFBB3
.LM25:
	rjmp .L9	 ; 
.L11:
	.stabn	68,0,78,.LM26-.LFBB3
.LM26:
	ldi r18,0	 ;  v
	ldi r19,0	 ;  v
.L9:
.LBE15:
	.stabn	68,0,98,.LM27-.LFBB3
.LM27:
	movw r24,r18	 ; ,
	ret
	.size	_Z10analogReadh, .-_Z10analogReadh
	.stabs	"v:r(0,37)",64,0,75,18
	.stabn	192,0,0,.LBB15-.LFBB3
	.stabn	224,0,0,.LBE15-.LFBB3
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabd	78,0,0
	.section	.text._Z7avgReadh,"ax",@progbits
	.stabs	"_Z7avgReadh:F(0,37)",36,0,236,_Z7avgReadh
	.stabs	"c:P(0,68)",64,0,236,24
.global	_Z7avgReadh
	.type	_Z7avgReadh, @function
_Z7avgReadh:
	.stabd	46,0,0
	.stabn	68,0,236,.LM28-.LFBB4
.LM28:
.LFBB4:
	push r16	 ; 
	push r17	 ; 
	push r28	 ; 
	push r29	 ; 
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	.stabn	68,0,236,.LM29-.LFBB4
.LM29:
	ldi r16,lo8(16)	 ;  ivtmp.32,
	ldi r17,0	 ;  ivtmp.32
	.stabn	68,0,237,.LM30-.LFBB4
.LM30:
	ldi r28,0	 ;  r
	ldi r29,0	 ;  r
.L13:
.LBB17:
.LBB18:
	.stabn	68,0,240,.LM31-.LFBB4
.LM31:
	ldi r24,lo8(4)	 ; ,
	rcall _Z10analogReadh	 ; 
	add r28,r24	 ;  r,
	adc r29,r25	 ;  r,
	subi r16,1	 ;  ivtmp.32,
	sbc r17,__zero_reg__	 ;  ivtmp.32
	.stabn	68,0,239,.LM32-.LFBB4
.LM32:
	brne .L13	 ; ,
.LBE18:
	.stabn	68,0,242,.LM33-.LFBB4
.LM33:
	ldi r24,4	 ; ,
	1:
	lsr r29	 ;  tmp49
	ror r28	 ;  tmp49
	dec r24	 ; 
	brne 1b
.LBE17:
	.stabn	68,0,243,.LM34-.LFBB4
.LM34:
	movw r24,r28	 ; ,
/* epilogue start */
	pop r29	 ; 
	pop r28	 ; 
	pop r17	 ; 
	pop r16	 ; 
	ret
	.size	_Z7avgReadh, .-_Z7avgReadh
	.stabs	"r:r(0,37)",64,0,237,28
	.stabn	192,0,0,.LBB17-.LFBB4
	.stabn	224,0,0,.LBE17-.LFBB4
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabd	78,0,0
.global	__floatunsisf
.global	__mulsf3
	.section	.text._Z11tempAvgReadv,"ax",@progbits
	.stabs	"_Z11tempAvgReadv:F(0,20)",36,0,245,_Z11tempAvgReadv
.global	_Z11tempAvgReadv
	.type	_Z11tempAvgReadv, @function
_Z11tempAvgReadv:
	.stabd	46,0,0
	.stabn	68,0,245,.LM35-.LFBB5
.LM35:
.LFBB5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,246,.LM36-.LFBB5
.LM36:
	ldi r24,lo8(4)	 ; ,
	rcall _Z7avgReadh	 ; 
	movw r22,r24	 ;  D.3908, D.3908
	ldi r24,0	 ;  D.3908
	ldi r25,0	 ;  D.3908
	rcall __floatunsisf	 ; 
	ldi r18,lo8(8)	 ; ,
	ldi r19,lo8(32)	 ; ,
	ldi r20,lo8(-128)	 ; ,
	ldi r21,lo8(62)	 ; ,
	rcall __mulsf3	 ; 
	.stabn	68,0,247,.LM37-.LFBB5
.LM37:
	ret
	.size	_Z11tempAvgReadv, .-_Z11tempAvgReadv
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabd	78,0,0
	.section	.text._Z12voltsAvgReadv,"ax",@progbits
	.stabs	"_Z12voltsAvgReadv:F(0,20)",36,0,249,_Z12voltsAvgReadv
.global	_Z12voltsAvgReadv
	.type	_Z12voltsAvgReadv, @function
_Z12voltsAvgReadv:
	.stabd	46,0,0
	.stabn	68,0,249,.LM38-.LFBB6
.LM38:
.LFBB6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,250,.LM39-.LFBB6
.LM39:
	ldi r24,lo8(2)	 ; ,
	rcall _Z7avgReadh	 ; 
	movw r22,r24	 ;  D.3903, D.3903
	ldi r24,0	 ;  D.3903
	ldi r25,0	 ;  D.3903
	rcall __floatunsisf	 ; 
	ldi r18,lo8(10)	 ; ,
	ldi r19,0	 ; 
	ldi r20,lo8(36)	 ; ,
	ldi r21,lo8(59)	 ; ,
	rcall __mulsf3	 ; 
	ldi r18,lo8(49)	 ; ,
	ldi r19,lo8(8)	 ; ,
	ldi r20,lo8(-100)	 ; ,
	ldi r21,lo8(64)	 ; ,
	rcall __mulsf3	 ; 
	.stabn	68,0,251,.LM40-.LFBB6
.LM40:
	ret
	.size	_Z12voltsAvgReadv, .-_Z12voltsAvgReadv
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabd	78,0,0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Start: "
.LC1:
	.string	"End: "
	.section	.text.startup.main,"ax",@progbits
	.stabs	"main:F(0,9)",36,0,100,main
.global	main
	.type	main, @function
main:
	.stabd	46,0,0
	.stabn	68,0,100,.LM41-.LFBB7
.LM41:
.LFBB7:
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
/* stack size = 10 */
.L__stack_usage = 10
.LBB24:
.LBB25:
.LBB26:
	.stabs	"../TinyDebugSerial/TinyDebugSerial.h",132,0,0,.Ltext1
.Ltext1:
	.stabn	68,0,689,.LM42-.LFBB7
.LM42:
	ldi r24,lo8(tdsw38400)	 ;  tmp80,
	ldi r25,hi8(tdsw38400)	 ; ,
	sts Serial+12+1,r25	 ;  MEM[(struct TinyDebugSerialWriter * *)&Serial + 12B], tmp80
	sts Serial+12,r24	 ;  MEM[(struct TinyDebugSerialWriter * *)&Serial + 12B], tmp80
	.stabn	68,0,704,.LM43-.LFBB7
.LM43:
	lds r30,tdsw38400	 ;  MEM[(struct TinyDebugSerialWriter *)&tdsw38400]._vptr.TinyDebugSerialWriter, MEM[(struct TinyDebugSerialWriter *)&tdsw38400]._vptr.TinyDebugSerialWriter
	lds r31,tdsw38400+1	 ;  MEM[(struct TinyDebugSerialWriter *)&tdsw38400]._vptr.TinyDebugSerialWriter, MEM[(struct TinyDebugSerialWriter *)&tdsw38400]._vptr.TinyDebugSerialWriter
	ld __tmp_reg__,Z+	 ;  *D.4147_97
	ld r31,Z	 ;  *D.4147_97, *D.4147_97
	mov r30,__tmp_reg__	 ;  *D.4147_97
	icall
.LBE26:
.LBE25:
	.stabs	"tinyCharger.cpp",132,0,0,.Ltext2
.Ltext2:
	.stabn	68,0,104,.LM44-.LFBB7
.LM44:
	ldi r24,lo8(-128)	 ;  tmp84,
	out 0x6,r24	 ;  MEM[(volatile uint8_t *)38B], tmp84
	.stabn	68,0,105,.LM45-.LFBB7
.LM45:
	sbi 0x6,3	 ; ,
	.stabn	68,0,106,.LM46-.LFBB7
.LM46:
	in r24,0x6	 ;  D.3922, MEM[(volatile uint8_t *)38B]
	ori r24,lo8(6)	 ;  D.3922,
	out 0x6,r24	 ;  MEM[(volatile uint8_t *)38B], D.3922
	.stabn	68,0,108,.LM47-.LFBB7
.LM47:
	ldi r24,lo8(-112)	 ;  tmp89,
	sts aref,r24	 ;  aref, tmp89
	.stabn	68,0,110,.LM48-.LFBB7
.LM48:
	in r24,0x35	 ;  D.3930, MEM[(volatile uint8_t *)85B]
	andi r24,lo8(-25)	 ;  D.3930,
	ori r24,lo8(8)	 ;  D.3930,
	out 0x35,r24	 ;  MEM[(volatile uint8_t *)85B], D.3930
	.stabn	68,0,113,.LM49-.LFBB7
.LM49:
	sbi 0x17,1	 ; ,
	.stabn	68,0,114,.LM50-.LFBB7
.LM50:
	sbi 0x17,0	 ; ,
	.stabn	68,0,117,.LM51-.LFBB7
.LM51:
	sbi 0x14,4	 ; ,
	.stabn	68,0,118,.LM52-.LFBB7
.LM52:
	sbi 0x14,2	 ; ,
	.stabn	68,0,121,.LM53-.LFBB7
.LM53:
	rcall _Z12millis_startv	 ; 
	.stabn	68,0,122,.LM54-.LFBB7
.LM54:
/* #APP */
 ;  122 "tinyCharger.cpp" 1
	sei
 ;  0 "" 2
	.stabn	68,0,124,.LM55-.LFBB7
.LM55:
/* #NOAPP */
	ldi r16,0	 ;  bl
	.stabn	68,0,135,.LM56-.LFBB7
.LM56:
	ldi r18,lo8(-24)	 ; ,
	mov r8,r18	 ;  tmp112,
	ldi r18,lo8(3)	 ; ,
	mov r9,r18	 ; ,
	mov r10,__zero_reg__	 ; 
	mov r11,__zero_reg__	 ; 
	ldi r17,lo8(1)	 ;  tmp113,
.L21:
	.stabn	68,0,130,.LM57-.LFBB7
.LM57:
	rcall _Z6millisv	 ; 
	movw r12,r22	 ;  start,
	movw r14,r24	 ;  start,
	ldi r25,lo8(60)	 ; ,
	mov r3,r25	 ;  ivtmp.46,
.L20:
	.stabn	68,0,132,.LM58-.LFBB7
.LM58:
	rcall _Z11tempAvgReadv	 ; 
	std Y+1,r22	 ;  %sfp,
	std Y+2,r23	 ;  %sfp,
	std Y+3,r24	 ;  %sfp,
	std Y+4,r25	 ;  %sfp,
	.stabn	68,0,133,.LM59-.LFBB7
.LM59:
	rcall _Z12voltsAvgReadv	 ; 
	movw r4,r22	 ;  readingNewV,
	movw r6,r24	 ;  readingNewV,
	.stabn	68,0,135,.LM60-.LFBB7
.LM60:
	rcall _Z6millisv	 ; 
	movw r20,r10	 ; , tmp112
	movw r18,r8	 ; , tmp112
	rcall __udivmodsi4
	std Y+5,r18	 ;  %sfp,
	std Y+6,r19	 ;  %sfp,
	std Y+7,r20	 ;  %sfp,
	std Y+8,r21	 ;  %sfp,
	ldi r18,lo8(10)	 ; ,
	ldi r19,0	 ; 
	ldd r20,Y+5	 ; , %sfp
	ldd r21,Y+6	 ; , %sfp
	ldd r22,Y+7	 ; , %sfp
	ldd r23,Y+8	 ; , %sfp
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEmi	 ; 
	.stabn	68,0,136,.LM61-.LFBB7
.LM61:
	ldi r22,lo8(44)	 ; ,
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEc	 ; 
	.stabn	68,0,137,.LM62-.LFBB7
.LM62:
	ldi r18,lo8(4)	 ; ,
	ldi r19,0	 ; 
	ldd r20,Y+1	 ; , %sfp
	ldd r21,Y+2	 ; , %sfp
	ldd r22,Y+3	 ; , %sfp
	ldd r23,Y+4	 ; , %sfp
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEdi	 ; 
	.stabn	68,0,138,.LM63-.LFBB7
.LM63:
	ldi r22,lo8(44)	 ; ,
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEc	 ; 
	.stabn	68,0,139,.LM64-.LFBB7
.LM64:
	ldi r18,lo8(4)	 ; ,
	ldi r19,0	 ; 
	movw r22,r6	 ; , readingNewV
	movw r20,r4	 ; , readingNewV
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEdi	 ; 
	.stabn	68,0,140,.LM65-.LFBB7
.LM65:
	ldi r22,lo8(10)	 ; ,
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEc	 ; 
.LBB27:
.LBB28:
	.stabs	"/opt/local/lib/gcc/avr/4.7.2/../../../../avr/include/util/delay.h",132,0,0,.Ltext3
.Ltext3:
	.stabn	68,0,164,.LM66-.LFBB7
.LM66:
	ldi r18,lo8(1567999)	 ; ,
	ldi r24,hi8(1567999)	 ; ,
	ldi r25,hlo8(1567999)	 ; ,
	1: subi r18,1	 ; 
	sbci r24,0	 ; 
	sbci r25,0	 ; 
	brne 1b
	rjmp .
	nop
.LBE28:
.LBE27:
	.stabs	"tinyCharger.cpp",132,0,0,.Ltext4
.Ltext4:
	.stabn	68,0,144,.LM67-.LFBB7
.LM67:
	tst r16	 ;  bl
	breq .L18	 ; ,
	.stabn	68,0,145,.LM68-.LFBB7
.LM68:
	sbi 0x18,1	 ; ,
	rjmp .L19	 ; 
.L18:
	.stabn	68,0,147,.LM69-.LFBB7
.LM69:
	cbi 0x18,1	 ; ,
.L19:
	eor r16,r17	 ;  bl, tmp113
	dec r3	 ;  ivtmp.46
	.stabn	68,0,131,.LM70-.LFBB7
.LM70:
	breq .+2	 ; 
	rjmp .L20	 ; 
	.stabn	68,0,151,.LM71-.LFBB7
.LM71:
	rcall _Z6millisv	 ; 
	movw r4,r22	 ;  end,
	movw r6,r24	 ;  end,
	.stabn	68,0,152,.LM72-.LFBB7
.LM72:
	ldi r22,lo8(.LC0)	 ; ,
	ldi r23,hi8(.LC0)	 ; ,
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEPKc	 ; 
	.stabn	68,0,153,.LM73-.LFBB7
.LM73:
	ldi r18,lo8(10)	 ; ,
	ldi r19,0	 ; 
	movw r22,r14	 ; , start
	movw r20,r12	 ; , start
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print7printlnEmi	 ; 
	.stabn	68,0,154,.LM74-.LFBB7
.LM74:
	ldi r22,lo8(.LC1)	 ; ,
	ldi r23,hi8(.LC1)	 ; ,
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEPKc	 ; 
	.stabn	68,0,155,.LM75-.LFBB7
.LM75:
	ldi r18,lo8(10)	 ; ,
	ldi r19,0	 ; 
	movw r22,r6	 ; , end
	movw r20,r4	 ; , end
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print7printlnEmi	 ; 
	.stabn	68,0,129,.LM76-.LFBB7
.LM76:
	rjmp .L21	 ; 
.LBE24:
	.size	main, .-main
	.stabs	"bl:r(0,35)",64,0,124,16
	.stabs	"readingNewT:(0,20)",128,0,125,1
	.stabs	"readingNewV:r(0,20)",64,0,125,4
	.stabs	"start:r(0,39)",64,0,127,12
	.stabs	"end:r(0,39)",64,0,127,4
	.stabn	192,0,0,.LBB24-.LFBB7
	.stabn	224,0,0,.LBE24-.LFBB7
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabd	78,0,0
	.section	.rodata.str1.1
.LC2:
	.string	"Done charging in "
.LC3:
	.string	" minutes because of "
.LC4:
	.string	"3-hour timeout"
.LC5:
	.string	"high temp"
.LC6:
	.string	"low temp/voltage"
.LC7:
	.string	"temp delta"
.LC8:
	.string	"voltage delta"
.LC9:
	.string	" F, "
.LC10:
	.string	" V"
.global	__ltsf2
	.section	.text._Z4donei,"ax",@progbits
	.stabs	"_Z4donei:F(0,4)",36,0,254,_Z4donei
	.stabs	"why:P(0,9)",64,0,254,28
.global	_Z4donei
	.type	_Z4donei, @function
_Z4donei:
	.stabd	46,0,0
	.stabn	68,0,254,.LM77-.LFBB8
.LM77:
.LFBB8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r28,r24	 ;  why, why
.LBB29:
	.stabn	68,0,256,.LM78-.LFBB8
.LM78:
	cbi 0x18,0	 ; ,
	.stabn	68,0,257,.LM79-.LFBB8
.LM79:
	cbi 0x18,1	 ; ,
	.stabn	68,0,259,.LM80-.LFBB8
.LM80:
	rcall _Z6millisv	 ; 
	ldi r18,lo8(-24)	 ; ,
	ldi r19,lo8(3)	 ; ,
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	rcall __udivmodsi4
	.stabn	68,0,263,.LM81-.LFBB8
.LM81:
	movw r24,r20	 ; , tmp63
	movw r22,r18	 ; , tmp63
	ldi r18,lo8(60)	 ; ,
	ldi r19,0	 ; 
	ldi r20,0	 ; 
	ldi r21,0	 ; 
	rcall __divmodsi4
	mov r17,r18	 ;  D.3886, tmp78
	mov r16,r19	 ;  D.3886, tmp79
	mov r15,r20	 ;  D.3886, tmp80
	mov r14,r21	 ;  D.3886, tmp81
.L32:
	.stabn	68,0,262,.LM82-.LFBB8
.LM82:
	ldi r22,lo8(.LC2)	 ; ,
	ldi r23,hi8(.LC2)	 ; ,
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEPKc	 ; 
	.stabn	68,0,263,.LM83-.LFBB8
.LM83:
	ldi r18,lo8(10)	 ; ,
	ldi r19,0	 ; 
	mov r20,r17	 ; , D.3886
	mov r21,r16	 ; , D.3886
	mov r22,r15	 ; , D.3886
	mov r23,r14	 ; , D.3886
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEli	 ; 
	.stabn	68,0,264,.LM84-.LFBB8
.LM84:
	ldi r22,lo8(.LC3)	 ; ,
	ldi r23,hi8(.LC3)	 ; ,
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEPKc	 ; 
	.stabn	68,0,266,.LM85-.LFBB8
.LM85:
	cpi r28,2	 ;  why,
	cpc r29,__zero_reg__	 ;  why
	breq .L27	 ; ,
	brge .L30	 ; ,
	sbiw r28,0	 ;  why,
	breq .L25	 ; ,
	cpi r28,1	 ;  why,
	cpc r29,__zero_reg__	 ;  why
	brne .L24	 ; ,
	rjmp .L26	 ; 
.L30:
	cpi r28,3	 ;  why,
	cpc r29,__zero_reg__	 ;  why
	breq .L28	 ; ,
	cpi r28,4	 ;  why,
	cpc r29,__zero_reg__	 ;  why
	brne .L24	 ; ,
	rjmp .L29	 ; 
.L25:
	.stabn	68,0,267,.LM86-.LFBB8
.LM86:
	ldi r22,lo8(.LC4)	 ; ,
	ldi r23,hi8(.LC4)	 ; ,
	rjmp .L34	 ; 
.L28:
	.stabn	68,0,268,.LM87-.LFBB8
.LM87:
	ldi r22,lo8(.LC5)	 ; ,
	ldi r23,hi8(.LC5)	 ; ,
	rjmp .L34	 ; 
.L29:
	.stabn	68,0,269,.LM88-.LFBB8
.LM88:
	ldi r22,lo8(.LC6)	 ; ,
	ldi r23,hi8(.LC6)	 ; ,
	rjmp .L34	 ; 
.L27:
	.stabn	68,0,270,.LM89-.LFBB8
.LM89:
	ldi r22,lo8(.LC7)	 ; ,
	ldi r23,hi8(.LC7)	 ; ,
	rjmp .L34	 ; 
.L26:
	.stabn	68,0,271,.LM90-.LFBB8
.LM90:
	ldi r22,lo8(.LC8)	 ; ,
	ldi r23,hi8(.LC8)	 ; ,
.L34:
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEPKc	 ; 
.L24:
	.stabn	68,0,274,.LM91-.LFBB8
.LM91:
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print7printlnEv	 ; 
	.stabn	68,0,275,.LM92-.LFBB8
.LM92:
	rcall _Z11tempAvgReadv	 ; 
	movw r20,r22	 ;  D.3889,
	movw r22,r24	 ;  D.3889,
	ldi r18,lo8(2)	 ; ,
	ldi r19,0	 ; 
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEdi	 ; 
	.stabn	68,0,276,.LM93-.LFBB8
.LM93:
	ldi r22,lo8(.LC9)	 ; ,
	ldi r23,hi8(.LC9)	 ; ,
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEPKc	 ; 
	.stabn	68,0,277,.LM94-.LFBB8
.LM94:
	rcall _Z12voltsAvgReadv	 ; 
	movw r20,r22	 ;  D.3890,
	movw r22,r24	 ;  D.3890,
	ldi r18,lo8(2)	 ; ,
	ldi r19,0	 ; 
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print5printEdi	 ; 
	.stabn	68,0,278,.LM95-.LFBB8
.LM95:
	ldi r22,lo8(.LC10)	 ; ,
	ldi r23,hi8(.LC10)	 ; ,
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rcall _ZN5Print7printlnEPKc	 ; 
.LBB30:
.LBB31:
	.stabs	"/opt/local/lib/gcc/avr/4.7.2/../../../../avr/include/util/delay.h",132,0,0,.Ltext5
.Ltext5:
	.stabn	68,0,164,.LM96-.LFBB8
.LM96:
	ldi r18,lo8(1279999)	 ; ,
	ldi r24,hi8(1279999)	 ; ,
	ldi r25,hlo8(1279999)	 ; ,
	1: subi r18,1	 ; 
	sbci r24,0	 ; 
	sbci r25,0	 ; 
	brne 1b
	rjmp .
	nop
.L31:
.LBE31:
.LBE30:
	.stabs	"tinyCharger.cpp",132,0,0,.Ltext6
.Ltext6:
	.stabn	68,0,282,.LM97-.LFBB8
.LM97:
	rcall _Z12voltsAvgReadv	 ; 
	ldi r18,0	 ; 
	ldi r19,0	 ; 
	ldi r20,lo8(-64)	 ; ,
	ldi r21,lo8(64)	 ; ,
	rcall __ltsf2	 ; 
	sbrc r24,7	 ; ,
	rjmp .L31	 ; 
	.stabn	68,0,284,.LM98-.LFBB8
.LM98:
	sbi 0x18,0	 ; ,
.LBB32:
.LBB33:
	.stabs	"/opt/local/lib/gcc/avr/4.7.2/../../../../avr/include/util/delay.h",132,0,0,.Ltext7
.Ltext7:
	.stabn	68,0,164,.LM99-.LFBB8
.LM99:
	ldi r18,lo8(159999)	 ; ,
	ldi r24,hi8(159999)	 ; ,
	ldi r25,hlo8(159999)	 ; ,
	1: subi r18,1	 ; 
	sbci r24,0	 ; 
	sbci r25,0	 ; 
	brne 1b
	rjmp .
	nop
.LBE33:
.LBE32:
	.stabs	"tinyCharger.cpp",132,0,0,.Ltext8
.Ltext8:
	.stabn	68,0,286,.LM100-.LFBB8
.LM100:
	cbi 0x18,0	 ; ,
	.stabn	68,0,261,.LM101-.LFBB8
.LM101:
	rjmp .L32	 ; 
.LBE29:
	.size	_Z4donei, .-_Z4donei
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabd	78,0,0
	.section	.text.startup._GLOBAL__sub_I_Serial,"ax",@progbits
	.stabs	"_GLOBAL__sub_I_Serial:f(0,4)",36,0,288,_GLOBAL__sub_I_Serial
	.type	_GLOBAL__sub_I_Serial, @function
_GLOBAL__sub_I_Serial:
	.stabd	46,0,0
	.stabn	68,0,288,.LM102-.LFBB9
.LM102:
.LFBB9:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB36:
.LBB37:
	.stabn	68,0,20,.LM103-.LFBB9
.LM103:
	ldi r24,lo8(Serial)	 ; ,
	ldi r25,hi8(Serial)	 ; ,
	rjmp _ZN15TinyDebugSerialC1Ev	 ; 
.LBE37:
.LBE36:
	.size	_GLOBAL__sub_I_Serial, .-_GLOBAL__sub_I_Serial
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabd	78,0,0
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_Serial)
.global	aref
	.section	.bss.aref,"aw",@nobits
	.type	aref, @object
	.size	aref, 1
aref:
	.zero	1
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
	.byte	-1
	.byte	-1
	.byte	1
	.byte	3
	.byte	2
	.byte	0
	.stabs	"Serial:G(0,182)=xsTinyDebugSerial:",32,0,20,0
	.stabs	"adc_mapping:S(0,183)=ar(0,184)=r(0,184);0;0177777;;0;5;(0,185)=k(0,35)",38,0,30,_ZL11adc_mapping
	.stabs	"aref:G(0,68)",32,0,38,0
	.text
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
.global __do_clear_bss
