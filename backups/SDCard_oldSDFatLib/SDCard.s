	.file	"SDCard.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
 ;  GNU C++ (GCC) version 4.7.2 (avr)
 ; 	compiled by GNU C version 4.2.1 (Apple Inc. build 5666) (dot 3), GMP version 5.0.5, MPFR version 3.1.1-p2, MPC version 1.0.1
 ;  GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 ;  options passed:  -I lib -I sd -imultilib avr5 -MMD SDCard.d
 ;  -D F_CPU=20000000L SDCard.cpp -mmcu=atmega324pa -g -Os -Wall
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

	.stabs	"/Users/zigzagjoe/Documents/SDCard/",100,0,4,.Ltext0
	.stabs	"SDCard.cpp",100,0,4,.Ltext0
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
	.stabs	"word:t(0,66)=(0,12)",128,0,77,0
	.stabs	"boolean:t(0,67)=(0,35)",128,0,78,0
	.stabs	"byte:t(0,68)=(0,35)",128,0,79,0
	.stabs	"u8:t(0,69)=(0,13)",128,0,80,0
	.stabs	"u16:t(0,70)=(0,19)",128,0,81,0
	.stabs	"u32:t(0,71)=(0,11)",128,0,82,0
	.stabs	"String:Tt(0,72)=s7buffer:/1(0,73)=*(0,17),0,16;capacity:/1(0,12),16,16;len:/1(0,12),32,16;flags:/1(0,13),48,8;StringIfHelper::(0,74)=#(0,72),(0,4),(0,75)=*(0,76)=k(0,72),(0,4);:_ZNK6String14StringIfHelperEv;0B.;__base_ctor ::(0,77)=#(0,72),(0,4),(0,78)=*(0,72),(0,79)=*(0,80)=k(0,17),(0,4);:_ZN6StringC2EPKc;2A.;__comp_ctor ::(0,77):_ZN6StringC1EPKc;2A.;__base_ctor ::(0,81)=#(0,72),(0,4),(0,78),(0,82)=&(0,83)=k(0,84)=(0,72),(0,4);:_ZN6StringC2ERKS_;2A.;__comp_ctor ::(0,81):_ZN6StringC1ERKS_;2A.;__base_ctor ::(0,85)=#(0,72),(0,4),(0,78),(0,17),(0,4);:_ZN6StringC2Ec;2A.;__comp_ctor ::(0,85):_ZN6StringC1Ec;2A.;__base_ctor ::(0,86)=#(0,72),(0,4),(0,78),(0,13),(0,13),(0,4);:_ZN6StringC2Ehh;2A.;__comp_ctor ::(0,86):_ZN6StringC1Ehh;2A.;__base_ctor ::(0,87)=#(0,72),(0,4),(0,78),(0,9),(0,13),(0,4);:_ZN6StringC2Eih;2A.;__comp_ctor ::(0,87):_ZN6StringC1Eih;2A.;__base_ctor ::(0,88)=#(0,72),(0,4),(0,78),(0,12),(0,13),(0,4);:_ZN6StringC2Ejh;2A.;__comp_ctor ::(0,88):_ZN6StringC1Ejh;2A.;__base_ctor ::(0,89)=#(0,72),(0,4),(0,78),(0,15),(0,13),(0,4);:_ZN6StringC2Elh;2A.;__comp_ctor ::(0,89):_ZN6StringC1Elh;2A.;__base_ctor ::(0,90)=#(0,72),(0,4),(0,78),(0,11),(0,13),(0,4);:_ZN6StringC2Emh;2A.;__comp_ctor ::(0,90):_ZN6StringC1Emh;2A.;__base_dtor ::(0,91)=#(0,72),(0,4),(0,78),(0,4);:_ZN6StringD2Ev;2A.;__comp_dtor ::(0,91):_ZN6StringD1Ev;2A.;reserve::(0,92)=#(0,72),(0,13),(0,78),(0,12),(0,4);:_ZN6String7reserveEj;2A.;length::(0,93)=#(0,72),(0,12),(0,75),(0,4);:_ZNK6String6lengthEv;2B.;operator=::(0,94)=#(0,72),(0,95)=&(0,84),(0,78),(0,82),(0,4);:_ZN6StringaSERKS_;2A.(0,96)=#(0,72),(0,95),(0,78),(0,79),(0,4);:_ZN6StringaSEPKc;2A.;concat::(0,97)=#(0,72),(0,13),(0,78),(0,82),(0,4);:_ZN6String6concatERKS_;2A.(0,98)=#(0,72),(0,13),(0,78),(0,79),(0,4);:_ZN6String6concatEPKc;2A.(0,99)=#(0,72),(0,13),(0,78),(0,17),(0,4);:_ZN6String6concatEc;2A.(0,100)=#(0,72),(0,13),(0,78),(0,13),(0,4);:_ZN6String6concatEh;2A.(0,101)=#(0,72),(0,13),(0,78),(0,9),(0,4);:_ZN6String6concatEi;2A.(0,92):_ZN6String6concatEj;2A.(0,102)=#(0,72),(0,13),(0,78),(0,15),(0,4);:_ZN6String6concatEl;2A.(0,103)=#(0,72),(0,13),(0,78),(0,11),(0,4);:_ZN6String6concatEm;2A.;operator+=::(0,94):_ZN6StringpLERKS_;2A.(0,96):_ZN6StringpLEPKc;2A.(0,104)=#(0,72),(0,95),(0,78),(0,17),(0,4);:_ZN6StringpLEc;2A.(0,105)=#(0,72),(0,95),(0,78),(0,13),(0,4);:_ZN6StringpLEh;2A.(0,106)=#(0,72),(0,95),(0,78),(0,9),(0,4);:_ZN6StringpLEi;2A.(0,107)=#(0,72),(0,95),(0,78),(0,12),(0,4);:_ZN6StringpLEj;2A.(0,108)=#(0,72),(0,95),(0,78),(0,15),(0,4);:_ZN6StringpLEl;2A.(0,109)=#(0,72),(0,95),(0,78),(0,11),(0,4);:_ZN6StringpLEm;2A.;operator 1::(0,110)=#(0,72),(0,111)=(0,112)=s4__pfn:(0,113)=*(0,74),0,16;__delta:(0,9),16,16;;,(0,75),(0,4);:_ZNK6StringcvMS_KFvvEEv;2B.;compareTo::(0,114)=#(0,72),(0,9),(0,75),(0,82),(0,4);:_ZNK6String9compareToERKS_;2B.;equals::(0,115)=#(0,72),(0,13),(0,75),(0,82),(0,4);:_ZNK6String6equalsERKS_;2B.(0,116)=#(0,72),(0,13),(0,75),(0,79),(0,4);:_ZNK6String6equalsEPKc;2B.;operator==::(0,115):_ZNK6StringeqERKS_;2B.(0,116):_ZNK6StringeqEPKc;2B.;operator!=::(0,115):_ZNK6StringneERKS_;2B.(0,116):_ZNK6StringneEPKc;2B.;operator<::(0,115):_ZNK6StringltERKS_;2B.;operator>::(0,115):_ZNK6StringgtERKS_;2B.;operator<=::(0,115):_ZNK6StringleERKS_;2B.;operator>=::(0,115):_ZNK6StringgeERKS_;2B.;equalsIgnoreCase::(0,115):_ZNK6String16equalsIgnoreCaseERKS_;2B.;startsWith::(0,115):_ZNK6String10startsWithERKS_;2B.(0,117)=#(0,72),(0,13),(0,75),(0,82),(0,12),(0,4);:_ZNK6String10startsWithERKS_j;2B.;endsWith::(0,115):_ZNK6String8endsWithERKS_;2B.;charAt::(0,118)=#(0,72),(0,17),(0,75),(0,12),(0,4);:_ZNK6String6charAtEj;2B.;setCharAt::(0,119)=#(0,72),(0,4),(0,78),(0,12),(0,17),(0,4);:_ZN6String9setCharAtEjc;2A.;operator[]::(0,118):_ZNK6StringixEj;2B.(0,120)=#(0,72),(0,121)=&(0,17),(0,78),(0,12),(0,4);:_ZN6StringixEj;2A.;getBytes::(0,122)=#(0,72),(0,4),(0,75),(0,123)=*(0,13),(0,12),(0,12),(0,4);:_ZNK6String8getBytesEPhjj;2B.;toCharArray::(0,124)=#(0,72),(0,4),(0,75),(0,73),(0,12),(0,12),(0,4);:_ZNK6String11toCharArrayEPcjj;2B.;indexOf::(0,125)=#(0,72),(0,9),(0,75),(0,17),(0,4);:_ZNK6String7indexOfEc;2B.(0,126)=#(0,72),(0,9),(0,75),(0,17),(0,12),(0,4);:_ZNK6String7indexOfEcj;2B.(0,114):_ZNK6String7indexOfERKS_;2B.(0,127)=#(0,72),(0,9),(0,75),(0,82),(0,12),(0,4);:_ZNK6String7indexOfERKS_j;2B.;lastIndexOf::(0,125):_ZNK6String11lastIndexOfEc;2B.(0,126):_ZNK6String11lastIndexOfEcj;2B.(0,114):_ZNK6String11lastIndexOfERKS_;2B.(0,127):_ZNK6String11lastIndexOfERKS_j;2B.;substring::(0,128)=#(0,72),(0,84),(0,75),(0,12),(0,4);:_ZNK6String9substringEj;2B.(0,129)=#(0,72),(0,84),(0,75),(0,12),(0,12),(0,4);:_ZNK6String9substringEjj;2B.;replace::(0,130)=#(0,72),(0,4),(0,78),(0,17),(0,17),(0,4);:_ZN6String7replaceEcc;2A.(0,131)=#(0,72),(0,4),(0,78),(0,82),(0,82),(0,4);:_ZN6String7replaceERKS_S1_;2A.;toLowerCase::(0,91):_ZN6String11toLowerCaseEv;2A.;toUpperCase::(0,91):_ZN6String11toUpperCaseEv;2A.;trim::(0,91):_ZN6String4trimEv;2A.;toInt::(0,132)=#(0,72),(0,15),(0,75),(0,4);:_ZNK6String5toIntEv;2B.;init::(0,91):_ZN6String4initEv;1A.;invalidate::(0,91):_ZN6String10invalidateEv;1A.;changeBuffer::(0,92):_ZN6String12changeBufferEj;1A.;concat::(0,133)=#(0,72),(0,13),(0,78),(0,79),(0,12),(0,4);:_ZN6String6concatEPKcj;1A.;copy::(0,134)=#(0,72),(0,95),(0,78),(0,79),(0,12),(0,4);:_ZN6String4copyEPKcj;1A.;;",128,0,45,0
	.stabs	"StringSumHelper:Tt(0,135)=s7!1,020,(0,72);__base_ctor ::(0,136)=#(0,135),(0,4),(0,137)=*(0,135),(0,82),(0,4);:_ZN15StringSumHelperC2ERK6String;2A.;__comp_ctor ::(0,136):_ZN15StringSumHelperC1ERK6String;2A.;__base_ctor ::(0,138)=#(0,135),(0,4),(0,137),(0,79),(0,4);:_ZN15StringSumHelperC2EPKc;2A.;__comp_ctor ::(0,138):_ZN15StringSumHelperC1EPKc;2A.;__base_ctor ::(0,139)=#(0,135),(0,4),(0,137),(0,17),(0,4);:_ZN15StringSumHelperC2Ec;2A.;__comp_ctor ::(0,139):_ZN15StringSumHelperC1Ec;2A.;__base_ctor ::(0,140)=#(0,135),(0,4),(0,137),(0,13),(0,4);:_ZN15StringSumHelperC2Eh;2A.;__comp_ctor ::(0,140):_ZN15StringSumHelperC1Eh;2A.;__base_ctor ::(0,141)=#(0,135),(0,4),(0,137),(0,9),(0,4);:_ZN15StringSumHelperC2Ei;2A.;__comp_ctor ::(0,141):_ZN15StringSumHelperC1Ei;2A.;__base_ctor ::(0,142)=#(0,135),(0,4),(0,137),(0,12),(0,4);:_ZN15StringSumHelperC2Ej;2A.;__comp_ctor ::(0,142):_ZN15StringSumHelperC1Ej;2A.;__base_ctor ::(0,143)=#(0,135),(0,4),(0,137),(0,15),(0,4);:_ZN15StringSumHelperC2El;2A.;__comp_ctor ::(0,143):_ZN15StringSumHelperC1El;2A.;__base_ctor ::(0,144)=#(0,135),(0,4),(0,137),(0,11),(0,4);:_ZN15StringSumHelperC2Em;2A.;__comp_ctor ::(0,144):_ZN15StringSumHelperC1Em;2A.;;",128,0,191,0
	.stabs	"__gnuc_va_list:t(0,145)=(0,3)",128,0,40,0
	.stabs	"va_list:t(0,146)=(0,145)",128,0,102,0
	.stabs	"__file:Tt(0,147)=s14buf:(0,73),0,16;unget:(0,13),16,8;flags:(0,35),24,8;size:(0,9),32,16;len:(0,9),48,16;put:(0,148)=*(0,149)=f(0,9),64,16;get:(0,150)=*(0,151)=f(0,9),80,16;udata:(0,152)=*(0,4),96,16;;",128,0,242,0
	.stabs	"__guard:t(0,153)=(0,14)",128,0,15,0
	.stabs	"CID:Tt(0,154)=s16mid:(0,35),0,8;oid:(0,155)=ar(0,156)=r(0,156);0;0177777;;0;1;(0,17),8,16;pnm:(0,157)=ar(0,156);0;4;(0,17),24,40;prv_m:(0,12),64,4;prv_n:(0,12),68,4;psn:(0,39),72,32;mdt_year_high:(0,12),104,4;reserved:(0,12),108,4;mdt_month:(0,12),112,4;mdt_year_low:(0,12),116,4;always1:(0,12),120,1;crc:(0,12),121,7;;",128,0,86,0
	.stabs	"cid_t:t(0,158)=(0,154)",128,0,107,0
	.stabs	"CSDV1:Tt(0,159)=s16reserved1:(0,12),0,6;csd_ver:(0,12),6,2;taac:(0,35),8,8;nsac:(0,35),16,8;tran_speed:(0,35),24,8;ccc_high:(0,35),32,8;read_bl_len:(0,12),40,4;ccc_low:(0,12),44,4;c_size_high:(0,12),48,2;reserved2:(0,12),50,2;dsr_imp:(0,12),52,1;read_blk_misalign:(0,12),53,1;write_blk_misalign:(0,12),54,1;read_bl_partial:(0,12),55,1;c_size_mid:(0,35),56,8;vdd_r_curr_max:(0,12),64,3;vdd_r_curr_min:(0,12),67,3;c_size_low:(0,12),70,2;c_size_mult_high:(0,12),72,2;vdd_w_cur_max:(0,12),74,3;vdd_w_curr_min:(0,12),77,3;sector_size_high:(0,12),80,6;erase_blk_en:(0,12),86,1;c_size_mult_low:(0,12),87,1;wp_grp_size:(0,12),88,7;sector_size_low:(0,12),95,1;write_bl_len_high:(0,12),96,2;r2w_factor:(0,12),98,3;reserved3:(0,12),101,2;wp_grp_enable:(0,12),103,1;reserved4:(0,12),104,5;write_partial:(0,12),109,1;write_bl_len_low:(0,12),110,2;reserved5:(0,12),112,2;file_format:(0,12),114,2;tmp_write_protect:(0,12),116,1;perm_write_protect:(0,12),117,1;copy:(0,12),118,1;file_format_grp:(0,12),119,1;always1:(0,12),120,1;crc:(0,12),121,7;;",128,0,110,0
	.stabs	"csd1_t:t(0,160)=(0,159)",128,0,168,0
	.stabs	"CSDV2:Tt(0,161)=s16reserved1:(0,12),0,6;csd_ver:(0,12),6,2;taac:(0,35),8,8;nsac:(0,35),16,8;tran_speed:(0,35),24,8;ccc_high:(0,35),32,8;read_bl_len:(0,12),40,4;ccc_low:(0,12),44,4;reserved2:(0,12),48,4;dsr_imp:(0,12),52,1;read_blk_misalign:(0,12),53,1;write_blk_misalign:(0,12),54,1;read_bl_partial:(0,12),55,1;reserved3:(0,12),56,2;c_size_high:(0,12),58,6;c_size_mid:(0,35),64,8;c_size_low:(0,35),72,8;sector_size_high:(0,12),80,6;erase_blk_en:(0,12),86,1;reserved4:(0,12),87,1;wp_grp_size:(0,12),88,7;sector_size_low:(0,12),95,1;write_bl_len_high:(0,12),96,2;r2w_factor:(0,12),98,3;reserved5:(0,12),101,2;wp_grp_enable:(0,12),103,1;reserved6:(0,12),104,5;write_partial:(0,12),109,1;write_bl_len_low:(0,12),110,2;reserved7:(0,12),112,2;file_format:(0,12),114,2;tmp_write_protect:(0,12),116,1;perm_write_protect:(0,12),117,1;copy:(0,12),118,1;file_format_grp:(0,12),119,1;always1:(0,12),120,1;crc:(0,12),121,7;;",128,0,171,0
	.stabs	"csd2_t:t(0,162)=(0,161)",128,0,225,0
	.stabs	"csd_t:Tt(0,163)=u16v1:(0,160),0,128;v2:(0,162),0,128;;",128,0,228,0
	.stabs	"Sd2Card:Tt(0,164)=s12block_:/0(0,39),0,32;chipSelectPin_:/0(0,35),32,8;errorCode_:/0(0,35),40,8;inBlock_:/0(0,35),48,8;offset_:/0(0,37),56,16;partialBlockRead_:/0(0,35),72,8;status_:/0(0,35),80,8;type_:/0(0,35),88,8;__base_ctor ::(0,165)=#(0,164),(0,4),(0,166)=*(0,164),(0,4);:_ZN7Sd2CardC2Ev;2A.;__comp_ctor ::(0,165):_ZN7Sd2CardC1Ev;2A.;cardSize::(0,167)=#(0,164),(0,39),(0,166),(0,4);:_ZN7Sd2Card8cardSizeEv;2A.;erase::(0,168)=#(0,164),(0,35),(0,166),(0,39),(0,39),(0,4);:_ZN7Sd2Card5eraseEmm;2A.;eraseSingleBlockEnable::(0,169)=#(0,164),(0,35),(0,166),(0,4);:_ZN7Sd2Card22eraseSingleBlockEnableEv;2A.;errorCode::(0,170)=#(0,164),(0,35),(0,171)=*(0,172)=k(0,164),(0,4);:_ZNK7Sd2Card9errorCodeEv;2B.;errorData::(0,170):_ZNK7Sd2Card9errorDataEv;2B.;init::(0,169):_ZN7Sd2Card4initEv;2A.(0,173)=#(0,164),(0,35),(0,166),(0,35),(0,4);:_ZN7Sd2Card4initEh;2A.(0,174)=#(0,164),(0,35),(0,166),(0,35),(0,35),(0,4);:_ZN7Sd2Card4initEhh;2A.;partialBlockRead::(0,175)=#(0,164),(0,4),(0,166),(0,35),(0,4);:_ZN7Sd2Card16partialBlockReadEh;2A.(0,170):_ZNK7Sd2Card16partialBlockReadEv;2B.;readBlock::(0,176)=#(0,164),(0,35),(0,166),(0,39),(0,177)=*(0,35),(0,4);:_ZN7Sd2Card9readBlockEmPh;2A.;readData::(0,178)=#(0,164),(0,35),(0,166),(0,39),(0,37),(0,37),(0,177),(0,4);:_ZN7Sd2Card8readDataEmjjPh;2A.;readCID::(0,179)=#(0,164),(0,35),(0,166),(0,180)=*(0,158),(0,4);:_ZN7Sd2Card7readCIDEP3CID;2A.;readCSD::(0,181)=#(0,164),(0,35),(0,166),(0,182)=*(0,163),(0,4);:_ZN7Sd2Card7readCSDEP5csd_t;2A.;readEnd::(0,165):_ZN7Sd2Card7readEndEv;2A.;setSckRate::(0,173):_ZN7Sd2Card10setSckRateEh;2A.;type::(0,170):_ZNK7Sd2Card4typeEv;2B.;writeBlock::(0,183)=#(0,164),(0,35),(0,166),(0,39),(0,184)=*(0,185)=k(0,35),(0,4);:_ZN7Sd2Card10writeBlockEmPKh;2A.;writeData::(0,186)=#(0,164),(0,35),(0,166),(0,184),(0,4);:_ZN7Sd2Card9writeDataEPKh;2A.;writeStart::(0,168):_ZN7Sd2Card10writeStartEmm;2A.;writeStop::(0,169):_ZN7Sd2Card9writeStopEv;2A.;cardAcmd::(0,187)=#(0,164),(0,35),(0,166),(0,35),(0,39),(0,4);:_ZN7Sd2Card8cardAcmdEhm;0A.;cardCommand::(0,187):_ZN7Sd2Card11cardCommandEhm;0A.;error::(0,175):_ZN7Sd2Card5errorEh;0A.;readRegister::(0,188)=#(0,164),(0,35),(0,166),(0,35),(0,152),(0,4);:_ZN7Sd2Card12readRegisterEhPv;0A.;sendWriteCommand::(0,168):_ZN7Sd2Card16sendWriteCommandEmm;0A.;chipSelectHigh::(0,165):_ZN7Sd2Card14chipSelectHighEv;0A.;chipSelectLow::(0,165):_ZN7Sd2Card13chipSelectLowEv;0A.;type::(0,175):_ZN7Sd2Card4typeEh;0A.;waitNotBusy::(0,189)=#(0,164),(0,35),(0,166),(0,37),(0,4);:_ZN7Sd2Card11waitNotBusyEj;0A.;writeData::(0,190)=#(0,164),(0,35),(0,166),(0,35),(0,184),(0,4);:_ZN7Sd2Card9writeDataEhPKh;0A.;waitStartBlock::(0,169):_ZN7Sd2Card14waitStartBlockEv;0A.;;",128,0,136,0
	.stabs	"partitionTable:Tt(0,191)=s16boot:(0,35),0,8;beginHead:(0,35),8,8;beginSector:(0,12),16,6;beginCylinderHigh:(0,12),22,2;beginCylinderLow:(0,35),24,8;type:(0,35),32,8;endHead:(0,35),40,8;endSector:(0,12),48,6;endCylinderHigh:(0,12),54,2;endCylinderLow:(0,35),56,8;firstSector:(0,39),64,32;totalSectors:(0,39),96,32;;",128,0,43,0
	.stabs	"part_t:t(0,192)=(0,191)",128,0,95,0
	.stabs	"masterBootRecord:Tt(0,193)=s512codeArea:(0,194)=ar(0,156);0;439;(0,35),0,3520;diskSignature:(0,39),3520,32;usuallyZero:(0,37),3552,16;part:(0,195)=ar(0,156);0;3;(0,192),3568,512;mbrSig0:(0,35),4080,8;mbrSig1:(0,35),4088,8;;",128,0,104,0
	.stabs	"mbr_t:t(0,196)=(0,193)",128,0,119,0
	.stabs	"biosParmBlock:Tt(0,197)=s53bytesPerSector:(0,37),0,16;sectorsPerCluster:(0,35),16,8;reservedSectorCount:(0,37),24,16;fatCount:(0,35),40,8;rootDirEntryCount:(0,37),48,16;totalSectors16:(0,37),64,16;mediaType:(0,35),80,8;sectorsPerFat16:(0,37),88,16;sectorsPerTrtack:(0,37),104,16;headCount:(0,37),120,16;hidddenSectors:(0,39),136,32;totalSectors32:(0,39),168,32;sectorsPerFat32:(0,39),200,32;fat32Flags:(0,37),232,16;fat32Version:(0,37),248,16;fat32RootCluster:(0,39),264,32;fat32FSInfo:(0,37),296,16;fat32BackBootBlock:(0,37),312,16;fat32Reserved:(0,198)=ar(0,156);0;11;(0,35),328,96;;",128,0,128,0
	.stabs	"bpb_t:t(0,199)=(0,197)",128,0,241,0
	.stabs	"fat32BootSector:Tt(0,200)=s512jmpToBootCode:(0,201)=ar(0,156);0;2;(0,35),0,24;oemName:(0,202)=ar(0,156);0;7;(0,17),24,64;bpb:(0,199),88,424;driveNumber:(0,35),512,8;reserved1:(0,35),520,8;bootSignature:(0,35),528,8;volumeSerialNumber:(0,39),536,32;volumeLabel:(0,203)=ar(0,156);0;10;(0,17),568,88;fileSystemType:(0,202),656,64;bootCode:(0,204)=ar(0,156);0;419;(0,35),720,3360;bootSectorSig0:(0,35),4080,8;bootSectorSig1:(0,35),4088,8;;",128,0,249,0
	.stabs	"fbs_t:t(0,205)=(0,200)",128,0,289,0
	.stabs	"directoryEntry:Tt(0,206)=s32name:(0,207)=ar(0,156);0;10;(0,35),0,88;attributes:(0,35),88,8;reservedNT:(0,35),96,8;creationTimeTenths:(0,35),104,8;creationTime:(0,37),112,16;creationDate:(0,37),128,16;lastAccessDate:(0,37),144,16;firstClusterHigh:(0,37),160,16;lastWriteTime:(0,37),176,16;lastWriteDate:(0,37),192,16;firstClusterLow:(0,37),208,16;fileSize:(0,39),224,32;;",128,0,321,0
	.stabs	"dir_t:t(0,208)=(0,206)",128,0,374,0
	.stabs	"cache_t:Tt(0,209)=u512data:(0,210)=ar(0,156);0;511;(0,35),0,4096;fat16:(0,211)=ar(0,156);0;255;(0,37),0,4096;fat32:(0,212)=ar(0,156);0;127;(0,39),0,4096;dir:(0,213)=ar(0,156);0;15;(0,208),0,4096;mbr:(0,196),0,4096;fbs:(0,205),0,4096;;",128,0,408,0
	.stabs	"SdVolume:Tt(0,214)=s30CACHE_FOR_READ:/0(0,185):_ZN8SdVolume14CACHE_FOR_READE;CACHE_FOR_WRITE:/0(0,185):_ZN8SdVolume15CACHE_FOR_WRITEE;cacheBuffer_:/0(0,209):_ZN8SdVolume12cacheBuffer_E;cacheBlockNumber_:/0(0,39):_ZN8SdVolume17cacheBlockNumber_E;sdCard_:/0(0,166):_ZN8SdVolume7sdCard_E;cacheDirty_:/0(0,35):_ZN8SdVolume11cacheDirty_E;cacheMirrorBlock_:/0(0,39):_ZN8SdVolume17cacheMirrorBlock_E;allocSearchStart_:/0(0,39),0,32;blocksPerCluster_:/0(0,35),32,8;blocksPerFat_:/0(0,39),40,32;clusterCount_:/0(0,39),72,32;clusterSizeShift_:/0(0,35),104,8;dataStartBlock_:/0(0,39),112,32;fatCount_:/0(0,35),144,8;fatStartBlock_:/0(0,39),152,32;fatType_:/0(0,35),184,8;rootDirEntryCount_:/0(0,37),192,16;rootDirStart_:/0(0,39),208,32;__base_ctor ::(0,215)=#(0,214),(0,4),(0,216)=*(0,214),(0,4);:_ZN8SdVolumeC2Ev;2A.;__comp_ctor ::(0,215):_ZN8SdVolumeC1Ev;2A.;cacheClear::(0,217)=f(0,177):_ZN8SdVolume10cacheClearEv;2A?;init::(0,218)=#(0,214),(0,35),(0,216),(0,166),(0,4);:_ZN8SdVolume4initEP7Sd2Card;2A.(0,219)=#(0,214),(0,35),(0,216),(0,166),(0,35),(0,4);:_ZN8SdVolume4initEP7Sd2Cardh;2A.;blocksPerCluster::(0,220)=#(0,214),(0,35),(0,221)=*(0,222)=k(0,214),(0,4);:_ZNK8SdVolume16blocksPerClusterEv;2B.;blocksPerFat::(0,223)=#(0,214),(0,39),(0,221),(0,4);:_ZNK8SdVolume12blocksPerFatEv;2B.;clusterCount::(0,223):_ZNK8SdVolume12clusterCountEv;2B.;clusterSizeShift::(0,220):_ZNK8SdVolume16clusterSizeShiftEv;2B.;dataStartBlock::(0,223):_ZNK8SdVolume14dataStartBlockEv;2B.;fatCount::(0,220):_ZNK8SdVolume8fatCountEv;2B.;fatStartBlock::(0,223):_ZNK8SdVolume13fatStartBlockEv;2B.;fatType::(0,220):_ZNK8SdVolume7fatTypeEv;2B.;rootDirEntryCount::(0,223):_ZNK8SdVolume17rootDirEntryCountEv;2B.;rootDirStart::(0,223):_ZNK8SdVolume12rootDirStartEv;2B.;sdCard::(0,224)=f(0,166):_ZN8SdVolume6sdCardEv;2A?;init::(0,225)=#(0,214),(0,35),(0,216),(0,226)=&(0,164),(0,4);:_ZN8SdVolume4initER7Sd2Card;2A.(0,227)=#(0,214),(0,35),(0,216),(0,226),(0,35),(0,4);:_ZN8SdVolume4initER7Sd2Cardh;2A.;allocContiguous::(0,228)=#(0,214),(0,35),(0,216),(0,39),(0,229)=*(0,39),(0,4);:_ZN8SdVolume15allocContiguousEmPm;0A.;blockOfCluster::(0,230)=#(0,214),(0,35),(0,221),(0,39),(0,4);:_ZNK8SdVolume14blockOfClusterEm;0B.;clusterStartBlock::(0,231)=#(0,214),(0,39),(0,221),(0,39),(0,4);:_ZNK8SdVolume17clusterStartBlockEm;0B.;blockNumber::(0,232)=#(0,214),(0,39),(0,221),(0,39),(0,39),(0,4);:_ZNK8SdVolume11blockNumberEmm;0B.;cacheFlush::(0,233)=f(0,35):_ZN8SdVolume10cacheFlushEv;0A?;cacheRawBlock::(0,234)=f(0,35):_ZN8SdVolume13cacheRawBlockEmh;0A?;cacheSetDirty::(0,235)=f(0,4):_ZN8SdVolume13cacheSetDirtyEv;0A?;cacheZeroBlock::(0,236)=f(0,35):_ZN8SdVolume14cacheZeroBlockEm;0A?;chainSize::(0,237)=#(0,214),(0,35),(0,221),(0,39),(0,229),(0,4);:_ZNK8SdVolume9chainSizeEmPm;0B.;fatGet::(0,237):_ZNK8SdVolume6fatGetEmPm;0B.;fatPut::(0,238)=#(0,214),(0,35),(0,216),(0,39),(0,39),(0,4);:_ZN8SdVolume6fatPutEmm;0A.;fatPutEOC::(0,239)=#(0,214),(0,35),(0,216),(0,39),(0,4);:_ZN8SdVolume9fatPutEOCEm;0A.;freeChain::(0,239):_ZN8SdVolume9freeChainEm;0A.;isEOC::(0,230):_ZNK8SdVolume5isEOCEm;0B.;readBlock::(0,240)=#(0,214),(0,35),(0,216),(0,39),(0,177),(0,4);:_ZN8SdVolume9readBlockEmPh;0A.;readData::(0,241)=#(0,214),(0,35),(0,216),(0,39),(0,37),(0,37),(0,177),(0,4);:_ZN8SdVolume8readDataEmjjPh;0A.;writeBlock::(0,242)=#(0,214),(0,35),(0,216),(0,39),(0,184),(0,4);:_ZN8SdVolume10writeBlockEmPKh;0A.;;",128,0,427,0
	.stabs	"SDClass:Tt(0,243)=s73card:(0,164),0,96;volume:(0,214),96,240;root:(0,244)=xsSdFile:,336,232;fileOpenMode:/0(0,9),568,16;getParentDir::(0,245)=#(0,243),(0,244),(0,246)=*(0,243),(0,79),(0,247)=*(0,9),(0,4);:_ZN7SDClass12getParentDirEPKcPi;2A.;begin::(0,248)=#(0,243),(0,67),(0,246),(0,35),(0,4);:_ZN7SDClass5beginEh;2A.;open::(0,249)=#(0,243),(0,250)=xsFile:,(0,246),(0,79),(0,35),(0,4);:_ZN7SDClass4openEPKch;2A.;exists::(0,251)=#(0,243),(0,67),(0,246),(0,73),(0,4);:_ZN7SDClass6existsEPc;2A.;mkdir::(0,251):_ZN7SDClass5mkdirEPc;2A.;remove::(0,251):_ZN7SDClass6removeEPc;2A.;rmdir::(0,251):_ZN7SDClass5rmdirEPc;2A.;;",128,0,56,0
	.stabs	"Stream:Tt(0,252)=s12!1,020,(0,253)=xsPrint:;_timeout:/0(0,11),32,32;_startMillis:/0(0,11),64,32;timedRead::(0,254)=#(0,252),(0,9),(0,255)=*(0,252),(0,4);:_ZN6Stream9timedReadEv;0A.;timedPeek::(0,254):_ZN6Stream9timedPeekEv;0A.;peekNextDigit::(0,254):_ZN6Stream13peekNextDigitEv;0A.;available::(0,254):_ZN6Stream9availableEv;2A*2;(0,252);;read::(0,254):_ZN6Stream4readEv;2A*3;(0,252);;peek::(0,254):_ZN6Stream4peekEv;2A*4;(0,252);;flush::(0,256)=#(0,252),(0,4),(0,255),(0,4);:_ZN6Stream5flushEv;2A*5;(0,252);;__base_ctor ::(0,256):_ZN6StreamC2Ev;2A.;__comp_ctor ::(0,256):_ZN6StreamC1Ev;2A.;setTimeout::(0,257)=#(0,252),(0,4),(0,255),(0,11),(0,4);:_ZN6Stream10setTimeoutEm;2A.;find::(0,258)=#(0,252),(0,24),(0,255),(0,73),(0,4);:_ZN6Stream4findEPc;2A.(0,259)=#(0,252),(0,24),(0,255),(0,73),(0,28),(0,4);:_ZN6Stream4findEPcj;2A.;findUntil::(0,260)=#(0,252),(0,24),(0,255),(0,73),(0,73),(0,4);:_ZN6Stream9findUntilEPcS0_;2A.(0,261)=#(0,252),(0,24),(0,255),(0,73),(0,28),(0,73),(0,28),(0,4);:_ZN6Stream9findUntilEPcjS0_j;2A.;parseInt::(0,262)=#(0,252),(0,15),(0,255),(0,4);:_ZN6Stream8parseIntEv;2A.;parseFloat::(0,263)=#(0,252),(0,20),(0,255),(0,4);:_ZN6Stream10parseFloatEv;2A.;readBytes::(0,264)=#(0,252),(0,28),(0,255),(0,73),(0,28),(0,4);:_ZN6Stream9readBytesEPcj;2A.;readBytesUntil::(0,265)=#(0,252),(0,28),(0,255),(0,17),(0,73),(0,28),(0,4);:_ZN6Stream14readBytesUntilEcPcj;2A.;readString::(0,266)=#(0,252),(0,72),(0,255),(0,4);:_ZN6Stream10readStringEv;2A.;readStringUntil::(0,267)=#(0,252),(0,72),(0,255),(0,17),(0,4);:_ZN6Stream15readStringUntilEc;2A.;parseInt::(0,268)=#(0,252),(0,15),(0,255),(0,17),(0,4);:_ZN6Stream8parseIntEc;1A.;parseFloat::(0,269)=#(0,252),(0,20),(0,255),(0,17),(0,4);:_ZN6Stream10parseFloatEc;1A.;;~%(0,253);",128,0,38,0
	.section	.text.__vector_1,"ax",@progbits
	.stabs	"__vector_1:F(0,4)",36,0,44,__vector_1
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
	.stabd	46,0,0
	.stabn	68,0,44,.LM0-.LFBB1
.LM0:
.LFBB1:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,44,.LM1-.LFBB1
.LM1:
/* #APP */
 ;  44 "SDCard.cpp" 1
	reti
 ;  0 "" 2
/* epilogue start */
/* #NOAPP */
	.size	__vector_1, .-__vector_1
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabd	78,0,0
	.section	.text._Z12disable_ctrlv,"axG",@progbits,_Z12disable_ctrlv,comdat
	.stabs	"_Z12disable_ctrlv:F(0,4)",36,0,199,_Z12disable_ctrlv
	.weak	_Z12disable_ctrlv
	.type	_Z12disable_ctrlv, @function
_Z12disable_ctrlv:
	.stabd	46,0,0
	.stabn	68,0,199,.LM2-.LFBB2
.LM2:
.LFBB2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,200,.LM3-.LFBB2
.LM3:
	in r24,0x7	 ;  D.4723, MEM[(volatile uint8_t *)39B]
	andi r24,lo8(-7)	 ;  D.4723,
	out 0x7,r24	 ;  MEM[(volatile uint8_t *)39B], D.4723
	.stabn	68,0,201,.LM4-.LFBB2
.LM4:
	cbi 0x8,2	 ; ,
	.stabn	68,0,202,.LM5-.LFBB2
.LM5:
	cbi 0x8,1	 ; ,
	ret
	.size	_Z12disable_ctrlv, .-_Z12disable_ctrlv
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabd	78,0,0
	.section	.text._Z10fifo_resetv,"axG",@progbits,_Z10fifo_resetv,comdat
	.stabs	"_Z10fifo_resetv:F(0,4)",36,0,216,_Z10fifo_resetv
	.weak	_Z10fifo_resetv
	.type	_Z10fifo_resetv, @function
_Z10fifo_resetv:
	.stabd	46,0,0
	.stabn	68,0,216,.LM6-.LFBB3
.LM6:
.LFBB3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,217,.LM7-.LFBB3
.LM7:
	cbi 0x8,3	 ; ,
	.stabn	68,0,218,.LM8-.LFBB3
.LM8:
	sbi 0x8,3	 ; ,
	ret
	.size	_Z10fifo_resetv, .-_Z10fifo_resetv
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabd	78,0,0
	.section	.text._Z10fifo_writeh,"axG",@progbits,_Z10fifo_writeh,comdat
	.stabs	"_Z10fifo_writeh:F(0,4)",36,0,232,_Z10fifo_writeh
	.stabs	"b:P(0,68)",64,0,232,24
	.weak	_Z10fifo_writeh
	.type	_Z10fifo_writeh, @function
_Z10fifo_writeh:
	.stabd	46,0,0
	.stabn	68,0,232,.LM9-.LFBB4
.LM9:
.LFBB4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.stabn	68,0,233,.LM10-.LFBB4
.LM10:
	out 0x2,r24	 ;  MEM[(volatile uint8_t *)34B], b
	.stabn	68,0,234,.LM11-.LFBB4
.LM11:
	cbi 0x8,2	 ; ,
	.stabn	68,0,235,.LM12-.LFBB4
.LM12:
	sbi 0x8,2	 ; ,
	ret
	.size	_Z10fifo_writeh, .-_Z10fifo_writeh
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabd	78,0,0
	.section	.text.startup.main,"ax",@progbits
	.stabs	"main:F(0,9)",36,0,46,main
.global	main
	.type	main, @function
main:
	.stabd	46,0,0
	.stabn	68,0,46,.LM13-.LFBB5
.LM13:
.LFBB5:
	push r28	 ; 
	push r29	 ; 
	 ; SP -= 4	 ; 
	rcall .
	rcall .
	in r28,__SP_L__	 ; 
	in r29,__SP_H__	 ; 
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
.LBB23:
	.stabn	68,0,48,.LM14-.LFBB5
.LM14:
	ldi r24,lo8(31)	 ;  tmp94,
	out 0x8,r24	 ;  MEM[(volatile uint8_t *)40B], tmp94
	.stabn	68,0,49,.LM15-.LFBB5
.LM15:
	out 0x7,r24	 ;  MEM[(volatile uint8_t *)39B], tmp94
	.stabn	68,0,52,.LM16-.LFBB5
.LM16:
	lds r24,105	 ;  D.4613, MEM[(volatile uint8_t *)105B]
	ori r24,lo8(3)	 ;  D.4613,
	sts 105,r24	 ;  MEM[(volatile uint8_t *)105B], D.4613
	.stabn	68,0,53,.LM17-.LFBB5
.LM17:
	sbi 0x1d,0	 ; ,
	.stabn	68,0,55,.LM18-.LFBB5
.LM18:
/* #APP */
 ;  55 "SDCard.cpp" 1
	sei
 ;  0 "" 2
	.stabn	68,0,56,.LM19-.LFBB5
.LM19:
/* #NOAPP */
	in r24,0x33	 ;  D.4624, MEM[(volatile uint8_t *)83B]
	andi r24,lo8(-15)	 ;  D.4624,
	ori r24,lo8(12)	 ;  D.4624,
	out 0x33,r24	 ;  MEM[(volatile uint8_t *)83B], D.4624
	.stabn	68,0,65,.LM20-.LFBB5
.LM20:
	cbi 0x8,4	 ; ,
	.stabn	68,0,66,.LM21-.LFBB5
.LM21:
	call _Z12disable_ctrlv	 ; 
	.stabn	68,0,67,.LM22-.LFBB5
.LM22:
	call _Z10fifo_resetv	 ; 
.LBB24:
.LBB25:
	.stabn	68,0,239,.LM23-.LFBB5
.LM23:
	clr r15	 ;  tmp149
	dec r15	 ;  tmp149
.L21:
.LBE25:
.LBE24:
.LBB27:
.LBB28:
	.stabn	68,0,212,.LM24-.LFBB5
.LM24:
	cbi 0x8,0	 ; ,
	.stabn	68,0,213,.LM25-.LFBB5
.LM25:
	sbi 0x8,0	 ; ,
	rjmp .L22	 ; 
.L8:
.LBE28:
.LBE27:
	.stabn	68,0,73,.LM26-.LFBB5
.LM26:
	ldd r24,Y+1	 ;  t.8, t
	ldd r25,Y+2	 ;  t.8, t
	ldd r26,Y+3	 ;  t.8, t
	ldd r27,Y+4	 ;  t.8, t
	adiw r24,1	 ;  t.8,
	adc r26,__zero_reg__	 ;  t.8
	adc r27,__zero_reg__	 ;  t.8
	std Y+1,r24	 ;  t, t.8
	std Y+2,r25	 ;  t, t.8
	std Y+3,r26	 ;  t, t.8
	std Y+4,r27	 ;  t, t.8
	cpi r24,-96	 ;  t.8,
	sbci r25,-16	 ;  t.8,
	sbci r26,25	 ;  t.8,
	cpc r27,__zero_reg__	 ;  t.8
	brne .L20	 ; ,
.LBB29:
.LBB30:
	.stabn	68,0,193,.LM27-.LFBB5
.LM27:
	in r24,0x33	 ;  D.4781, MEM[(volatile uint8_t *)83B]
	ori r24,lo8(1)	 ;  D.4781,
	out 0x33,r24	 ;  MEM[(volatile uint8_t *)83B], D.4781
	.stabn	68,0,194,.LM28-.LFBB5
.LM28:
/* #APP */
 ;  194 "SDCard.cpp" 1
	sei
 ;  0 "" 2
	.stabn	68,0,195,.LM29-.LFBB5
.LM29:
 ;  195 "SDCard.cpp" 1
	sleep
	
 ;  0 "" 2
	.stabn	68,0,196,.LM30-.LFBB5
.LM30:
/* #NOAPP */
	in r24,0x33	 ;  D.4779, MEM[(volatile uint8_t *)83B]
	andi r24,lo8(-2)	 ;  D.4779,
	out 0x33,r24	 ;  MEM[(volatile uint8_t *)83B], D.4779
.L22:
.LBE30:
.LBE29:
	.stabn	68,0,75,.LM31-.LFBB5
.LM31:
	std Y+1,__zero_reg__	 ;  t,
	std Y+2,__zero_reg__	 ;  t,
	std Y+3,__zero_reg__	 ;  t,
	std Y+4,__zero_reg__	 ;  t,
.L20:
	.stabn	68,0,72,.LM32-.LFBB5
.LM32:
	sbis 0x9,2	 ; ,
	rjmp .L8	 ; 
	.stabn	68,0,80,.LM33-.LFBB5
.LM33:
	sbis 0x9,5	 ; ,
	rjmp .L21	 ; 
	.stabn	68,0,83,.LM34-.LFBB5
.LM34:
	sbi 0x8,4	 ; ,
.LBB31:
.LBB32:
	.stabn	68,0,206,.LM35-.LFBB5
.LM35:
	sbi 0x8,2	 ; ,
	.stabn	68,0,207,.LM36-.LFBB5
.LM36:
	sbi 0x8,1	 ; ,
	.stabn	68,0,208,.LM37-.LFBB5
.LM37:
	in r24,0x7	 ;  D.4783, MEM[(volatile uint8_t *)39B]
	ori r24,lo8(6)	 ;  D.4783,
	out 0x7,r24	 ;  MEM[(volatile uint8_t *)39B], D.4783
.LBE32:
.LBE31:
.LBB33:
.LBB34:
	.stabn	68,0,243,.LM38-.LFBB5
.LM38:
	out 0x1,__zero_reg__	 ;  MEM[(volatile uint8_t *)33B],
	.stabn	68,0,244,.LM39-.LFBB5
.LM39:
	out 0x2,__zero_reg__	 ;  MEM[(volatile uint8_t *)34B],
.LBE34:
.LBE33:
.LBB35:
.LBB36:
	.stabn	68,0,224,.LM40-.LFBB5
.LM40:
	cbi 0x8,1	 ; ,
	.stabn	68,0,225,.LM41-.LFBB5
.LM41:
/* #APP */
 ;  225 "SDCard.cpp" 1
	nop
nop

 ;  0 "" 2
	.stabn	68,0,226,.LM42-.LFBB5
.LM42:
/* #NOAPP */
	in r14,0	 ;  inst, MEM[(volatile uint8_t *)32B]
	.stabn	68,0,227,.LM43-.LFBB5
.LM43:
	sbi 0x8,1	 ; ,
.LBE36:
.LBE35:
	.stabn	68,0,90,.LM44-.LFBB5
.LM44:
	ldi r16,0	 ;  pos
	ldi r17,0	 ;  pos
	.stabn	68,0,91,.LM45-.LFBB5
.LM45:
	rjmp .L10	 ; 
.L11:
	.stabn	68,0,92,.LM46-.LFBB5
.LM46:
	cbi 0x8,1	 ; ,
	.stabn	68,0,93,.LM47-.LFBB5
.LM47:
	in r24,0	 ;  D.4663, MEM[(volatile uint8_t *)32B]
	subi r16,-1	 ;  pos,
	sbci r17,-1	 ;  pos,
	.stabn	68,0,94,.LM48-.LFBB5
.LM48:
	sbi 0x8,1	 ; ,
.L10:
	.stabn	68,0,91,.LM49-.LFBB5
.LM49:
	sbic 0x9,5	 ; ,
	rjmp .L11	 ; 
.LBB37:
.LBB38:
	.stabn	68,0,243,.LM50-.LFBB5
.LM50:
	out 0x1,__zero_reg__	 ;  MEM[(volatile uint8_t *)33B],
	.stabn	68,0,244,.LM51-.LFBB5
.LM51:
	out 0x2,__zero_reg__	 ;  MEM[(volatile uint8_t *)34B],
.LBE38:
.LBE37:
	.stabn	68,0,98,.LM52-.LFBB5
.LM52:
	call _Z10fifo_resetv	 ; 
.LBB39:
.LBB26:
	.stabn	68,0,239,.LM53-.LFBB5
.LM53:
	out 0x1,r15	 ;  MEM[(volatile uint8_t *)33B], tmp149
.LBE26:
.LBE39:
	.stabn	68,0,123,.LM54-.LFBB5
.LM54:
	ldi r24,lo8(-34)	 ; ,
	call _Z10fifo_writeh	 ; 
	.stabn	68,0,124,.LM55-.LFBB5
.LM55:
	ldi r24,lo8(-83)	 ; ,
	call _Z10fifo_writeh	 ; 
	.stabn	68,0,125,.LM56-.LFBB5
.LM56:
	ldi r24,lo8(-66)	 ; ,
	call _Z10fifo_writeh	 ; 
	.stabn	68,0,126,.LM57-.LFBB5
.LM57:
	ldi r24,lo8(-17)	 ; ,
	call _Z10fifo_writeh	 ; 
	.stabn	68,0,127,.LM58-.LFBB5
.LM58:
	mov r24,r14	 ; , inst
	call _Z10fifo_writeh	 ; 
	.stabn	68,0,128,.LM59-.LFBB5
.LM59:
	mov r24,r16	 ; , pos
	call _Z10fifo_writeh	 ; 
.LBB40:
.LBB41:
	.stabn	68,0,243,.LM60-.LFBB5
.LM60:
	out 0x1,__zero_reg__	 ;  MEM[(volatile uint8_t *)33B],
	.stabn	68,0,244,.LM61-.LFBB5
.LM61:
	out 0x2,__zero_reg__	 ;  MEM[(volatile uint8_t *)34B],
.LBE41:
.LBE40:
	.stabn	68,0,135,.LM62-.LFBB5
.LM62:
	call _Z12disable_ctrlv	 ; 
	.stabn	68,0,136,.LM63-.LFBB5
.LM63:
	cbi 0x8,4	 ; ,
	rjmp .L21	 ; 
.LBE23:
	.size	main, .-main
	.stabs	"t:(0,270)=B(0,11)",128,0,60,1
	.stabs	"pos:r(0,12)",64,0,61,16
	.stabs	"inst:r(0,68)",64,0,62,14
	.stabn	192,0,0,.LBB23-.LFBB5
	.stabn	224,0,0,.LBE23-.LFBB5
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabd	78,0,0
	.section	.text.startup._GLOBAL__sub_I___vector_1,"ax",@progbits
	.stabs	"_GLOBAL__sub_I___vector_1:f(0,4)",36,0,245,_GLOBAL__sub_I___vector_1
	.type	_GLOBAL__sub_I___vector_1, @function
_GLOBAL__sub_I___vector_1:
	.stabd	46,0,0
	.stabn	68,0,245,.LM64-.LFBB6
.LM64:
.LFBB6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB44:
.LBB45:
	.stabs	"sd/Sd2Card.h",132,0,0,.Ltext1
.Ltext1:
	.stabn	68,0,54,.LM65-.LFBB6
.LM65:
	in r24,0x3	 ;  SD_CHIP_SELECT_PIN.0, MEM[(volatile uint8_t *)35B]
	sts _ZL18SD_CHIP_SELECT_PIN,r24	 ;  SD_CHIP_SELECT_PIN, SD_CHIP_SELECT_PIN.0
	.stabn	68,0,57,.LM66-.LFBB6
.LM66:
	in r24,0x3	 ;  SPI_MOSI_PIN.1, MEM[(volatile uint8_t *)35B]
	sts _ZL12SPI_MOSI_PIN,r24	 ;  SPI_MOSI_PIN, SPI_MOSI_PIN.1
	.stabn	68,0,59,.LM67-.LFBB6
.LM67:
	in r24,0x3	 ;  SPI_MISO_PIN.2, MEM[(volatile uint8_t *)35B]
	sts _ZL12SPI_MISO_PIN,r24	 ;  SPI_MISO_PIN, SPI_MISO_PIN.2
	.stabn	68,0,61,.LM68-.LFBB6
.LM68:
	in r24,0x3	 ;  SPI_SCK_PIN.3, MEM[(volatile uint8_t *)35B]
	sts _ZL11SPI_SCK_PIN,r24	 ;  SPI_SCK_PIN, SPI_SCK_PIN.3
	ret
.LBE45:
.LBE44:
	.size	_GLOBAL__sub_I___vector_1, .-_GLOBAL__sub_I___vector_1
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabd	78,0,0
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I___vector_1)
	.section	.bss._ZL18SD_CHIP_SELECT_PIN,"aw",@nobits
	.type	_ZL18SD_CHIP_SELECT_PIN, @object
	.size	_ZL18SD_CHIP_SELECT_PIN, 1
_ZL18SD_CHIP_SELECT_PIN:
	.zero	1
	.section	.bss._ZL12SPI_MOSI_PIN,"aw",@nobits
	.type	_ZL12SPI_MOSI_PIN, @object
	.size	_ZL12SPI_MOSI_PIN, 1
_ZL12SPI_MOSI_PIN:
	.zero	1
	.section	.bss._ZL12SPI_MISO_PIN,"aw",@nobits
	.type	_ZL12SPI_MISO_PIN, @object
	.size	_ZL12SPI_MISO_PIN, 1
_ZL12SPI_MISO_PIN:
	.zero	1
	.section	.bss._ZL11SPI_SCK_PIN,"aw",@nobits
	.type	_ZL11SPI_SCK_PIN, @object
	.size	_ZL11SPI_SCK_PIN, 1
_ZL11SPI_SCK_PIN:
	.zero	1
	.stabs	"CMD0:c=i0",128,0,0,0
	.stabs	"CMD8:c=i8",128,0,0,0
	.stabs	"CMD9:c=i9",128,0,0,0
	.stabs	"CMD10:c=i10",128,0,0,0
	.stabs	"CMD13:c=i13",128,0,0,0
	.stabs	"CMD17:c=i17",128,0,0,0
	.stabs	"CMD24:c=i24",128,0,0,0
	.stabs	"CMD25:c=i25",128,0,0,0
	.stabs	"CMD32:c=i32",128,0,0,0
	.stabs	"CMD33:c=i33",128,0,0,0
	.stabs	"CMD38:c=i38",128,0,0,0
	.stabs	"CMD55:c=i55",128,0,0,0
	.stabs	"CMD58:c=i58",128,0,0,0
	.stabs	"ACMD23:c=i23",128,0,0,0
	.stabs	"ACMD41:c=i41",128,0,0,0
	.stabs	"R1_READY_STATE:c=i0",128,0,0,0
	.stabs	"R1_IDLE_STATE:c=i1",128,0,0,0
	.stabs	"R1_ILLEGAL_COMMAND:c=i4",128,0,0,0
	.stabs	"DATA_START_BLOCK:c=i254",128,0,0,0
	.stabs	"STOP_TRAN_TOKEN:c=i253",128,0,0,0
	.stabs	"WRITE_MULTIPLE_TOKEN:c=i252",128,0,0,0
	.stabs	"DATA_RES_MASK:c=i31",128,0,0,0
	.stabs	"DATA_RES_ACCEPTED:c=i5",128,0,0,0
	.stabs	"SPI_FULL_SPEED:c=i0",128,0,0,0
	.stabs	"SPI_HALF_SPEED:c=i1",128,0,0,0
	.stabs	"SPI_QUARTER_SPEED:c=i2",128,0,0,0
	.stabs	"SD_CHIP_SELECT_PIN:S(0,185)",40,0,54,_ZL18SD_CHIP_SELECT_PIN
	.stabs	"SPI_MOSI_PIN:S(0,185)",40,0,57,_ZL12SPI_MOSI_PIN
	.stabs	"SPI_MISO_PIN:S(0,185)",40,0,59,_ZL12SPI_MISO_PIN
	.stabs	"SPI_SCK_PIN:S(0,185)",40,0,61,_ZL11SPI_SCK_PIN
	.stabs	"SD_INIT_TIMEOUT:c=i2000",128,0,0,0
	.stabs	"SD_ERASE_TIMEOUT:c=i10000",128,0,0,0
	.stabs	"SD_READ_TIMEOUT:c=i300",128,0,0,0
	.stabs	"SD_WRITE_TIMEOUT:c=i600",128,0,0,0
	.stabs	"SD_CARD_ERROR_CMD0:c=i1",128,0,0,0
	.stabs	"SD_CARD_ERROR_CMD8:c=i2",128,0,0,0
	.stabs	"SD_CARD_ERROR_CMD17:c=i3",128,0,0,0
	.stabs	"SD_CARD_ERROR_CMD24:c=i4",128,0,0,0
	.stabs	"SD_CARD_ERROR_CMD25:c=i5",128,0,0,0
	.stabs	"SD_CARD_ERROR_CMD58:c=i6",128,0,0,0
	.stabs	"SD_CARD_ERROR_ACMD23:c=i7",128,0,0,0
	.stabs	"SD_CARD_ERROR_ACMD41:c=i8",128,0,0,0
	.stabs	"SD_CARD_ERROR_BAD_CSD:c=i9",128,0,0,0
	.stabs	"SD_CARD_ERROR_ERASE:c=i10",128,0,0,0
	.stabs	"SD_CARD_ERROR_ERASE_SINGLE_BLOCK:c=i11",128,0,0,0
	.stabs	"SD_CARD_ERROR_ERASE_TIMEOUT:c=i12",128,0,0,0
	.stabs	"SD_CARD_ERROR_READ:c=i13",128,0,0,0
	.stabs	"SD_CARD_ERROR_READ_REG:c=i14",128,0,0,0
	.stabs	"SD_CARD_ERROR_READ_TIMEOUT:c=i15",128,0,0,0
	.stabs	"SD_CARD_ERROR_STOP_TRAN:c=i16",128,0,0,0
	.stabs	"SD_CARD_ERROR_WRITE:c=i17",128,0,0,0
	.stabs	"SD_CARD_ERROR_WRITE_BLOCK_ZERO:c=i18",128,0,0,0
	.stabs	"SD_CARD_ERROR_WRITE_MULTIPLE:c=i19",128,0,0,0
	.stabs	"SD_CARD_ERROR_WRITE_PROGRAMMING:c=i20",128,0,0,0
	.stabs	"SD_CARD_ERROR_WRITE_TIMEOUT:c=i21",128,0,0,0
	.stabs	"SD_CARD_ERROR_SCK_RATE:c=i22",128,0,0,0
	.stabs	"SD_CARD_TYPE_SD1:c=i1",128,0,0,0
	.stabs	"SD_CARD_TYPE_SD2:c=i2",128,0,0,0
	.stabs	"SD_CARD_TYPE_SDHC:c=i3",128,0,0,0
	.stabs	"BOOTSIG0:c=i85",128,0,0,0
	.stabs	"BOOTSIG1:c=i170",128,0,0,0
	.stabs	"FAT16EOC:c=i65535",128,0,0,0
	.stabs	"FAT16EOC_MIN:c=i65528",128,0,0,0
	.stabs	"FAT32EOC:c=i268435455",128,0,0,0
	.stabs	"FAT32EOC_MIN:c=i268435448",128,0,0,0
	.stabs	"FAT32MASK:c=i268435455",128,0,0,0
	.stabs	"DIR_NAME_0XE5:c=i5",128,0,0,0
	.stabs	"DIR_NAME_DELETED:c=i229",128,0,0,0
	.stabs	"DIR_NAME_FREE:c=i0",128,0,0,0
	.stabs	"DIR_ATT_READ_ONLY:c=i1",128,0,0,0
	.stabs	"DIR_ATT_HIDDEN:c=i2",128,0,0,0
	.stabs	"DIR_ATT_SYSTEM:c=i4",128,0,0,0
	.stabs	"DIR_ATT_VOLUME_ID:c=i8",128,0,0,0
	.stabs	"DIR_ATT_DIRECTORY:c=i16",128,0,0,0
	.stabs	"DIR_ATT_ARCHIVE:c=i32",128,0,0,0
	.stabs	"DIR_ATT_LONG_NAME:c=i15",128,0,0,0
	.stabs	"DIR_ATT_LONG_NAME_MASK:c=i63",128,0,0,0
	.stabs	"DIR_ATT_DEFINED_BITS:c=i63",128,0,0,0
	.stabs	"DIR_ATT_FILE_TYPE_MASK:c=i24",128,0,0,0
	.stabs	"LS_DATE:c=i1",128,0,0,0
	.stabs	"LS_SIZE:c=i2",128,0,0,0
	.stabs	"LS_R:c=i4",128,0,0,0
	.stabs	"O_READ:c=i1",128,0,0,0
	.stabs	"O_RDONLY:c=i1",128,0,0,0
	.stabs	"O_WRITE:c=i2",128,0,0,0
	.stabs	"O_WRONLY:c=i2",128,0,0,0
	.stabs	"O_RDWR:c=i3",128,0,0,0
	.stabs	"O_ACCMODE:c=i3",128,0,0,0
	.stabs	"O_APPEND:c=i4",128,0,0,0
	.stabs	"O_SYNC:c=i8",128,0,0,0
	.stabs	"O_CREAT:c=i16",128,0,0,0
	.stabs	"O_EXCL:c=i32",128,0,0,0
	.stabs	"O_TRUNC:c=i64",128,0,0,0
	.stabs	"T_ACCESS:c=i1",128,0,0,0
	.stabs	"T_CREATE:c=i2",128,0,0,0
	.stabs	"T_WRITE:c=i4",128,0,0,0
	.stabs	"FAT_FILE_TYPE_CLOSED:c=i0",128,0,0,0
	.stabs	"FAT_FILE_TYPE_NORMAL:c=i1",128,0,0,0
	.stabs	"FAT_FILE_TYPE_ROOT16:c=i2",128,0,0,0
	.stabs	"FAT_FILE_TYPE_ROOT32:c=i3",128,0,0,0
	.stabs	"FAT_FILE_TYPE_SUBDIR:c=i4",128,0,0,0
	.stabs	"FAT_FILE_TYPE_MIN_DIR:c=i2",128,0,0,0
	.stabs	"FAT_DEFAULT_DATE:c=i10273",128,0,0,0
	.stabs	"FAT_DEFAULT_TIME:c=i2048",128,0,0,0
	.text
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.ident	"GCC: (GNU) 4.7.2"
.global __do_clear_bss
