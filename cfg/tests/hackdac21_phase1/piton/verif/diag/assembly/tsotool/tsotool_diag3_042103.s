// Modified by Princeton University on June 9th, 2015
/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T1 Processor File: tsotool_diag3_042103.s
* Copyright (c) 2006 Sun Microsystems, Inc.  All Rights Reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES.
* 
* The above named program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License version 2 as published by the Free Software Foundation.
* 
* The above named program is distributed in the hope that it will be 
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
* 
* You should have received a copy of the GNU General Public
* License along with this work; if not, write to the Free Software
* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA.
* 
* ========== Copyright Header End ============================================
*/
! no tsotool postprocessing
! TSOTOOL.PROCESSOR niagara.rtl
! TSOTOOL.MODE GEN
! TSOTOOL.BATCH Y
! TSOTOOL.VERBOSE Y
! TSOTOOL.TEST_NAME diag
! TSOTOOL.N_PROCS 8
! GEN.N_INSTR_PER_PROC 1000
! GEN.AVG_LOOP_SIZE 512
! GEN.AVG_LOOP_ITER 10
! GEN.SEED 24
! ADMAP.REGION_SIZE 64
! ADMAP.REGION_OFFSETS 0-4-12-32-64,76-80-84-256-512,32-64,0-64-128-192
! ADMAP.ATTRIBUTES CV=0111,CP=1111 
! ADMAP.N_ALIASES 0
! ADMAP.ALIAS_FREQUENCY 64
! ADMAP.ALIAS_OFFSET 8388608
! WT.PCT_FP_INSTR 10
! WT.PCT_LOADS_NF 0
! WT.PCT_NFS_FAULT 0
! WT.PCT_PREFETCH_FAULT 0
! WT.PCT_PREFETCH_UNIMP 0
! WT.REPLACEMENT 10
! WT.LD 10
! WT.BLD 0
! WT.DWLD 10
! WT.QWLD 0
! WT.ST 10
! WT.BST 0
! WT.BSTC 0
! WT.DWST 10
! WT.QWST 0
! WT.SWAP 3
! WT.CAS 5
! WT.CASX 5
! WT.ASI_L2_FLUSH 0
! WT.FLUSHI 0
! WT.MEMBAR 5
! WT.PREFETCH 10
! WT.NOP 1
! DBG.GRAPH_TRAVERSAL_DEPTH 25
! DBG.WRITE_RESULTS_FILE Y
! ADV.L2_WAYS 4
! ADV.TEST_ITERATIONS 1
! ADV.RESULTS_TO_MEM N
! ADV.BST_MEMBARS Y
! ADV.BLD_MEMBARS Y
! ADV.PREFETCH_FCNS fcn_1=5 


#define ENABLE_T0_Fp_exception_ieee_754_0x21
#define ENABLE_T0_Fp_exception_other_0x22
#define ENABLE_T0_Fp_disabled_0x20
#define ENABLE_T0_Illegal_instruction_0x10
#define ENABLE_T0_Clean_Window_0x24
#include "custom_page1.h"

#define N_CPUS  8
#define REGION_SIZE_RTL (64 * 1024)
!====#define RESULTS_BUF_SIZE_PER_CPU_RTL 1048576
#define RESULTS_BUF_SIZE_PER_CPU_RTL 1024
#define FUNC_TABLE_BUF_SIZE_RTL 1024
#define SYNC_BUF_SIZE_RTL 1024
#define PRIVATE_DATA_AREA_PER_CPU_RTL 64

#define ALIGN_PAGE_8K .align 8192


.seg "data"
ALIGN_PAGE_8K
user_data_start:
	.word 0x0
user_data_end:



.seg "data"
ALIGN_PAGE_8K
SHARED_DATA_START:
function_table:
	.word func0
	.word func1
	.word func2
	.word func3
	.word func4
	.word func5
	.word func6
	.word func7
	.skip FUNC_TABLE_BUF_SIZE_RTL
res_buf_p_0:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL
res_buf_p_1:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL
res_buf_p_2:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL
res_buf_p_3:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL
res_buf_p_4:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL
res_buf_p_5:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL
res_buf_p_6:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL
res_buf_p_7:
	.skip RESULTS_BUF_SIZE_PER_CPU_RTL
sync_buf:
	.skip SYNC_BUF_SIZE_RTL
private_data_p0:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p1:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p2:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p3:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p4:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p5:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p6:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL
private_data_p7:
	.skip PRIVATE_DATA_AREA_PER_CPU_RTL

SHARED_DATA_END:


!4 shared memory regions
.seg"data"
ALIGN_PAGE_8K
REGION0_START_ALIAS0:
	.skip REGION_SIZE_RTL
REGION0_END_ALIAS0:
REGION1_START_ALIAS0:
	.skip REGION_SIZE_RTL
REGION1_END_ALIAS0:
REGION2_START_ALIAS0:
	.skip REGION_SIZE_RTL
REGION2_END_ALIAS0:
REGION3_START_ALIAS0:
	.skip REGION_SIZE_RTL
	.skip 4 * REGION_SIZE_RTL	 ! replacement area
REGION3_END_ALIAS0:


.seg "data"
ALIGN_PAGE_8K
stackarea_data_start:
	.skip 16
stack_start0:
	.skip 2048
stack_start1:
	.skip 2048
stack_start2:
	.skip 2048
stack_start3:
	.skip 2048
stack_start4:
	.skip 2048
stack_start5:
	.skip 2048
stack_start6:
	.skip 2048
stack_start7:
	.skip 2048

stackarea_data_end:



.seg "data"
ALIGN_PAGE_8K
sync_results_buf:
	.skip 64
sync_results_buf_end:


.seg "text"
ALIGN_PAGE_8K
user_text_start:
	ba main
nop
user_text_end:



.seg "text"
ALIGN_PAGE_8K
mymod_text_start:
.global main


main:

	set     SHARED_DATA_START, %o0
	mov     0, %o1
#define B_TRAP T_BAD_TRAP
#define G_TRAP T_GOOD_TRAP

check_cpu_id: 

	wr	%g0, 0x4, %fprs         /* make sure fef is 1 */
	mov 	THREAD_STRIDE, %l2
	th_fork(thread,%l0)

thread_0:
	mov 	0, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
	
thread_1:
	mov 	1, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_2:
	mov 	2, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_3:
	mov 	3, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_4:
	mov 	4, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_5:
	mov 	5, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_6:
	mov 	6, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_7:
	mov 	7, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_8:
	mov 	8, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_9:
	mov 	9, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_10:
	mov 	10, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_11:
	mov 	11, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_12:
	mov 	12, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_13:
	mov 	13, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_14:
	mov 	14, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_15:
	mov 	15, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_16:
	mov 	16, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_17:
	mov 	17, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_18:
	mov 	18, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_19:
	mov 	19, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_20:
	mov 	20, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_21:
	mov 	21, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_22:
	mov 	22, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_23:
	mov 	23, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_24:
	mov 	24, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_25:
	mov 	25, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_26:
	mov 	26, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
	
thread_27:
	mov 	27, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_28:
	mov 	28, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_29:
	mov 	29, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_30:
	mov 	30, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop
	
thread_31:
	mov 	31, %g1 
        udivx 	%g1, %l2, %g1
	ba	entry_point; nop

entry_point:
	
	add     %g1, 0, %o2
	mov     N_CPUS, %o3
	cmp     %g1, 0x7
	be      stack_setup7
	nop
	cmp     %g1, 0x6
	be      stack_setup6
	nop
	cmp     %g1, 0x5
	be      stack_setup5
	nop
	cmp     %g1, 0x4
	be      stack_setup4
	nop
	cmp     %g1, 0x3
	be      stack_setup3
	nop
	cmp     %g1, 0x2
	be      stack_setup2
	nop
	cmp     %g1, 0x1
	be      stack_setup1
	nop
	cmp     %g1, 0x0
	be      stack_setup0
	nop
	ta      B_TRAP

stack_setup0:
	set     stack_start0, %l1
	mulx    %g1, 1024, %g2
	add     %g2, 512, %g2
	add     %l1, %g2, %sp
	set     func0, %o4
	ba      common_code
	nop

stack_setup1:
	set     stack_start1, %l1
	mulx    %g1, 1024, %g2
	add     %g2, 512, %g2
	add     %l1, %g2, %sp
	set     func1, %o4
	ba      common_code
	nop

stack_setup2:
	set     stack_start2, %l1
	mulx    %g1, 1024, %g2
	add     %g2, 512, %g2
	add     %l1, %g2, %sp
	set     func2, %o4
	ba      common_code
	nop

stack_setup3:
	set     stack_start3, %l1
	mulx    %g1, 1024, %g2
	add     %g2, 512, %g2
	add     %l1, %g2, %sp
	set     func3, %o4
	ba      common_code
	nop

stack_setup4:
	set     stack_start4, %l1
	mulx    %g1, 1024, %g2
	add     %g2, 512, %g2
	add     %l1, %g2, %sp
	set     func4, %o4
	ba      common_code
	nop

stack_setup5:
	set     stack_start5, %l1
	mulx    %g1, 1024, %g2
	add     %g2, 512, %g2
	add     %l1, %g2, %sp
	set     func5, %o4
	ba      common_code
	nop

stack_setup6:
	set     stack_start6, %l1
	mulx    %g1, 1024, %g2
	add     %g2, 512, %g2
	add     %l1, %g2, %sp
	set     func6, %o4
	ba      common_code
	nop

stack_setup7:
	set     stack_start7, %l1
	mulx    %g1, 1024, %g2
	add     %g2, 512, %g2
	add     %l1, %g2, %sp
	set     func7, %o4
	ba      common_code
	nop
common_code:
	call dispatch_asm
	nop
	ta   G_TRAP



.align 32
dispatch_asm:
dispatch:

	save    %sp,-104,%sp
	st      %i4,[%fp+84]
	st      %i3,[%fp+80]
	st      %i2,[%fp+76]
	st      %i1,[%fp+72]
	st      %i0,[%fp+68]

	ld      [%fp+68],%l3		! shared_area_begin
	ld      [%fp+76], %l2		! cpuid
	sll     %l2, 2, %l1
	add     %l3, %l1, %l0
	ld      [%l0-4], %l4
	set     REGION0_START_ALIAS0, %o0	! shared address 0
	set     REGION1_START_ALIAS0, %o1	! shared address 1
	set     REGION2_START_ALIAS0, %o2	! shared address 2
	set     REGION3_START_ALIAS0, %o3	! shared address 3
	add     %l3,FUNC_TABLE_BUF_SIZE_RTL,%l3
	sethi   %hi(RESULTS_BUF_SIZE_PER_CPU_RTL),%l6
	or      %l6,%lo(RESULTS_BUF_SIZE_PER_CPU_RTL),%l6
	mulx    %l2,%l6,%l5
	add     %l3,%l5,%o4		! o4 = res_area for cpu
	mov     1,%l5
	mulx    %l5,N_CPUS,%l5
	mulx    %l5,%l6,%l5
	add     %l5,%l3,%o5
	add     %o5,SYNC_BUF_SIZE_RTL,%o6	! o6 = o5 + sync_buf_area
	jmpl    %i4,%o7
	nop
	jmp     %i7+8
	restore


! register allocation - 
! %i0-%i3 for the read/write addresses, 
! %i4 for pointer to results area (NOT USED for RTL) 
! %i5 pointer to temp mem location (used by swaps, alignment) 
! %i6 Not used by RTL
! %l0-%l7 for the results, 
! %l4- pointer to temp storage for value read by atomic before being xferred to fp regs


!-----------------



func0:

! 1000 instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
srlx %i0, 6, %i0
sllx %i0, 6, %i0

add %i1, 63, %i1
srlx %i1, 6, %i1
sllx %i1, 6, %i1

add %i2, 63, %i2
srlx %i2, 6, %i2
sllx %i2, 6, %i2

add %i3, 63, %i3
srlx %i3, 6, %i3
sllx %i3, 6, %i3

add %i4, 63, %i4
srlx %i4, 6, %i4
sllx %i4, 6, %i4

add %i5, 63, %i5
srlx %i5, 6, %i5
sllx %i5, 6, %i5

mov   %i4, %l1
add   %i5, 1024, %l5

! Initialize %o7, the pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
addx  %o7, %l1, %o7 

! Initializing %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l7
or    %l7, %lo(0xdeadbee0), %l7
stw   %l7, [%l5]
sethi %hi(0xdeadbee1), %l7
or    %l7, %lo(0xdeadbee1), %l7
stw   %l7, [%l5+4]
ldd [%l5], %f0
ldd [%l5], %f2
ldd [%l5], %f4
ldd [%l5], %f6
ldd [%l5], %f8
ldd [%l5], %f10
ldd [%l5], %f12
ldd [%l5], %f14
ldd [%l5], %f16
ldd [%l5], %f18
ldd [%l5], %f20
ldd [%l5], %f22
ldd [%l5], %f24
ldd [%l5], %f26
ldd [%l5], %f28
ldd [%l5], %f30
ldd [%l5], %f32
ldd [%l5], %f34
ldd [%l5], %f36
ldd [%l5], %f38
ldd [%l5], %f40
ldd [%l5], %f42
ldd [%l5], %f44
ldd [%l5], %f46
ldd [%l5], %f48
ldd [%l5], %f50
ldd [%l5], %f52
ldd [%l5], %f54
ldd [%l5], %f56
ldd [%l5], %f58
ldd [%l5], %f60
ldd [%l5], %f62

! Initializing int results buffer registers: %o0 %o1 %o2 %o3 %o4 
mov %g0, %o0
mov %g0, %o1
mov %g0, %o2
mov %g0, %o3
mov %g0, %o4

! Signature for extract_loads
sethi %hi(0x00deade1), %l7
or    %l7, %lo(0x00deade1), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize integer counter 
sethi %hi(0x800001), %l4
or    %l4, %lo(0x800001), %l4

! Initialize FP counter 
sethi %hi(0x3f800000), %l7
or    %l7, %lo(0x3f800000), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize FP counter increment value 
sethi %hi(0x3f800000), %l7
or    %l7, %lo(0x3f800000), %l7
stw %l7, [%l5] 
ld [%l5], %f17 

P1: !ST [9] (maybe <- 0x800001) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_0_0:
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P2: !DWST [4] (maybe <- 0x800002) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3: !SWAP [1] (maybe <- 0x800003) (Int)
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P5: !CASX [10] (maybe <- 0x800004) (Int)
add %i2, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P6: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P7: !DWLD [14] (Int)
ldx [%i3 + 128], %o3
! move %o3(upper) -> %o3(upper)

P8: !CASX [11] (maybe <- 0x800005) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P9: !CAS [0] (maybe <- 0x800006) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P10: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P11: !CASX [15] (maybe <- 0x800007) (Int)
add %i3, 192, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P12: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P13: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P14: !ST [2] (maybe <- 0x800008) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P15: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P16: !CASX [9] (maybe <- 0x800009) (Int)
add %i1, 512, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P17: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P18: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P19: !LD [5] (FP)
ld [%i1 + 76], %f0
! 1 addresses covered

P20: !DWST [15] (maybe <- 0x80000a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P21: !NOP (Int)
nop

P22: !DWST [7] (maybe <- 0x80000b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P23: !DWST [11] (maybe <- 0x3f800000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 64]

P24: !LD [15] (Int)
lduw [%i3 + 192], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P25: !CAS [12] (maybe <- 0x80000d) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P26: !SWAP [12] (maybe <- 0x80000e) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P27: !SWAP [7] (maybe <- 0x80000f) (Int)
mov %l4, %o3
swap  [%i1 + 84], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P28: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P29: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P30: !ST [8] (maybe <- 0x40000000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 256 ]

P31: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P32: !DWLD [14] (Int)
ldx [%i3 + 128], %o4
! move %o4(upper) -> %o4(upper)

P33: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P34: !DWST [6] (maybe <- 0x800010) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P35: !LD [4] (Int)
lduw [%i0 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P36: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P37: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P38: !ST [10] (maybe <- 0x800012) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P39: !DWST [0] (maybe <- 0x800013) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P40: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P41: !DWST [13] (maybe <- 0x800015) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P42: !DWLD [7] (Int)
ldx [%i1 + 80], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P43: !DWLD [5] (Int)
ldx [%i1 + 72], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P44: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P45: !ST [11] (maybe <- 0x800016) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P46: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P47: !LD [13] (Int)
lduw [%i3 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P48: !ST [15] (maybe <- 0x800017) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P49: !DWST [4] (maybe <- 0x800018) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P50: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P51: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P52: !CASX [11] (maybe <- 0x800019) (Int)
add %i2, 64, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P53: !MEMBAR (Int)
membar #StoreLoad

P54: !MEMBAR (Int)
membar #StoreLoad

P55: !DWST [12] (maybe <- 0x80001a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P56: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P57: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P58: !DWST [6] (maybe <- 0x80001b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P59: !DWLD [2] (Int)
ldx [%i0 + 8], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P60: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P61: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P62: !MEMBAR (Int)
membar #StoreLoad

P63: !DWLD [12] (Int)
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)

P64: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P65: !DWST [10] (maybe <- 0x80001d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P66: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2

P67: !CASX [6] (maybe <- 0x80001e) (Int)
add %i1, 80, %l7
ldx [%l7], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l3
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P68: !CAS [8] (maybe <- 0x800020) (Int)
add %i1, 256, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P69: !LD [7] (Int)
lduw [%i1 + 84], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P70: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P71: !ST [13] (maybe <- 0x800021) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P72: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P73: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P74: !DWLD [2] (FP)
! case fp 
ldd  [%i0 + 8], %f18
! 1 addresses covered
fmovs %f19, %f1

P75: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P76: !SWAP [11] (maybe <- 0x800022) (Int)
mov %l4, %o3
swap  [%i2 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P77: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P78: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P79: !DWST [15] (maybe <- 0x800023) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P80: !DWST [3] (maybe <- 0x800024) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P81: !DWST [7] (maybe <- 0x800025) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P82: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P83: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P84: !DWST [6] (maybe <- 0x800027) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P85: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P86: !DWLD [0] (Int)
ldx [%i0 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P87: !LD [8] (Int)
lduw [%i1 + 256], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P88: !MEMBAR (Int)
membar #StoreLoad

P89: !CAS [5] (maybe <- 0x800029) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P90: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P91: !DWLD [14] (FP)
! case fp 
ldd  [%i3 + 128], %f2
! 1 addresses covered

P92: !CASX [3] (maybe <- 0x80002a) (Int)
add %i0, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P93: !ST [3] (maybe <- 0x40400000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 32 ]

P94: !DWST [13] (maybe <- 0x80002b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P95: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P96: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P97: !SWAP [8] (maybe <- 0x80002c) (Int)
mov %l4, %l6
swap  [%i1 + 256], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P98: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P99: !DWST [11] (maybe <- 0x80002d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P100: !DWST [13] (maybe <- 0x80002e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P101: !ST [7] (maybe <- 0x80002f) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P102: !DWST [3] (maybe <- 0x800030) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P103: !DWLD [5] (Int)
ldx [%i1 + 72], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P104: !SWAP [14] (maybe <- 0x800031) (Int)
mov %l4, %l6
swap  [%i3 + 128], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P105: !DWLD [13] (Int)
ldx [%i3 + 64], %o0
! move %o0(upper) -> %o0(upper)

P106: !ST [11] (maybe <- 0x800032) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P107: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0

P108: !DWST [9] (maybe <- 0x40800000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 512]

P109: !SWAP [9] (maybe <- 0x800033) (Int)
mov %l4, %o1
swap  [%i1 + 512], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P110: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P111: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P112: !CASX [11] (maybe <- 0x800034) (Int)
add %i2, 64, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P113: !DWLD [12] (Int)
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)

P114: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P115: !DWST [1] (maybe <- 0x800035) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P116: !DWST [0] (maybe <- 0x800037) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P117: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P118: !CASX [4] (maybe <- 0x800039) (Int)
add %i0, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P119: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P120: !DWLD [14] (Int)
ldx [%i3 + 128], %o2
! move %o2(upper) -> %o2(upper)

P121: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2

P122: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P123: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P124: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P125: !DWST [13] (maybe <- 0x80003a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P126: !DWLD [7] (Int)
ldx [%i1 + 80], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P127: !ST [8] (maybe <- 0x80003b) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P128: !DWST [4] (maybe <- 0x80003c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P129: !LD [13] (Int)
lduw [%i3 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P130: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P131: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P132: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P133: !ST [12] (maybe <- 0x80003d) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P134: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P135: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P136: !ST [0] (maybe <- 0x80003e) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P137: !LD [2] (Int)
lduw [%i0 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P138: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2

P139: !MEMBAR (Int)
membar #StoreLoad

P140: !LD [0] (Int)
lduw [%i0 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P141: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P142: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P143: !DWST [1] (maybe <- 0x80003f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P144: !NOP (Int)
nop

P145: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P146: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P147: !SWAP [7] (maybe <- 0x800041) (Int)
mov %l4, %o4
swap  [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P148: !ST [8] (maybe <- 0x800042) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P149: !NOP (Int)
nop

P150: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P151: !ST [8] (maybe <- 0x40a00000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 256 ]

P152: !NOP (Int)
nop

P153: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P154: !SWAP [12] (maybe <- 0x800043) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P155: !DWST [4] (maybe <- 0x800044) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P156: !SWAP [3] (maybe <- 0x800045) (Int)
mov %l4, %o0
swap  [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P157: !ST [1] (maybe <- 0x800046) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P158: !MEMBAR (Int)
membar #StoreLoad

P159: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P160: !CAS [7] (maybe <- 0x800047) (Int)
add %i1, 84, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P161: !MEMBAR (Int)
membar #StoreLoad

P162: !CAS [5] (maybe <- 0x800048) (Int)
add %i1, 76, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P163: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P164: !DWST [8] (maybe <- 0x800049) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P165: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P166: !MEMBAR (Int)
membar #StoreLoad

P167: !CAS [11] (maybe <- 0x80004a) (Int)
add %i2, 64, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P168: !CASX [2] (maybe <- 0x80004b) (Int)
add %i0, 8, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P169: !SWAP [6] (maybe <- 0x80004c) (Int)
mov %l4, %o1
swap  [%i1 + 80], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P170: !ST [5] (maybe <- 0x80004d) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P171: !MEMBAR (Int)
membar #StoreLoad

P172: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P173: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P174: !DWST [11] (maybe <- 0x80004e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P175: !ST [0] (maybe <- 0x80004f) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P176: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P177: !SWAP [12] (maybe <- 0x800050) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P178: !DWLD [13] (Int)
ldx [%i3 + 64], %o3
! move %o3(upper) -> %o3(upper)

P179: !CASX [1] (maybe <- 0x800051) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P180: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P181: !MEMBAR (Int)
membar #StoreLoad

P182: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P183: !DWST [5] (maybe <- 0x800053) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P184: !CAS [4] (maybe <- 0x800054) (Int)
add %i0, 64, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P185: !MEMBAR (Int)
membar #StoreLoad

P186: !DWST [12] (maybe <- 0x800055) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P187: !LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P188: !SWAP [15] (maybe <- 0x800056) (Int)
mov %l4, %l6
swap  [%i3 + 192], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P189: !LD [12] (Int)
lduw [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P190: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P191: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P192: !DWST [1] (maybe <- 0x800057) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P193: !DWLD [1] (Int)
ldx [%i0 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P194: !CAS [0] (maybe <- 0x800059) (Int)
add %i0, 0, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P195: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P196: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P197: !ST [13] (maybe <- 0x80005a) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P198: !LD [0] (Int)
lduw [%i0 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P199: !MEMBAR (Int)
membar #StoreLoad

P200: !MEMBAR (Int)
membar #StoreLoad

P201: !ST [9] (maybe <- 0x80005b) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P202: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P203: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P204: !DWST [8] (maybe <- 0x80005c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P205: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P206: !CAS [2] (maybe <- 0x80005d) (Int)
add %i0, 12, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P207: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P208: !CASX [14] (maybe <- 0x80005e) (Int)
add %i3, 128, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P209: !ST [6] (maybe <- 0x80005f) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P210: !DWLD [2] (Int)
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P211: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P212: !ST [5] (maybe <- 0x40c00000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 76 ]

P213: !CASX [15] (maybe <- 0x800060) (Int)
add %i3, 192, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P214: !DWST [6] (maybe <- 0x800061) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P215: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P216: !ST [9] (maybe <- 0x800063) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P217: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P218: !DWLD [12] (Int)
ldx [%i3 + 0], %o3
! move %o3(upper) -> %o3(upper)

P219: !DWST [7] (maybe <- 0x40e00000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P220: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P221: !SWAP [0] (maybe <- 0x800064) (Int)
mov %l4, %o4
swap  [%i0 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P222: !MEMBAR (Int)
membar #StoreLoad

P223: !CASX [11] (maybe <- 0x800065) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P224: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P225: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P226: !SWAP [0] (maybe <- 0x800066) (Int)
mov %l4, %o2
swap  [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P227: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P228: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P229: !DWST [5] (maybe <- 0x41100000) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 72]

P230: !DWST [13] (maybe <- 0x800067) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P231: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P232: !CAS [7] (maybe <- 0x800068) (Int)
add %i1, 84, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P233: !CAS [9] (maybe <- 0x800069) (Int)
add %i1, 512, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P234: !ST [2] (maybe <- 0x80006a) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P235: !DWLD [5] (Int)
ldx [%i1 + 72], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P236: !MEMBAR (Int)
membar #StoreLoad

P237: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P238: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P239: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P240: !DWST [0] (maybe <- 0x80006b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P241: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P242: !ST [13] (maybe <- 0x80006d) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P243: !ST [2] (maybe <- 0x80006e) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P244: !ST [13] (maybe <- 0x80006f) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P245: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P246: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P247: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P248: !CAS [15] (maybe <- 0x800070) (Int)
add %i3, 192, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P249: !DWST [7] (maybe <- 0x800071) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P250: !CAS [4] (maybe <- 0x800073) (Int)
add %i0, 64, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P251: !ST [8] (maybe <- 0x800074) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P252: !DWST [9] (maybe <- 0x800075) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P253: !ST [7] (maybe <- 0x800076) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P254: !DWST [13] (maybe <- 0x800077) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P255: !LD [11] (Int)
lduw [%i2 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P256: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P257: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P258: !ST [10] (maybe <- 0x800078) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P259: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P260: !NOP (Int)
nop

P261: !SWAP [2] (maybe <- 0x800079) (Int)
mov %l4, %l6
swap  [%i0 + 12], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P262: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P263: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P264: !LD [3] (Int)
lduw [%i0 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P265: !SWAP [4] (maybe <- 0x80007a) (Int)
mov %l4, %l6
swap  [%i0 + 64], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P266: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P267: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P268: !ST [10] (maybe <- 0x41200000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

P269: !LD [3] (Int)
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P270: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P271: !DWST [8] (maybe <- 0x80007b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P272: !DWST [5] (maybe <- 0x80007c) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P273: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0

P274: !MEMBAR (Int)
membar #StoreLoad

P275: !DWST [1] (maybe <- 0x41300000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 0]

P276: !CAS [7] (maybe <- 0x80007d) (Int)
add %i1, 84, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P277: !LD [9] (Int)
lduw [%i1 + 512], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P278: !NOP (Int)
nop

P279: !CAS [2] (maybe <- 0x80007e) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P280: !ST [12] (maybe <- 0x80007f) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P281: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P282: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P283: !DWST [5] (maybe <- 0x800080) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P284: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P285: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P286: !ST [13] (maybe <- 0x41500000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]

P287: !DWST [3] (maybe <- 0x800081) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P288: !SWAP [9] (maybe <- 0x800082) (Int)
mov %l4, %o4
swap  [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P289: !DWST [5] (maybe <- 0x800083) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P290: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P291: !ST [6] (maybe <- 0x800084) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P292: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P293: !ST [9] (maybe <- 0x800085) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P294: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P295: !ST [6] (maybe <- 0x800086) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P296: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P297: !DWST [11] (maybe <- 0x800087) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P298: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P299: !CAS [14] (maybe <- 0x800088) (Int)
add %i3, 128, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P300: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P301: !CASX [2] (maybe <- 0x800089) (Int)
add %i0, 8, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %l4, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P302: !DWLD [15] (Int)
ldx [%i3 + 192], %o3
! move %o3(upper) -> %o3(upper)

P303: !CASX [4] (maybe <- 0x80008a) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P304: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P305: !DWLD [11] (Int)
ldx [%i2 + 64], %o1
! move %o1(upper) -> %o1(upper)

P306: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1

P307: !ST [1] (maybe <- 0x80008b) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P308: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P309: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P310: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P311: !DWST [9] (maybe <- 0x80008c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P312: !MEMBAR (Int)
membar #StoreLoad

P313: !CAS [3] (maybe <- 0x80008d) (Int)
add %i0, 32, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P314: !CASX [11] (maybe <- 0x80008e) (Int)
add %i2, 64, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P315: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P316: !CAS [15] (maybe <- 0x80008f) (Int)
add %i3, 192, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P317: !DWLD [8] (Int)
ldx [%i1 + 256], %o1
! move %o1(upper) -> %o1(upper)

P318: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P319: !DWST [4] (maybe <- 0x800090) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P320: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P321: !CAS [11] (maybe <- 0x800091) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P322: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P323: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P324: !DWST [12] (maybe <- 0x800092) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P325: !ST [14] (maybe <- 0x800093) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P326: !CASX [2] (maybe <- 0x800094) (Int)
add %i0, 8, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %l4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P327: !CAS [7] (maybe <- 0x800095) (Int)
add %i1, 84, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P328: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P329: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P330: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P331: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P332: !MEMBAR (Int)
membar #StoreLoad

P333: !LD [8] (Int)
lduw [%i1 + 256], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P334: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P335: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P336: !MEMBAR (Int)
membar #StoreLoad

P337: !DWST [1] (maybe <- 0x800096) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P338: !CASX [9] (maybe <- 0x800098) (Int)
add %i1, 512, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P339: !SWAP [15] (maybe <- 0x800099) (Int)
mov %l4, %o4
swap  [%i3 + 192], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P340: !DWST [5] (maybe <- 0x41600000) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 72]

P341: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P342: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P343: !DWLD [3] (Int)
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P344: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P345: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P346: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0

P347: !DWST [8] (maybe <- 0x41700000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 256]

P348: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P349: !CAS [12] (maybe <- 0x80009a) (Int)
add %i3, 0, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P350: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P351: !CAS [5] (maybe <- 0x80009b) (Int)
add %i1, 76, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P352: !ST [7] (maybe <- 0x41800000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 84 ]

P353: !LD [13] (Int)
lduw [%i3 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P354: !CAS [2] (maybe <- 0x80009c) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P355: !DWST [12] (maybe <- 0x80009d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P356: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P357: !ST [3] (maybe <- 0x80009e) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P358: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P359: !CAS [6] (maybe <- 0x80009f) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P360: !CAS [15] (maybe <- 0x8000a0) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P361: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P362: !ST [13] (maybe <- 0x8000a1) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P363: !MEMBAR (Int)
membar #StoreLoad

P364: !ST [6] (maybe <- 0x8000a2) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P365: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P366: !DWST [5] (maybe <- 0x8000a3) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P367: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P368: !SWAP [5] (maybe <- 0x8000a4) (Int)
mov %l4, %o2
swap  [%i1 + 76], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P369: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P370: !ST [15] (maybe <- 0x8000a5) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P371: !CAS [10] (maybe <- 0x8000a6) (Int)
add %i2, 32, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P372: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P373: !MEMBAR (Int)
membar #StoreLoad

P374: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P375: !LD [11] (Int)
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P376: !CASX [6] (maybe <- 0x8000a7) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P377: !DWST [11] (maybe <- 0x8000a9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P378: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P379: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P380: !CAS [8] (maybe <- 0x8000aa) (Int)
add %i1, 256, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P381: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P382: !DWLD [9] (FP)
! case fp 
ldd  [%i1 + 512], %f18
! 1 addresses covered
fmovs %f18, %f3

P383: !ST [9] (maybe <- 0x8000ab) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P384: !CAS [11] (maybe <- 0x8000ac) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P385: !MEMBAR (Int)
membar #StoreLoad

P386: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P387: !CASX [3] (maybe <- 0x8000ad) (Int)
add %i0, 32, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P388: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P389: !DWLD [2] (FP)
! case fp 
ldd  [%i0 + 8], %f4
! 1 addresses covered
fmovs %f5, %f4

P390: !ST [11] (maybe <- 0x8000ae) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P391: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P392: !DWST [13] (maybe <- 0x41880000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 64]

P393: !DWST [5] (maybe <- 0x8000af) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P394: !MEMBAR (Int)
membar #StoreLoad

P395: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P396: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P397: !MEMBAR (Int)
membar #StoreLoad

P398: !ST [11] (maybe <- 0x8000b0) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P399: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P400: !LD [2] (Int)
lduw [%i0 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P401: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P402: !DWST [4] (maybe <- 0x8000b1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P403: !MEMBAR (Int)
membar #StoreLoad

P404: !ST [1] (maybe <- 0x8000b2) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P405: !LD [9] (FP)
ld [%i1 + 512], %f5
! 1 addresses covered

P406: !DWLD [2] (Int)
ldx [%i0 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P407: !CAS [8] (maybe <- 0x8000b3) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P408: !LD [15] (FP)
ld [%i3 + 192], %f6
! 1 addresses covered

P409: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P410: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P411: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P412: !DWLD [13] (Int)
ldx [%i3 + 64], %o0
! move %o0(upper) -> %o0(upper)

P413: !DWLD [12] (FP)
! case fp 
ldd  [%i3 + 0], %f18
! 1 addresses covered
fmovs %f18, %f7

P414: !CASX [8] (maybe <- 0x8000b4) (Int)
add %i1, 256, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P415: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P416: !CASX [11] (maybe <- 0x8000b5) (Int)
add %i2, 64, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P417: !CASX [5] (maybe <- 0x8000b6) (Int)
add %i1, 72, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %l4, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P418: !LD [4] (Int)
lduw [%i0 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P419: !CASX [11] (maybe <- 0x8000b7) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P420: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P421: !DWST [14] (maybe <- 0x8000b8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P422: !CAS [11] (maybe <- 0x8000b9) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P423: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P424: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P425: !MEMBAR (Int)
membar #StoreLoad

P426: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1

P427: !DWLD [8] (Int)
ldx [%i1 + 256], %o2
! move %o2(upper) -> %o2(upper)

P428: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P429: !SWAP [6] (maybe <- 0x8000ba) (Int)
mov %l4, %o3
swap  [%i1 + 80], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P430: !MEMBAR (Int)
membar #StoreLoad

P431: !DWLD [2] (FP)
! case fp 
ldd  [%i0 + 8], %f8
! 1 addresses covered
fmovs %f9, %f8

P432: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P433: !DWST [15] (maybe <- 0x8000bb) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P434: !DWST [12] (maybe <- 0x41900000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P435: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P436: !LD [12] (Int)
lduw [%i3 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P437: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P438: !DWST [6] (maybe <- 0x8000bc) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P439: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P440: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P441: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P442: !SWAP [10] (maybe <- 0x8000be) (Int)
mov %l4, %o0
swap  [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P443: !ST [1] (maybe <- 0x8000bf) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P444: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P445: !CASX [9] (maybe <- 0x8000c0) (Int)
add %i1, 512, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P446: !DWLD [7] (Int)
ldx [%i1 + 80], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P447: !ST [6] (maybe <- 0x8000c1) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P448: !LD [10] (Int)
lduw [%i2 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P449: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P450: !DWLD [6] (Int)
ldx [%i1 + 80], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P451: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P452: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P453: !MEMBAR (Int)
membar #StoreLoad

P454: !ST [14] (maybe <- 0x8000c2) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P455: !DWLD [15] (Int)
ldx [%i3 + 192], %o1
! move %o1(upper) -> %o1(upper)

P456: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P457: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P458: !DWST [4] (maybe <- 0x41980000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i0 + 64]

P459: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P460: !MEMBAR (Int)
membar #StoreLoad

P461: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P462: !ST [14] (maybe <- 0x8000c3) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P463: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P464: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P465: !DWST [13] (maybe <- 0x8000c4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P466: !CAS [11] (maybe <- 0x8000c5) (Int)
add %i2, 64, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P467: !DWLD [10] (Int)
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P468: !DWST [9] (maybe <- 0x8000c6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P469: !ST [10] (maybe <- 0x8000c7) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P470: !ST [8] (maybe <- 0x8000c8) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P471: !MEMBAR (Int)
membar #StoreLoad

P472: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P473: !ST [5] (maybe <- 0x8000c9) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P474: !DWLD [14] (Int)
ldx [%i3 + 128], %o1
! move %o1(upper) -> %o1(upper)

P475: !DWST [1] (maybe <- 0x8000ca) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P476: !ST [4] (maybe <- 0x8000cc) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P477: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P478: !NOP (Int)
nop

P479: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P480: !DWLD [7] (Int)
ldx [%i1 + 80], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P481: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P482: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P483: !DWST [15] (maybe <- 0x8000cd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P484: !ST [4] (maybe <- 0x8000ce) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P485: !DWLD [10] (Int)
ldx [%i2 + 32], %o4
! move %o4(upper) -> %o4(upper)

P486: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P487: !CAS [7] (maybe <- 0x8000cf) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P488: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P489: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P490: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P491: !DWST [4] (maybe <- 0x8000d0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P492: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P493: !NOP (Int)
nop

P494: !ST [12] (maybe <- 0x8000d1) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P495: !DWLD [12] (Int)
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)

P496: !LD [3] (FP)
ld [%i0 + 32], %f9
! 1 addresses covered

P497: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P498: !ST [6] (maybe <- 0x8000d2) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P499: !MEMBAR (Int)
membar #StoreLoad

P500: !ST [2] (maybe <- 0x8000d3) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P501: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1

P502: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P503: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P504: !DWST [12] (maybe <- 0x8000d4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P505: !DWST [7] (maybe <- 0x8000d5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P506: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P507: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P508: !DWLD [2] (Int)
ldx [%i0 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P509: !DWST [11] (maybe <- 0x8000d7) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P510: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2

P511: !NOP (Int)
nop

P512: !LD [5] (Int)
lduw [%i1 + 76], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P513: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P514: !LD [13] (Int)
lduw [%i3 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P515: !LD [12] (FP)
ld [%i3 + 0], %f10
! 1 addresses covered

P516: !LD [10] (FP)
ld [%i2 + 32], %f11
! 1 addresses covered

P517: !LD [5] (FP)
ld [%i1 + 76], %f12
! 1 addresses covered

P518: !LD [11] (FP)
ld [%i2 + 64], %f13
! 1 addresses covered

P519: !LD [10] (FP)
ld [%i2 + 32], %f14
! 1 addresses covered

P520: !LD [12] (FP)
ld [%i3 + 0], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P521: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
loop_exit_0_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_0_0
nop

P522: !DWLD [9] (Int)
ldx [%i1 + 512], %o0
! move %o0(upper) -> %o0(upper)

P523: !DWST [8] (maybe <- 0x8000d8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P524: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P525: !ST [14] (maybe <- 0x41a00000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P526: !NOP (Int)
nop

P527: !MEMBAR (Int)
membar #StoreLoad

P528: !ST [5] (maybe <- 0x8000d9) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P529: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P530: !DWLD [14] (Int)
ldx [%i3 + 128], %o1
! move %o1(upper) -> %o1(upper)

P531: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P532: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P533: !ST [5] (maybe <- 0x8000da) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P534: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P535: !CASX [0] (maybe <- 0x8000db) (Int)
add %i0, 0, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P536: !ST [10] (maybe <- 0x8000dd) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P537: !ST [10] (maybe <- 0x8000de) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P538: !CASX [4] (maybe <- 0x8000df) (Int)
add %i0, 64, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P539: !LD [1] (FP)
ld [%i0 + 4], %f0
! 1 addresses covered

P540: !DWST [3] (maybe <- 0x8000e0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P541: !DWLD [0] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P542: !DWLD [3] (Int)
ldx [%i0 + 32], %o2
! move %o2(upper) -> %o2(upper)

P543: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2

P544: !DWST [12] (maybe <- 0x8000e1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P545: !SWAP [2] (maybe <- 0x8000e2) (Int)
mov %l4, %o3
swap  [%i0 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P546: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P547: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P548: !MEMBAR (Int)
membar #StoreLoad

P549: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P550: !CAS [14] (maybe <- 0x8000e3) (Int)
add %i3, 128, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P551: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P552: !MEMBAR (Int)
membar #StoreLoad

P553: !DWLD [4] (Int)
ldx [%i0 + 64], %o0
! move %o0(upper) -> %o0(upper)

P554: !MEMBAR (Int)
membar #StoreLoad

P555: !DWST [13] (maybe <- 0x8000e4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P556: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0

P557: !MEMBAR (Int)
membar #StoreLoad

P558: !ST [9] (maybe <- 0x8000e5) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P559: !DWST [8] (maybe <- 0x8000e6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P560: !CASX [12] (maybe <- 0x8000e7) (Int)
add %i3, 0, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P561: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P562: !CASX [6] (maybe <- 0x8000e8) (Int)
add %i1, 80, %l7
ldx [%l7], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l3
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P563: !CAS [4] (maybe <- 0x8000ea) (Int)
add %i0, 64, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P564: !DWST [12] (maybe <- 0x8000eb) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P565: !LD [14] (Int)
lduw [%i3 + 128], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P566: !CASX [1] (maybe <- 0x8000ec) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P567: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P568: !CAS [0] (maybe <- 0x8000ee) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P569: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P570: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P571: !CASX [4] (maybe <- 0x8000ef) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P572: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P573: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P574: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P575: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P576: !DWLD [2] (Int)
ldx [%i0 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P577: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P578: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P579: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P580: !MEMBAR (Int)
membar #StoreLoad

P581: !DWST [10] (maybe <- 0x8000f0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P582: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P583: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P584: !DWST [11] (maybe <- 0x8000f1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P585: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P586: !DWLD [5] (Int)
ldx [%i1 + 72], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P587: !MEMBAR (Int)
membar #StoreLoad

P588: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P589: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P590: !SWAP [5] (maybe <- 0x8000f2) (Int)
mov %l4, %o0
swap  [%i1 + 76], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P591: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P592: !CASX [11] (maybe <- 0x8000f3) (Int)
add %i2, 64, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P593: !MEMBAR (Int)
membar #StoreLoad

P594: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P595: !LD [14] (Int)
lduw [%i3 + 128], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P596: !CASX [9] (maybe <- 0x8000f4) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P597: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P598: !NOP (Int)
nop

P599: !DWST [6] (maybe <- 0x41a80000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P600: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P601: !ST [2] (maybe <- 0x8000f5) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P602: !CASX [14] (maybe <- 0x8000f6) (Int)
add %i3, 128, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P603: !MEMBAR (Int)
membar #StoreLoad

P604: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P605: !ST [0] (maybe <- 0x8000f7) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P606: !DWLD [1] (Int)
ldx [%i0 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P607: !DWST [15] (maybe <- 0x8000f8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P608: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P609: !DWLD [6] (Int)
ldx [%i1 + 80], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P610: !ST [13] (maybe <- 0x8000f9) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P611: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P612: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P613: !DWST [9] (maybe <- 0x8000fa) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P614: !DWST [14] (maybe <- 0x41b80000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 128]

P615: !SWAP [0] (maybe <- 0x8000fb) (Int)
mov %l4, %o0
swap  [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P616: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P617: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P618: !DWST [15] (maybe <- 0x8000fc) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P619: !ST [5] (maybe <- 0x8000fd) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P620: !DWLD [0] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P621: !DWST [5] (maybe <- 0x8000fe) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P622: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P623: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P624: !LD [10] (Int)
lduw [%i2 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P625: !DWST [4] (maybe <- 0x41c00000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i0 + 64]

P626: !DWST [10] (maybe <- 0x8000ff) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P627: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P628: !MEMBAR (Int)
membar #StoreLoad

P629: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P630: !LD [11] (FP)
ld [%i2 + 64], %f1
! 1 addresses covered

P631: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P632: !DWST [10] (maybe <- 0x41c80000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 32]

P633: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P634: !ST [10] (maybe <- 0x800100) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P635: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P636: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P637: !ST [2] (maybe <- 0x41d00000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 12 ]

P638: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P639: !LD [11] (Int)
lduw [%i2 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P640: !DWST [7] (maybe <- 0x800101) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P641: !ST [0] (maybe <- 0x41d80000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P642: !CAS [5] (maybe <- 0x800103) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P643: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P644: !ST [2] (maybe <- 0x800104) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P645: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P646: !DWST [9] (maybe <- 0x800105) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P647: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P648: !DWST [6] (maybe <- 0x800106) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P649: !DWLD [7] (Int)
ldx [%i1 + 80], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P650: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P651: !ST [9] (maybe <- 0x800108) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P652: !DWST [11] (maybe <- 0x800109) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P653: !DWST [1] (maybe <- 0x80010a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P654: !DWST [10] (maybe <- 0x80010c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P655: !ST [0] (maybe <- 0x80010d) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P656: !CASX [1] (maybe <- 0x80010e) (Int)
add %i0, 0, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P657: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P658: !SWAP [0] (maybe <- 0x800110) (Int)
mov %l4, %o3
swap  [%i0 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P659: !CAS [2] (maybe <- 0x800111) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P660: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P661: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P662: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P663: !SWAP [2] (maybe <- 0x800112) (Int)
mov %l4, %o0
swap  [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P664: !CASX [6] (maybe <- 0x800113) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P665: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P666: !LD [6] (FP)
ld [%i1 + 80], %f2
! 1 addresses covered

P667: !DWST [1] (maybe <- 0x800115) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P668: !CASX [11] (maybe <- 0x800117) (Int)
add %i2, 64, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P669: !DWLD [9] (Int)
ldx [%i1 + 512], %o0
! move %o0(upper) -> %o0(upper)

P670: !ST [3] (maybe <- 0x41e00000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 32 ]

P671: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P672: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P673: !DWST [11] (maybe <- 0x800118) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P674: !ST [3] (maybe <- 0x800119) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P675: !LD [10] (FP)
ld [%i2 + 32], %f3
! 1 addresses covered

P676: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P677: !DWST [11] (maybe <- 0x80011a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P678: !CASX [3] (maybe <- 0x80011b) (Int)
add %i0, 32, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P679: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P680: !LD [5] (Int)
lduw [%i1 + 76], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P681: !DWST [11] (maybe <- 0x41e80000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 64]

P682: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P683: !MEMBAR (Int)
membar #StoreLoad

P684: !ST [0] (maybe <- 0x80011c) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P685: !ST [0] (maybe <- 0x80011d) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P686: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P687: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P688: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P689: !LD [0] (Int)
lduw [%i0 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P690: !DWST [9] (maybe <- 0x80011e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P691: !MEMBAR (Int)
membar #StoreLoad

P692: !CAS [1] (maybe <- 0x80011f) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P693: !DWST [5] (maybe <- 0x800120) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P694: !DWST [14] (maybe <- 0x800121) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P695: !CAS [5] (maybe <- 0x800122) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P696: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P697: !SWAP [8] (maybe <- 0x800123) (Int)
mov %l4, %l6
swap  [%i1 + 256], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P698: !DWST [10] (maybe <- 0x800124) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P699: !CASX [0] (maybe <- 0x800125) (Int)
add %i0, 0, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P700: !CASX [1] (maybe <- 0x800127) (Int)
add %i0, 0, %l7
ldx [%l7], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P701: !DWLD [14] (Int)
ldx [%i3 + 128], %o1
! move %o1(upper) -> %o1(upper)

P702: !MEMBAR (Int)
membar #StoreLoad

P703: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P704: !ST [8] (maybe <- 0x800129) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P705: !CASX [13] (maybe <- 0x80012a) (Int)
add %i3, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P706: !DWLD [12] (FP)
! case fp 
ldd  [%i3 + 0], %f4
! 1 addresses covered

P707: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P708: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P709: !ST [2] (maybe <- 0x80012b) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P710: !DWST [8] (maybe <- 0x80012c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P711: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P712: !SWAP [1] (maybe <- 0x80012d) (Int)
mov %l4, %l6
swap  [%i0 + 4], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P713: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P714: !DWST [6] (maybe <- 0x41f00000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P715: !DWST [14] (maybe <- 0x80012e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P716: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P717: !DWLD [0] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P718: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P719: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P720: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P721: !ST [6] (maybe <- 0x80012f) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P722: !DWST [5] (maybe <- 0x42000000) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 72]

P723: !DWST [6] (maybe <- 0x800130) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P724: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P725: !ST [2] (maybe <- 0x42040000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 12 ]

P726: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P727: !DWST [9] (maybe <- 0x800132) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P728: !MEMBAR (Int)
membar #StoreLoad

P729: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P730: !LD [13] (Int)
lduw [%i3 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P731: !ST [7] (maybe <- 0x800133) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P732: !CAS [9] (maybe <- 0x800134) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P733: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P734: !SWAP [11] (maybe <- 0x800135) (Int)
mov %l4, %o3
swap  [%i2 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P735: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P736: !CAS [7] (maybe <- 0x800136) (Int)
add %i1, 84, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P737: !SWAP [10] (maybe <- 0x800137) (Int)
mov %l4, %o0
swap  [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P738: !CASX [3] (maybe <- 0x800138) (Int)
add %i0, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P739: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P740: !CASX [6] (maybe <- 0x800139) (Int)
add %i1, 80, %l7
ldx [%l7], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l3
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P741: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P742: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P743: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P744: !DWLD [12] (Int)
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)

P745: !DWST [8] (maybe <- 0x80013b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P746: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P747: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P748: !CAS [1] (maybe <- 0x80013c) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P749: !ST [8] (maybe <- 0x80013d) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P750: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P751: !ST [9] (maybe <- 0x80013e) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P752: !DWLD [9] (Int)
ldx [%i1 + 512], %o2
! move %o2(upper) -> %o2(upper)

P753: !DWST [8] (maybe <- 0x80013f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P754: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P755: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P756: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P757: !LD [1] (Int)
lduw [%i0 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P758: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P759: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P760: !DWLD [12] (Int)
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)

P761: !NOP (Int)
nop

P762: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P763: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P764: !SWAP [10] (maybe <- 0x800140) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P765: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P766: !ST [9] (maybe <- 0x800141) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P767: !DWLD [11] (Int)
ldx [%i2 + 64], %o1
! move %o1(upper) -> %o1(upper)

P768: !CAS [2] (maybe <- 0x800142) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P769: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P770: !ST [9] (maybe <- 0x800143) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P771: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P772: !CAS [13] (maybe <- 0x800144) (Int)
add %i3, 64, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P773: !CAS [1] (maybe <- 0x800145) (Int)
add %i0, 4, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P774: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P775: !CASX [13] (maybe <- 0x800146) (Int)
add %i3, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P776: !MEMBAR (Int)
membar #StoreLoad

P777: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P778: !DWLD [2] (Int)
ldx [%i0 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P779: !CASX [15] (maybe <- 0x800147) (Int)
add %i3, 192, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P780: !NOP (Int)
nop

P781: !ST [1] (maybe <- 0x800148) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P782: !CASX [12] (maybe <- 0x800149) (Int)
add %i3, 0, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P783: !DWST [5] (maybe <- 0x80014a) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P784: !SWAP [5] (maybe <- 0x80014b) (Int)
mov %l4, %l6
swap  [%i1 + 76], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P785: !DWLD [9] (Int)
ldx [%i1 + 512], %o2
! move %o2(upper) -> %o2(upper)

P786: !DWLD [13] (FP)
! case fp 
ldd  [%i3 + 64], %f18
! 1 addresses covered
fmovs %f18, %f5

P787: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P788: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P789: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P790: !CAS [9] (maybe <- 0x80014c) (Int)
add %i1, 512, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P791: !DWLD [10] (Int)
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P792: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P793: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P794: !MEMBAR (Int)
membar #StoreLoad

P795: !CASX [2] (maybe <- 0x80014d) (Int)
add %i0, 8, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P796: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P797: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P798: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P799: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P800: !DWLD [8] (FP)
! case fp 
ldd  [%i1 + 256], %f6
! 1 addresses covered

P801: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P802: !DWST [2] (maybe <- 0x80014e) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P803: !MEMBAR (Int)
membar #StoreLoad

P804: !DWLD [5] (FP)
! case fp 
ldd  [%i1 + 72], %f18
! 1 addresses covered
fmovs %f19, %f7

P805: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P806: !CAS [4] (maybe <- 0x80014f) (Int)
add %i0, 64, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P807: !ST [2] (maybe <- 0x800150) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P808: !CASX [2] (maybe <- 0x800151) (Int)
add %i0, 8, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %l4, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P809: !DWLD [8] (FP)
! case fp 
ldd  [%i1 + 256], %f8
! 1 addresses covered

P810: !NOP (Int)
nop

P811: !DWST [4] (maybe <- 0x800152) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P812: !DWST [13] (maybe <- 0x800153) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P813: !ST [13] (maybe <- 0x800154) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P814: !LD [15] (Int)
lduw [%i3 + 192], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P815: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P816: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P817: !DWLD [12] (Int)
ldx [%i3 + 0], %o3
! move %o3(upper) -> %o3(upper)

P818: !MEMBAR (Int)
membar #StoreLoad

P819: !DWST [3] (maybe <- 0x800155) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P820: !DWST [13] (maybe <- 0x42080000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 64]

P821: !ST [12] (maybe <- 0x800156) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P822: !DWST [0] (maybe <- 0x800157) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P823: !MEMBAR (Int)
membar #StoreLoad

P824: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P825: !SWAP [8] (maybe <- 0x800159) (Int)
mov %l4, %l6
swap  [%i1 + 256], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P826: !DWST [13] (maybe <- 0x80015a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P827: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P828: !DWST [7] (maybe <- 0x80015b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P829: !DWLD [13] (Int)
ldx [%i3 + 64], %o4
! move %o4(upper) -> %o4(upper)

P830: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P831: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P832: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P833: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P834: !LD [5] (Int)
lduw [%i1 + 76], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P835: !SWAP [2] (maybe <- 0x80015d) (Int)
mov %l4, %l6
swap  [%i0 + 12], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P836: !CASX [6] (maybe <- 0x80015e) (Int)
add %i1, 80, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P837: !DWST [4] (maybe <- 0x800160) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P838: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P839: !MEMBAR (Int)
membar #StoreLoad

P840: !MEMBAR (Int)
membar #StoreLoad

P841: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P842: !LD [14] (Int)
lduw [%i3 + 128], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P843: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P844: !MEMBAR (Int)
membar #StoreLoad

P845: !DWLD [6] (Int)
ldx [%i1 + 80], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P846: !CASX [13] (maybe <- 0x800161) (Int)
add %i3, 64, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P847: !DWLD [4] (Int)
ldx [%i0 + 64], %o3
! move %o3(upper) -> %o3(upper)

P848: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P849: !DWST [9] (maybe <- 0x420c0000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 512]

P850: !MEMBAR (Int)
membar #StoreLoad

P851: !DWST [2] (maybe <- 0x800162) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P852: !ST [13] (maybe <- 0x800163) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P853: !DWST [6] (maybe <- 0x800164) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P854: !CAS [5] (maybe <- 0x800166) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P855: !ST [13] (maybe <- 0x800167) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P856: !ST [8] (maybe <- 0x800168) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P857: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P858: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P859: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P860: !ST [13] (maybe <- 0x800169) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P861: !LD [9] (Int)
lduw [%i1 + 512], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P862: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P863: !ST [2] (maybe <- 0x80016a) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P864: !LD [4] (Int)
lduw [%i0 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P865: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P866: !CASX [9] (maybe <- 0x80016b) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P867: !ST [13] (maybe <- 0x80016c) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P868: !MEMBAR (Int)
membar #StoreLoad

P869: !ST [11] (maybe <- 0x80016d) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P870: !ST [1] (maybe <- 0x80016e) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P871: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P872: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P873: !DWST [5] (maybe <- 0x42100000) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 72]

P874: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P875: !DWST [8] (maybe <- 0x80016f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P876: !CASX [7] (maybe <- 0x800170) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P877: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P878: !MEMBAR (Int)
membar #StoreLoad

P879: !DWLD [11] (Int)
ldx [%i2 + 64], %o2
! move %o2(upper) -> %o2(upper)

P880: !MEMBAR (Int)
membar #StoreLoad

P881: !DWST [15] (maybe <- 0x800172) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P882: !DWST [3] (maybe <- 0x800173) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P883: !ST [0] (maybe <- 0x800174) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P884: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P885: !CASX [5] (maybe <- 0x800175) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P886: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P887: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P888: !CAS [15] (maybe <- 0x800176) (Int)
add %i3, 192, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P889: !CASX [12] (maybe <- 0x800177) (Int)
add %i3, 0, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P890: !ST [8] (maybe <- 0x800178) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P891: !ST [6] (maybe <- 0x800179) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P892: !LD [5] (FP)
ld [%i1 + 76], %f9
! 1 addresses covered

P893: !CAS [8] (maybe <- 0x80017a) (Int)
add %i1, 256, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P894: !DWLD [0] (Int)
ldx [%i0 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P895: !DWST [13] (maybe <- 0x80017b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P896: !CASX [7] (maybe <- 0x80017c) (Int)
add %i1, 80, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P897: !DWST [7] (maybe <- 0x80017e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P898: !LD [15] (Int)
lduw [%i3 + 192], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P899: !DWST [13] (maybe <- 0x800180) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P900: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P901: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P902: !DWLD [6] (Int)
ldx [%i1 + 80], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P903: !CAS [7] (maybe <- 0x800181) (Int)
add %i1, 84, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P904: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P905: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P906: !CASX [4] (maybe <- 0x800182) (Int)
add %i0, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P907: !ST [0] (maybe <- 0x800183) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P908: !ST [8] (maybe <- 0x800184) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P909: !LD [9] (Int)
lduw [%i1 + 512], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P910: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P911: !ST [7] (maybe <- 0x42140000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 84 ]

P912: !DWST [8] (maybe <- 0x800185) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P913: !DWLD [8] (Int)
ldx [%i1 + 256], %o3
! move %o3(upper) -> %o3(upper)

P914: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P915: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l7
or %l7, %o3, %o3

P916: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P917: !LD [6] (Int)
lduw [%i1 + 80], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P918: !ST [10] (maybe <- 0x800186) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P919: !LD [0] (FP)
ld [%i0 + 0], %f10
! 1 addresses covered

P920: !SWAP [10] (maybe <- 0x800187) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P921: !DWST [14] (maybe <- 0x800188) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P922: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P923: !DWST [7] (maybe <- 0x800189) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P924: !DWST [7] (maybe <- 0x80018b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P925: !MEMBAR (Int)
membar #StoreLoad

P926: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P927: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P928: !ST [5] (maybe <- 0x80018d) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P929: !CASX [11] (maybe <- 0x80018e) (Int)
add %i2, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P930: !LD [6] (Int)
lduw [%i1 + 80], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P931: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P932: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P933: !DWST [10] (maybe <- 0x80018f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P934: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P935: !LD [0] (Int)
lduw [%i0 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P936: !NOP (Int)
nop

P937: !DWLD [4] (FP)
! case fp 
ldd  [%i0 + 64], %f18
! 1 addresses covered
fmovs %f18, %f11

P938: !ST [5] (maybe <- 0x800190) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P939: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P940: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P941: !MEMBAR (Int)
membar #StoreLoad

P942: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P943: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P944: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P945: !LD [14] (Int)
lduw [%i3 + 128], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P946: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P947: !CASX [12] (maybe <- 0x800191) (Int)
add %i3, 0, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P948: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P949: !CASX [6] (maybe <- 0x800192) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P950: !DWST [9] (maybe <- 0x800194) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P951: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P952: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P953: !SWAP [3] (maybe <- 0x800195) (Int)
mov %l4, %o4
swap  [%i0 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P954: !DWST [1] (maybe <- 0x800196) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P955: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P956: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P957: !CAS [10] (maybe <- 0x800198) (Int)
add %i2, 32, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P958: !ST [13] (maybe <- 0x800199) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P959: !DWST [5] (maybe <- 0x80019a) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P960: !LD [14] (Int)
lduw [%i3 + 128], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P961: !ST [2] (maybe <- 0x80019b) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P962: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1

P963: !MEMBAR (Int)
membar #StoreLoad

P964: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P965: !CAS [2] (maybe <- 0x80019c) (Int)
add %i0, 12, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P966: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P967: !CAS [1] (maybe <- 0x80019d) (Int)
add %i0, 4, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P968: !DWLD [1] (Int)
ldx [%i0 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P969: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P970: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P971: !DWST [13] (maybe <- 0x80019e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P972: !ST [5] (maybe <- 0x80019f) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P973: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P974: !DWLD [14] (Int)
ldx [%i3 + 128], %o0
! move %o0(upper) -> %o0(upper)

P975: !ST [15] (maybe <- 0x8001a0) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P976: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0

P977: !DWST [10] (maybe <- 0x8001a1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P978: !DWLD [0] (FP)
! case fp 
ldd  [%i0 + 0], %f12
! 2 addresses covered

P979: !CASX [0] (maybe <- 0x8001a2) (Int)
add %i0, 0, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P980: !ST [4] (maybe <- 0x42180000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

P981: !DWLD [8] (Int)
ldx [%i1 + 256], %o3
! move %o3(upper) -> %o3(upper)

P982: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P983: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P984: !DWST [2] (maybe <- 0x421c0000) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 8]

P985: !CAS [14] (maybe <- 0x8001a4) (Int)
add %i3, 128, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P986: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P987: !DWST [12] (maybe <- 0x8001a5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P988: !ST [6] (maybe <- 0x8001a6) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P989: !CAS [4] (maybe <- 0x8001a7) (Int)
add %i0, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P990: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P991: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P992: !LD [14] (Int)
lduw [%i3 + 128], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P993: !CASX [4] (maybe <- 0x8001a8) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P994: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P995: !DWST [9] (maybe <- 0x8001a9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P996: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P997: !CAS [9] (maybe <- 0x8001aa) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P998: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P999: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1000: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P1001: !DWLD [4] (Int)
ldx [%i0 + 64], %o1
! move %o1(upper) -> %o1(upper)

P1002: !SWAP [5] (maybe <- 0x8001ab) (Int)
mov %l4, %l6
swap  [%i1 + 76], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P1003: !DWST [14] (maybe <- 0x8001ac) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P1004: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1005: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P1006: !NOP (Int)
nop

P1007: !DWST [1] (maybe <- 0x8001ad) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P1008: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1009: !ST [11] (maybe <- 0x8001af) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1010: !MEMBAR (Int)
membar #StoreLoad

P1011: !LD [0] (FP)
ld [%i0 + 0], %f14
! 1 addresses covered

P1012: !LD [1] (FP)
ld [%i0 + 4], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P1013: !LD [2] (FP)
ld [%i0 + 12], %f0
! 1 addresses covered

P1014: !LD [3] (FP)
ld [%i0 + 32], %f1
! 1 addresses covered

P1015: !LD [4] (FP)
ld [%i0 + 64], %f2
! 1 addresses covered

P1016: !LD [5] (FP)
ld [%i1 + 76], %f3
! 1 addresses covered

P1017: !LD [6] (FP)
ld [%i1 + 80], %f4
! 1 addresses covered

P1018: !LD [7] (FP)
ld [%i1 + 84], %f5
! 1 addresses covered

P1019: !LD [8] (FP)
ld [%i1 + 256], %f6
! 1 addresses covered

P1020: !LD [9] (FP)
ld [%i1 + 512], %f7
! 1 addresses covered

P1021: !LD [10] (FP)
ld [%i2 + 32], %f8
! 1 addresses covered

P1022: !LD [11] (FP)
ld [%i2 + 64], %f9
! 1 addresses covered

P1023: !LD [12] (FP)
ld [%i3 + 0], %f10
! 1 addresses covered

P1024: !LD [13] (FP)
ld [%i3 + 64], %f11
! 1 addresses covered

P1025: !LD [14] (FP)
ld [%i3 + 128], %f12
! 1 addresses covered

P1026: !LD [15] (FP)
ld [%i3 + 192], %f13
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30

restore
retl
nop
!-----------------



func1:

! 1000 instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
srlx %i0, 6, %i0
sllx %i0, 6, %i0

add %i1, 63, %i1
srlx %i1, 6, %i1
sllx %i1, 6, %i1

add %i2, 63, %i2
srlx %i2, 6, %i2
sllx %i2, 6, %i2

add %i3, 63, %i3
srlx %i3, 6, %i3
sllx %i3, 6, %i3

add %i4, 63, %i4
srlx %i4, 6, %i4
sllx %i4, 6, %i4

add %i5, 63, %i5
srlx %i5, 6, %i5
sllx %i5, 6, %i5

mov   %i4, %l1
add   %i5, 1088, %l5

! Initialize %o7, the pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
addx  %o7, %l1, %o7 

! Initializing %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l7
or    %l7, %lo(0xdeadbee0), %l7
stw   %l7, [%l5]
sethi %hi(0xdeadbee1), %l7
or    %l7, %lo(0xdeadbee1), %l7
stw   %l7, [%l5+4]
ldd [%l5], %f0
ldd [%l5], %f2
ldd [%l5], %f4
ldd [%l5], %f6
ldd [%l5], %f8
ldd [%l5], %f10
ldd [%l5], %f12
ldd [%l5], %f14
ldd [%l5], %f16
ldd [%l5], %f18
ldd [%l5], %f20
ldd [%l5], %f22
ldd [%l5], %f24
ldd [%l5], %f26
ldd [%l5], %f28
ldd [%l5], %f30
ldd [%l5], %f32
ldd [%l5], %f34
ldd [%l5], %f36
ldd [%l5], %f38
ldd [%l5], %f40
ldd [%l5], %f42
ldd [%l5], %f44
ldd [%l5], %f46
ldd [%l5], %f48
ldd [%l5], %f50
ldd [%l5], %f52
ldd [%l5], %f54
ldd [%l5], %f56
ldd [%l5], %f58
ldd [%l5], %f60
ldd [%l5], %f62

! Initializing int results buffer registers: %o0 %o1 %o2 %o3 %o4 
mov %g0, %o0
mov %g0, %o1
mov %g0, %o2
mov %g0, %o3
mov %g0, %o4

! Signature for extract_loads
sethi %hi(0x01deade1), %l7
or    %l7, %lo(0x01deade1), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize integer counter 
sethi %hi(0x810001), %l4
or    %l4, %lo(0x810001), %l4

! Initialize FP counter 
sethi %hi(0x47800000), %l7
or    %l7, %lo(0x47800000), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize FP counter increment value 
sethi %hi(0x3f800000), %l7
or    %l7, %lo(0x3f800000), %l7
stw %l7, [%l5] 
ld [%l5], %f17 

P1027: !ST [7] (maybe <- 0x810001) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_1_0:
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P1028: !DWST [1] (maybe <- 0x810002) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P1029: !LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1030: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1031: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P1032: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P1033: !SWAP [11] (maybe <- 0x810004) (Int)
mov %l4, %l6
swap  [%i2 + 64], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1034: !DWST [11] (maybe <- 0x810005) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P1035: !MEMBAR (Int)
membar #StoreLoad

P1036: !ST [3] (maybe <- 0x810006) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1037: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1038: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1039: !CAS [14] (maybe <- 0x810007) (Int)
add %i3, 128, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P1040: !DWST [0] (maybe <- 0x810008) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P1041: !ST [4] (maybe <- 0x81000a) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P1042: !ST [6] (maybe <- 0x81000b) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P1043: !NOP (Int)
nop

P1044: !CASX [10] (maybe <- 0x81000c) (Int)
add %i2, 32, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1045: !LD [7] (Int)
lduw [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1046: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1047: !ST [14] (maybe <- 0x81000d) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P1048: !LD [5] (Int)
lduw [%i1 + 76], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1049: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1050: !MEMBAR (Int)
membar #StoreLoad

P1051: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P1052: !DWLD [6] (FP)
! case fp 
ldd  [%i1 + 80], %f0
! 2 addresses covered

P1053: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1054: !ST [12] (maybe <- 0x81000e) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1055: !SWAP [7] (maybe <- 0x81000f) (Int)
mov %l4, %o1
swap  [%i1 + 84], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1056: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1057: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1058: !CAS [10] (maybe <- 0x810010) (Int)
add %i2, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1059: !CAS [9] (maybe <- 0x810011) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1060: !ST [4] (maybe <- 0x810012) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P1061: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1062: !DWST [6] (maybe <- 0x47800000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P1063: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1064: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P1065: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1066: !DWST [1] (maybe <- 0x810013) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P1067: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1068: !LD [9] (Int)
lduw [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1069: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1070: !SWAP [3] (maybe <- 0x810015) (Int)
mov %l4, %o0
swap  [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1071: !CASX [12] (maybe <- 0x810016) (Int)
add %i3, 0, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1072: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1073: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1074: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1075: !DWLD [0] (Int)
ldx [%i0 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1076: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1077: !ST [1] (maybe <- 0x810017) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1078: !DWLD [3] (Int)
ldx [%i0 + 32], %o4
! move %o4(upper) -> %o4(upper)

P1079: !DWST [14] (maybe <- 0x810018) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P1080: !ST [9] (maybe <- 0x47800100) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 512 ]

P1081: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1082: !ST [15] (maybe <- 0x47800180) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 192 ]

P1083: !DWST [10] (maybe <- 0x810019) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P1084: !LD [15] (Int)
lduw [%i3 + 192], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1085: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P1086: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1087: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1088: !MEMBAR (Int)
membar #StoreLoad

P1089: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P1090: !DWLD [2] (FP)
! case fp 
ldd  [%i0 + 8], %f2
! 1 addresses covered
fmovs %f3, %f2

P1091: !DWLD [7] (Int)
ldx [%i1 + 80], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1092: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1093: !LD [15] (Int)
lduw [%i3 + 192], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1094: !MEMBAR (Int)
membar #StoreLoad

P1095: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1096: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P1097: !ST [11] (maybe <- 0x81001a) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1098: !SWAP [7] (maybe <- 0x81001b) (Int)
mov %l4, %l6
swap  [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1099: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1100: !LD [15] (Int)
lduw [%i3 + 192], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1101: !CAS [5] (maybe <- 0x81001c) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1102: !ST [14] (maybe <- 0x81001d) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P1103: !ST [1] (maybe <- 0x81001e) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1104: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P1105: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P1106: !DWST [5] (maybe <- 0x81001f) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P1107: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1108: !CASX [0] (maybe <- 0x810020) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1109: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1110: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P1111: !SWAP [12] (maybe <- 0x810022) (Int)
mov %l4, %o3
swap  [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1112: !ST [2] (maybe <- 0x810023) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P1113: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1114: !LD [12] (Int)
lduw [%i3 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1115: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1116: !DWLD [4] (FP)
! case fp 
ldd  [%i0 + 64], %f18
! 1 addresses covered
fmovs %f18, %f3

P1117: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P1118: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1119: !MEMBAR (Int)
membar #StoreLoad

P1120: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1121: !DWST [2] (maybe <- 0x810024) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P1122: !LD [4] (FP)
ld [%i0 + 64], %f4
! 1 addresses covered

P1123: !DWST [1] (maybe <- 0x810025) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P1124: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1125: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1126: !CASX [5] (maybe <- 0x810027) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1127: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1128: !DWLD [11] (Int)
ldx [%i2 + 64], %o3
! move %o3(upper) -> %o3(upper)

P1129: !DWLD [6] (FP)
! case fp 
ldd  [%i1 + 80], %f18
! 2 addresses covered
fmovs %f18, %f5
fmovs %f19, %f6

P1130: !ST [12] (maybe <- 0x810028) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1131: !ST [10] (maybe <- 0x810029) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P1132: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1133: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1134: !DWST [12] (maybe <- 0x81002a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P1135: !DWLD [1] (Int)
ldx [%i0 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1136: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P1137: !ST [9] (maybe <- 0x47800200) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 512 ]

P1138: !LD [10] (Int)
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1139: !DWST [3] (maybe <- 0x81002b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P1140: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1141: !DWST [15] (maybe <- 0x81002c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P1142: !DWST [2] (maybe <- 0x47800280) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 8]

P1143: !CASX [1] (maybe <- 0x81002d) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1144: !ST [3] (maybe <- 0x81002f) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1145: !ST [7] (maybe <- 0x810030) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P1146: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1147: !ST [1] (maybe <- 0x47800300) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P1148: !CAS [10] (maybe <- 0x810031) (Int)
add %i2, 32, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P1149: !ST [3] (maybe <- 0x810032) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1150: !ST [3] (maybe <- 0x810033) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1151: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1152: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1153: !CAS [11] (maybe <- 0x810034) (Int)
add %i2, 64, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P1154: !DWLD [1] (FP)
! case fp 
ldd  [%i0 + 0], %f18
! 2 addresses covered
fmovs %f18, %f7
fmovs %f19, %f8

P1155: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P1156: !MEMBAR (Int)
membar #StoreLoad

P1157: !LD [6] (Int)
lduw [%i1 + 80], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1158: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P1159: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1160: !LD [12] (Int)
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1161: !ST [12] (maybe <- 0x810035) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1162: !CAS [12] (maybe <- 0x810036) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1163: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2

P1164: !DWST [12] (maybe <- 0x810037) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P1165: !DWLD [10] (Int)
ldx [%i2 + 32], %o3
! move %o3(upper) -> %o3(upper)

P1166: !ST [4] (maybe <- 0x810038) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P1167: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P1168: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1169: !LD [8] (Int)
lduw [%i1 + 256], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1170: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P1171: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P1172: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1173: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1174: !DWLD [12] (Int)
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)

P1175: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1176: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P1177: !DWST [14] (maybe <- 0x810039) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P1178: !DWLD [8] (FP)
! case fp 
ldd  [%i1 + 256], %f18
! 1 addresses covered
fmovs %f18, %f9

P1179: !ST [13] (maybe <- 0x81003a) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P1180: !LD [8] (FP)
ld [%i1 + 256], %f10
! 1 addresses covered

P1181: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P1182: !LD [0] (FP)
ld [%i0 + 0], %f11
! 1 addresses covered

P1183: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P1184: !ST [6] (maybe <- 0x81003b) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P1185: !CAS [14] (maybe <- 0x81003c) (Int)
add %i3, 128, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1186: !DWLD [0] (Int)
ldx [%i0 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1187: !LD [2] (Int)
lduw [%i0 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1188: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P1189: !SWAP [14] (maybe <- 0x81003d) (Int)
mov %l4, %l6
swap  [%i3 + 128], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P1190: !LD [6] (Int)
lduw [%i1 + 80], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1191: !CASX [7] (maybe <- 0x81003e) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1192: !ST [2] (maybe <- 0x47800380) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 12 ]

P1193: !DWST [7] (maybe <- 0x810040) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P1194: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1195: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1196: !CASX [9] (maybe <- 0x810042) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P1197: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1198: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P1199: !CASX [1] (maybe <- 0x810043) (Int)
add %i0, 0, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1200: !LD [6] (Int)
lduw [%i1 + 80], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1201: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1202: !MEMBAR (Int)
membar #StoreLoad

P1203: !DWST [8] (maybe <- 0x810045) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P1204: !LD [4] (Int)
lduw [%i0 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1205: !LD [4] (FP)
ld [%i0 + 64], %f12
! 1 addresses covered

P1206: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P1207: !DWST [4] (maybe <- 0x810046) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P1208: !DWST [8] (maybe <- 0x810047) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P1209: !ST [9] (maybe <- 0x810048) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P1210: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P1211: !LD [11] (Int)
lduw [%i2 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1212: !CASX [0] (maybe <- 0x810049) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P1213: !DWST [12] (maybe <- 0x81004b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P1214: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1215: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1216: !ST [5] (maybe <- 0x81004c) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1217: !LD [11] (Int)
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1218: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1219: !DWST [4] (maybe <- 0x81004d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P1220: !MEMBAR (Int)
membar #StoreLoad

P1221: !NOP (Int)
nop

P1222: !DWST [1] (maybe <- 0x81004e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P1223: !DWST [3] (maybe <- 0x47800400) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i0 + 32]

P1224: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1225: !DWLD [7] (FP)
! case fp 
ldd  [%i1 + 80], %f18
! 2 addresses covered
fmovs %f18, %f13
fmovs %f19, %f14

P1226: !SWAP [1] (maybe <- 0x810050) (Int)
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1227: !DWST [9] (maybe <- 0x810051) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P1228: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1229: !DWST [8] (maybe <- 0x810052) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P1230: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1231: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P1232: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1233: !CASX [9] (maybe <- 0x810053) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1234: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P1235: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1236: !SWAP [15] (maybe <- 0x810054) (Int)
mov %l4, %o3
swap  [%i3 + 192], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1237: !ST [5] (maybe <- 0x810055) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1238: !ST [10] (maybe <- 0x810056) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P1239: !LD [9] (FP)
ld [%i1 + 512], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P1240: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P1241: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P1242: !CASX [12] (maybe <- 0x810057) (Int)
add %i3, 0, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1243: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P1244: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1245: !LD [11] (Int)
lduw [%i2 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1246: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P1247: !LD [14] (Int)
lduw [%i3 + 128], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1248: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1249: !MEMBAR (Int)
membar #StoreLoad

P1250: !MEMBAR (Int)
membar #StoreLoad

P1251: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1252: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P1253: !LD [4] (FP)
ld [%i0 + 64], %f0
! 1 addresses covered

P1254: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1255: !SWAP [0] (maybe <- 0x810058) (Int)
mov %l4, %l6
swap  [%i0 + 0], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1256: !LD [2] (Int)
lduw [%i0 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1257: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1258: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1259: !LD [7] (Int)
lduw [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1260: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1261: !NOP (Int)
nop

P1262: !DWLD [1] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1263: !MEMBAR (Int)
membar #StoreLoad

P1264: !DWLD [5] (Int)
ldx [%i1 + 72], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1265: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P1266: !DWLD [7] (Int)
ldx [%i1 + 80], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1267: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1268: !DWST [8] (maybe <- 0x810059) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P1269: !SWAP [10] (maybe <- 0x81005a) (Int)
mov %l4, %o3
swap  [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1270: !DWST [11] (maybe <- 0x47800480) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 64]

P1271: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P1272: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1273: !DWST [6] (maybe <- 0x81005b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P1274: !CAS [15] (maybe <- 0x81005d) (Int)
add %i3, 192, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P1275: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1276: !LD [7] (Int)
lduw [%i1 + 84], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1277: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P1278: !ST [11] (maybe <- 0x81005e) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1279: !MEMBAR (Int)
membar #StoreLoad

P1280: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P1281: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P1282: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P1283: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P1284: !CASX [8] (maybe <- 0x81005f) (Int)
add %i1, 256, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1285: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1286: !ST [0] (maybe <- 0x810060) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1287: !DWLD [0] (Int)
ldx [%i0 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1288: !SWAP [8] (maybe <- 0x810061) (Int)
mov %l4, %o4
swap  [%i1 + 256], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1289: !ST [13] (maybe <- 0x810062) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P1290: !CASX [8] (maybe <- 0x810063) (Int)
add %i1, 256, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1291: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1292: !SWAP [8] (maybe <- 0x810064) (Int)
mov %l4, %l6
swap  [%i1 + 256], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P1293: !ST [11] (maybe <- 0x810065) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1294: !DWST [9] (maybe <- 0x810066) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P1295: !DWLD [4] (Int)
ldx [%i0 + 64], %o2
! move %o2(upper) -> %o2(upper)

P1296: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P1297: !DWST [14] (maybe <- 0x810067) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P1298: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1299: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1300: !MEMBAR (Int)
membar #StoreLoad

P1301: !CAS [14] (maybe <- 0x810068) (Int)
add %i3, 128, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P1302: !SWAP [0] (maybe <- 0x810069) (Int)
mov %l4, %o4
swap  [%i0 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1303: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1304: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P1305: !CAS [3] (maybe <- 0x81006a) (Int)
add %i0, 32, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1306: !LD [6] (Int)
lduw [%i1 + 80], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1307: !CAS [15] (maybe <- 0x81006b) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1308: !MEMBAR (Int)
membar #StoreLoad

P1309: !CAS [6] (maybe <- 0x81006c) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1310: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P1311: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1312: !NOP (Int)
nop

P1313: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1314: !SWAP [6] (maybe <- 0x81006d) (Int)
mov %l4, %o4
swap  [%i1 + 80], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1315: !CAS [3] (maybe <- 0x81006e) (Int)
add %i0, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1316: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1317: !ST [11] (maybe <- 0x81006f) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1318: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1319: !DWLD [1] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1320: !ST [6] (maybe <- 0x810070) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P1321: !DWLD [11] (Int)
ldx [%i2 + 64], %o2
! move %o2(upper) -> %o2(upper)

P1322: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2

P1323: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P1324: !LD [8] (Int)
lduw [%i1 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1325: !ST [3] (maybe <- 0x810071) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1326: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1327: !ST [12] (maybe <- 0x810072) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1328: !LD [5] (Int)
lduw [%i1 + 76], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1329: !ST [8] (maybe <- 0x810073) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P1330: !ST [12] (maybe <- 0x810074) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1331: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P1332: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1333: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1334: !DWLD [3] (FP)
! case fp 
ldd  [%i0 + 32], %f18
! 1 addresses covered
fmovs %f18, %f1

P1335: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1336: !LD [11] (Int)
lduw [%i2 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1337: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1338: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P1339: !LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1340: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P1341: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P1342: !ST [15] (maybe <- 0x810075) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P1343: !LD [15] (Int)
lduw [%i3 + 192], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1344: !ST [1] (maybe <- 0x810076) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1345: !CAS [0] (maybe <- 0x810077) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1346: !MEMBAR (Int)
membar #StoreLoad

P1347: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P1348: !ST [3] (maybe <- 0x810078) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1349: !ST [5] (maybe <- 0x810079) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1350: !MEMBAR (Int)
membar #StoreLoad

P1351: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1352: !DWLD [15] (Int)
ldx [%i3 + 192], %o4
! move %o4(upper) -> %o4(upper)

P1353: !CASX [10] (maybe <- 0x81007a) (Int)
add %i2, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1354: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1355: !DWST [12] (maybe <- 0x81007b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P1356: !ST [1] (maybe <- 0x81007c) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1357: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P1358: !ST [11] (maybe <- 0x81007d) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1359: !ST [2] (maybe <- 0x81007e) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P1360: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1361: !ST [8] (maybe <- 0x47800500) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 256 ]

P1362: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P1363: !DWST [4] (maybe <- 0x47800580) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i0 + 64]

P1364: !DWST [9] (maybe <- 0x81007f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P1365: !DWLD [1] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1366: !DWST [8] (maybe <- 0x810080) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P1367: !ST [7] (maybe <- 0x810081) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P1368: !DWST [5] (maybe <- 0x47800600) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 72]

P1369: !CASX [10] (maybe <- 0x810082) (Int)
add %i2, 32, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1370: !DWLD [15] (Int)
ldx [%i3 + 192], %o0
! move %o0(upper) -> %o0(upper)

P1371: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1372: !SWAP [11] (maybe <- 0x810083) (Int)
mov %l4, %l6
swap  [%i2 + 64], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1373: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1374: !DWLD [4] (Int)
ldx [%i0 + 64], %o1
! move %o1(upper) -> %o1(upper)

P1375: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1

P1376: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1377: !ST [11] (maybe <- 0x810084) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1378: !ST [0] (maybe <- 0x810085) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1379: !DWLD [15] (Int)
ldx [%i3 + 192], %o2
! move %o2(upper) -> %o2(upper)

P1380: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P1381: !ST [9] (maybe <- 0x810086) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P1382: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1383: !LD [2] (Int)
lduw [%i0 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1384: !MEMBAR (Int)
membar #StoreLoad

P1385: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1386: !DWLD [9] (FP)
! case fp 
ldd  [%i1 + 512], %f2
! 1 addresses covered

P1387: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1388: !ST [8] (maybe <- 0x810087) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P1389: !DWLD [7] (Int)
ldx [%i1 + 80], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1390: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P1391: !DWST [15] (maybe <- 0x810088) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P1392: !DWST [6] (maybe <- 0x810089) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P1393: !MEMBAR (Int)
membar #StoreLoad

P1394: !ST [5] (maybe <- 0x81008b) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1395: !CASX [2] (maybe <- 0x81008c) (Int)
add %i0, 8, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %l4, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1396: !NOP (Int)
nop

P1397: !DWST [12] (maybe <- 0x81008d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P1398: !DWST [13] (maybe <- 0x81008e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P1399: !DWST [0] (maybe <- 0x81008f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P1400: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1401: !LD [0] (Int)
lduw [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1402: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1403: !DWST [8] (maybe <- 0x810091) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P1404: !ST [11] (maybe <- 0x810092) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1405: !DWST [6] (maybe <- 0x810093) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P1406: !DWLD [15] (FP)
! case fp 
ldd  [%i3 + 192], %f18
! 1 addresses covered
fmovs %f18, %f3

P1407: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P1408: !LD [9] (Int)
lduw [%i1 + 512], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1409: !ST [12] (maybe <- 0x810095) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1410: !DWST [10] (maybe <- 0x810096) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P1411: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1412: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1413: !DWLD [9] (Int)
ldx [%i1 + 512], %o4
! move %o4(upper) -> %o4(upper)

P1414: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1415: !CASX [4] (maybe <- 0x810097) (Int)
add %i0, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1416: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1417: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1418: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1419: !CAS [5] (maybe <- 0x810098) (Int)
add %i1, 76, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1420: !MEMBAR (Int)
membar #StoreLoad

P1421: !DWST [4] (maybe <- 0x810099) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P1422: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1423: !SWAP [12] (maybe <- 0x81009a) (Int)
mov %l4, %o3
swap  [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1424: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1425: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1426: !LD [11] (Int)
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1427: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1428: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1429: !DWLD [10] (Int)
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P1430: !ST [5] (maybe <- 0x81009b) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1431: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1432: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P1433: !SWAP [9] (maybe <- 0x81009c) (Int)
mov %l4, %o2
swap  [%i1 + 512], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1434: !DWLD [7] (FP)
! case fp 
ldd  [%i1 + 80], %f4
! 2 addresses covered

P1435: !MEMBAR (Int)
membar #StoreLoad

P1436: !SWAP [12] (maybe <- 0x81009d) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1437: !LD [14] (Int)
lduw [%i3 + 128], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1438: !DWST [13] (maybe <- 0x81009e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P1439: !ST [12] (maybe <- 0x81009f) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1440: !DWST [13] (maybe <- 0x8100a0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P1441: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P1442: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P1443: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1444: !CASX [0] (maybe <- 0x8100a1) (Int)
add %i0, 0, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1445: !DWLD [15] (Int)
ldx [%i3 + 192], %o2
! move %o2(upper) -> %o2(upper)

P1446: !DWST [1] (maybe <- 0x8100a3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P1447: !CASX [10] (maybe <- 0x8100a5) (Int)
add %i2, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P1448: !MEMBAR (Int)
membar #StoreLoad

P1449: !ST [3] (maybe <- 0x8100a6) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1450: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1451: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P1452: !CAS [1] (maybe <- 0x8100a7) (Int)
add %i0, 4, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1453: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1454: !MEMBAR (Int)
membar #StoreLoad

P1455: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1456: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P1457: !MEMBAR (Int)
membar #StoreLoad

P1458: !DWLD [15] (Int)
ldx [%i3 + 192], %o1
! move %o1(upper) -> %o1(upper)

P1459: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P1460: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1461: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1462: !ST [9] (maybe <- 0x8100a8) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P1463: !CAS [6] (maybe <- 0x8100a9) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1464: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1465: !ST [15] (maybe <- 0x8100aa) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P1466: !ST [13] (maybe <- 0x8100ab) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P1467: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P1468: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P1469: !MEMBAR (Int)
membar #StoreLoad

P1470: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P1471: !CASX [9] (maybe <- 0x8100ac) (Int)
add %i1, 512, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1472: !DWST [3] (maybe <- 0x8100ad) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P1473: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1474: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1475: !DWST [5] (maybe <- 0x8100ae) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P1476: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1477: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1478: !LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1479: !DWLD [15] (FP)
! case fp 
ldd  [%i3 + 192], %f6
! 1 addresses covered

P1480: !MEMBAR (Int)
membar #StoreLoad

P1481: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1482: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1483: !CASX [2] (maybe <- 0x8100af) (Int)
add %i0, 8, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1484: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P1485: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1486: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1487: !DWLD [7] (Int)
ldx [%i1 + 80], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1488: !LD [2] (Int)
lduw [%i0 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1489: !DWST [2] (maybe <- 0x8100b0) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P1490: !CAS [7] (maybe <- 0x8100b1) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1491: !ST [5] (maybe <- 0x8100b2) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1492: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1493: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P1494: !LD [2] (Int)
lduw [%i0 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1495: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P1496: !CASX [6] (maybe <- 0x8100b3) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P1497: !DWST [15] (maybe <- 0x8100b5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P1498: !ST [3] (maybe <- 0x8100b6) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1499: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1500: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P1501: !DWST [3] (maybe <- 0x47800680) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i0 + 32]

P1502: !ST [3] (maybe <- 0x8100b7) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1503: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P1504: !SWAP [7] (maybe <- 0x8100b8) (Int)
mov %l4, %l6
swap  [%i1 + 84], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P1505: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1506: !DWLD [14] (Int)
ldx [%i3 + 128], %o4
! move %o4(upper) -> %o4(upper)

P1507: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1508: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1509: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1510: !LD [6] (Int)
lduw [%i1 + 80], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1511: !DWST [13] (maybe <- 0x8100b9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P1512: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P1513: !DWST [1] (maybe <- 0x8100ba) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P1514: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P1515: !CAS [5] (maybe <- 0x8100bc) (Int)
add %i1, 76, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P1516: !DWLD [10] (Int)
ldx [%i2 + 32], %o2
! move %o2(upper) -> %o2(upper)

P1517: !CASX [11] (maybe <- 0x8100bd) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P1518: !ST [12] (maybe <- 0x8100be) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1519: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1520: !SWAP [11] (maybe <- 0x8100bf) (Int)
mov %l4, %o0
swap  [%i2 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1521: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P1522: !ST [5] (maybe <- 0x8100c0) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1523: !DWLD [3] (Int)
ldx [%i0 + 32], %o1
! move %o1(upper) -> %o1(upper)

P1524: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P1525: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P1526: !MEMBAR (Int)
membar #StoreLoad

P1527: !LD [11] (Int)
lduw [%i2 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1528: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1529: !ST [2] (maybe <- 0x8100c1) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P1530: !DWST [15] (maybe <- 0x8100c2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P1531: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1532: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1533: !LD [15] (Int)
lduw [%i3 + 192], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1534: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1535: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1536: !ST [0] (maybe <- 0x8100c3) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1537: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1538: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1539: !LD [9] (Int)
lduw [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1540: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1541: !LD [9] (FP)
ld [%i1 + 512], %f7
! 1 addresses covered

P1542: !LD [6] (FP)
ld [%i1 + 80], %f8
! 1 addresses covered

P1543: !LD [1] (FP)
ld [%i0 + 4], %f9
! 1 addresses covered

P1544: !LD [3] (FP)
ld [%i0 + 32], %f10
! 1 addresses covered

P1545: !LD [12] (FP)
ld [%i3 + 0], %f11
! 1 addresses covered

P1546: !LD [6] (FP)
ld [%i1 + 80], %f12
! 1 addresses covered

P1547: !LD [13] (FP)
ld [%i3 + 64], %f13
! 1 addresses covered

P1548: !LD [0] (FP)
ld [%i0 + 0], %f14
! 1 addresses covered

P1549: !LD [5] (FP)
ld [%i1 + 76], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P1550: !DWST [8] (maybe <- 0x8100c4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4
loop_exit_1_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_1_0
nop

P1551: !DWLD [0] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1552: !CASX [2] (maybe <- 0x8100c5) (Int)
add %i0, 8, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %l4, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1553: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P1554: !LD [4] (Int)
lduw [%i0 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1555: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1556: !CASX [10] (maybe <- 0x8100c6) (Int)
add %i2, 32, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1557: !SWAP [14] (maybe <- 0x8100c7) (Int)
mov %l4, %o1
swap  [%i3 + 128], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1558: !MEMBAR (Int)
membar #StoreLoad

P1559: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1560: !MEMBAR (Int)
membar #StoreLoad

P1561: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1562: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P1563: !DWST [10] (maybe <- 0x8100c8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P1564: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P1565: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1566: !DWLD [6] (Int)
ldx [%i1 + 80], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1567: !ST [7] (maybe <- 0x8100c9) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P1568: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P1569: !DWST [2] (maybe <- 0x8100ca) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P1570: !LD [6] (Int)
lduw [%i1 + 80], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1571: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1572: !SWAP [10] (maybe <- 0x8100cb) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P1573: !DWLD [14] (Int)
ldx [%i3 + 128], %o4
! move %o4(upper) -> %o4(upper)

P1574: !DWST [11] (maybe <- 0x8100cc) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P1575: !CASX [13] (maybe <- 0x8100cd) (Int)
add %i3, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1576: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1577: !DWST [9] (maybe <- 0x8100ce) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P1578: !NOP (Int)
nop

P1579: !DWST [2] (maybe <- 0x47800700) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 8]

P1580: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P1581: !CAS [15] (maybe <- 0x8100cf) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1582: !DWLD [1] (FP)
! case fp 
ldd  [%i0 + 0], %f0
! 2 addresses covered

P1583: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1584: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1585: !LD [8] (Int)
lduw [%i1 + 256], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1586: !LD [15] (FP)
ld [%i3 + 192], %f2
! 1 addresses covered

P1587: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1588: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1589: !CAS [8] (maybe <- 0x8100d0) (Int)
add %i1, 256, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1590: !DWLD [4] (Int)
ldx [%i0 + 64], %o1
! move %o1(upper) -> %o1(upper)

P1591: !MEMBAR (Int)
membar #StoreLoad

P1592: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1593: !ST [4] (maybe <- 0x8100d1) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P1594: !CAS [3] (maybe <- 0x8100d2) (Int)
add %i0, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1595: !LD [1] (FP)
ld [%i0 + 4], %f3
! 1 addresses covered

P1596: !SWAP [12] (maybe <- 0x8100d3) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1597: !ST [3] (maybe <- 0x8100d4) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1598: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P1599: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1600: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P1601: !DWST [10] (maybe <- 0x8100d5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P1602: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1603: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1604: !DWST [12] (maybe <- 0x8100d6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P1605: !MEMBAR (Int)
membar #StoreLoad

P1606: !DWST [10] (maybe <- 0x8100d7) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P1607: !ST [5] (maybe <- 0x8100d8) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1608: !DWLD [15] (Int)
ldx [%i3 + 192], %o3
! move %o3(upper) -> %o3(upper)

P1609: !DWST [3] (maybe <- 0x8100d9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P1610: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1611: !DWLD [3] (Int)
ldx [%i0 + 32], %o4
! move %o4(upper) -> %o4(upper)

P1612: !DWLD [10] (FP)
! case fp 
ldd  [%i2 + 32], %f4
! 1 addresses covered

P1613: !ST [7] (maybe <- 0x8100da) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P1614: !DWST [13] (maybe <- 0x47800780) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 64]

P1615: !ST [5] (maybe <- 0x8100db) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1616: !MEMBAR (Int)
membar #StoreLoad

P1617: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1618: !MEMBAR (Int)
membar #StoreLoad

P1619: !DWST [10] (maybe <- 0x8100dc) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P1620: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1621: !DWST [10] (maybe <- 0x8100dd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P1622: !CASX [4] (maybe <- 0x8100de) (Int)
add %i0, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1623: !DWST [12] (maybe <- 0x8100df) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P1624: !DWST [2] (maybe <- 0x8100e0) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P1625: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P1626: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P1627: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P1628: !ST [7] (maybe <- 0x47800800) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 84 ]

P1629: !ST [6] (maybe <- 0x8100e1) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P1630: !MEMBAR (Int)
membar #StoreLoad

P1631: !DWST [4] (maybe <- 0x8100e2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P1632: !CAS [10] (maybe <- 0x8100e3) (Int)
add %i2, 32, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1633: !DWST [11] (maybe <- 0x8100e4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P1634: !DWST [2] (maybe <- 0x8100e5) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P1635: !ST [15] (maybe <- 0x8100e6) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P1636: !SWAP [10] (maybe <- 0x8100e7) (Int)
mov %l4, %o3
swap  [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1637: !DWST [10] (maybe <- 0x8100e8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P1638: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1639: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1640: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1641: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1642: !CASX [6] (maybe <- 0x8100e9) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P1643: !ST [5] (maybe <- 0x8100eb) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1644: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1645: !ST [1] (maybe <- 0x8100ec) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1646: !ST [12] (maybe <- 0x8100ed) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P1647: !ST [4] (maybe <- 0x8100ee) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P1648: !CASX [6] (maybe <- 0x8100ef) (Int)
add %i1, 80, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1649: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1650: !CASX [14] (maybe <- 0x8100f1) (Int)
add %i3, 128, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1651: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1652: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1653: !ST [14] (maybe <- 0x8100f2) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P1654: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1655: !DWST [8] (maybe <- 0x8100f3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P1656: !CASX [14] (maybe <- 0x8100f4) (Int)
add %i3, 128, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1657: !ST [4] (maybe <- 0x8100f5) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P1658: !ST [10] (maybe <- 0x8100f6) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P1659: !DWST [6] (maybe <- 0x8100f7) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P1660: !CASX [7] (maybe <- 0x8100f9) (Int)
add %i1, 80, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1661: !MEMBAR (Int)
membar #StoreLoad

P1662: !DWST [0] (maybe <- 0x8100fb) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P1663: !DWST [11] (maybe <- 0x8100fd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P1664: !DWLD [13] (Int)
ldx [%i3 + 64], %o4
! move %o4(upper) -> %o4(upper)

P1665: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P1666: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P1667: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P1668: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1669: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1670: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1671: !SWAP [15] (maybe <- 0x8100fe) (Int)
mov %l4, %l6
swap  [%i3 + 192], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1672: !CAS [6] (maybe <- 0x8100ff) (Int)
add %i1, 80, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P1673: !CASX [14] (maybe <- 0x810100) (Int)
add %i3, 128, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1674: !LD [13] (Int)
lduw [%i3 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1675: !CAS [14] (maybe <- 0x810101) (Int)
add %i3, 128, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1676: !DWST [14] (maybe <- 0x810102) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P1677: !LD [11] (FP)
ld [%i2 + 64], %f5
! 1 addresses covered

P1678: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P1679: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1680: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P1681: !DWST [14] (maybe <- 0x810103) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P1682: !CASX [2] (maybe <- 0x810104) (Int)
add %i0, 8, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %l4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1683: !DWST [15] (maybe <- 0x810105) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P1684: !DWST [15] (maybe <- 0x810106) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P1685: !ST [1] (maybe <- 0x810107) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P1686: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P1687: !ST [11] (maybe <- 0x810108) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1688: !DWLD [3] (FP)
! case fp 
ldd  [%i0 + 32], %f6
! 1 addresses covered

P1689: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P1690: !CAS [9] (maybe <- 0x810109) (Int)
add %i1, 512, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1691: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1692: !LD [5] (Int)
lduw [%i1 + 76], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1693: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P1694: !ST [7] (maybe <- 0x81010a) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P1695: !DWLD [11] (Int)
ldx [%i2 + 64], %o2
! move %o2(upper) -> %o2(upper)

P1696: !DWST [3] (maybe <- 0x81010b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P1697: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P1698: !DWST [10] (maybe <- 0x81010c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P1699: !LD [8] (Int)
lduw [%i1 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1700: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1701: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P1702: !LD [7] (Int)
lduw [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1703: !DWLD [11] (FP)
! case fp 
ldd  [%i2 + 64], %f18
! 1 addresses covered
fmovs %f18, %f7

P1704: !CASX [6] (maybe <- 0x81010d) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1705: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P1706: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P1707: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1708: !LD [4] (FP)
ld [%i0 + 64], %f8
! 1 addresses covered

P1709: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1710: !DWST [15] (maybe <- 0x81010f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P1711: !ST [3] (maybe <- 0x810110) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1712: !MEMBAR (Int)
membar #StoreLoad

P1713: !DWST [7] (maybe <- 0x810111) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P1714: !MEMBAR (Int)
membar #StoreLoad

P1715: !DWST [14] (maybe <- 0x810113) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P1716: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P1717: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1718: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1719: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P1720: !MEMBAR (Int)
membar #StoreLoad

P1721: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1722: !MEMBAR (Int)
membar #StoreLoad

P1723: !ST [5] (maybe <- 0x810114) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P1724: !ST [14] (maybe <- 0x47800880) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P1725: !ST [15] (maybe <- 0x810115) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P1726: !MEMBAR (Int)
membar #StoreLoad

P1727: !SWAP [1] (maybe <- 0x810116) (Int)
mov %l4, %o3
swap  [%i0 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1728: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1729: !ST [10] (maybe <- 0x810117) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P1730: !NOP (Int)
nop

P1731: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1732: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P1733: !CAS [0] (maybe <- 0x810118) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1734: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P1735: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1736: !DWST [7] (maybe <- 0x810119) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P1737: !MEMBAR (Int)
membar #StoreLoad

P1738: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P1739: !ST [0] (maybe <- 0x81011b) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1740: !DWLD [3] (Int)
ldx [%i0 + 32], %o1
! move %o1(upper) -> %o1(upper)

P1741: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1742: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1743: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P1744: !CAS [7] (maybe <- 0x81011c) (Int)
add %i1, 84, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1745: !ST [15] (maybe <- 0x81011d) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P1746: !LD [12] (Int)
lduw [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1747: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1748: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1749: !DWLD [13] (FP)
! case fp 
ldd  [%i3 + 64], %f18
! 1 addresses covered
fmovs %f18, %f9

P1750: !SWAP [13] (maybe <- 0x81011e) (Int)
mov %l4, %o4
swap  [%i3 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1751: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1752: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P1753: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1754: !ST [9] (maybe <- 0x47800900) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 512 ]

P1755: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1756: !DWST [4] (maybe <- 0x81011f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P1757: !CAS [4] (maybe <- 0x810120) (Int)
add %i0, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1758: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P1759: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1760: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1761: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P1762: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P1763: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1764: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1765: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P1766: !CASX [15] (maybe <- 0x810121) (Int)
add %i3, 192, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1767: !DWLD [5] (Int)
ldx [%i1 + 72], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1768: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1769: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P1770: !NOP (Int)
nop

P1771: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1772: !NOP (Int)
nop

P1773: !LD [0] (Int)
lduw [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1774: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P1775: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1776: !DWST [8] (maybe <- 0x47800980) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 256]

P1777: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1778: !SWAP [0] (maybe <- 0x810122) (Int)
mov %l4, %o1
swap  [%i0 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1779: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1780: !CAS [1] (maybe <- 0x810123) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1781: !MEMBAR (Int)
membar #StoreLoad

P1782: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P1783: !LD [7] (FP)
ld [%i1 + 84], %f10
! 1 addresses covered

P1784: !DWLD [9] (Int)
ldx [%i1 + 512], %o3
! move %o3(upper) -> %o3(upper)

P1785: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1786: !LD [7] (Int)
lduw [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1787: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1788: !DWST [7] (maybe <- 0x810124) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P1789: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1790: !DWST [9] (maybe <- 0x47800a00) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 512]

P1791: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1792: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1793: !CASX [4] (maybe <- 0x810126) (Int)
add %i0, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1794: !DWLD [0] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1795: !LD [8] (FP)
ld [%i1 + 256], %f11
! 1 addresses covered

P1796: !ST [3] (maybe <- 0x810127) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1797: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P1798: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P1799: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1800: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P1801: !MEMBAR (Int)
membar #StoreLoad

P1802: !ST [6] (maybe <- 0x810128) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P1803: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1804: !CAS [5] (maybe <- 0x810129) (Int)
add %i1, 76, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P1805: !CASX [15] (maybe <- 0x81012a) (Int)
add %i3, 192, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1806: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1807: !LD [8] (Int)
lduw [%i1 + 256], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P1808: !CAS [6] (maybe <- 0x81012b) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1809: !CAS [15] (maybe <- 0x81012c) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1810: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P1811: !CASX [1] (maybe <- 0x81012d) (Int)
add %i0, 0, %l7
ldx [%l7], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1812: !MEMBAR (Int)
membar #StoreLoad

P1813: !DWLD [8] (Int)
ldx [%i1 + 256], %o1
! move %o1(upper) -> %o1(upper)

P1814: !DWST [6] (maybe <- 0x81012f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P1815: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1816: !LD [7] (FP)
ld [%i1 + 84], %f12
! 1 addresses covered

P1817: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1818: !ST [15] (maybe <- 0x810131) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P1819: !SWAP [6] (maybe <- 0x810132) (Int)
mov %l4, %o3
swap  [%i1 + 80], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P1820: !DWST [15] (maybe <- 0x810133) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P1821: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P1822: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1823: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1824: !MEMBAR (Int)
membar #StoreLoad

P1825: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P1826: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1827: !LD [14] (Int)
lduw [%i3 + 128], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1828: !DWST [15] (maybe <- 0x810134) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P1829: !ST [10] (maybe <- 0x810135) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P1830: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1831: !ST [7] (maybe <- 0x810136) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P1832: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P1833: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1834: !LD [14] (Int)
lduw [%i3 + 128], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1835: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P1836: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1837: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P1838: !DWLD [8] (Int)
ldx [%i1 + 256], %o1
! move %o1(upper) -> %o1(upper)

P1839: !MEMBAR (Int)
membar #StoreLoad

P1840: !ST [15] (maybe <- 0x810137) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P1841: !SWAP [0] (maybe <- 0x810138) (Int)
mov %l4, %l6
swap  [%i0 + 0], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P1842: !LD [2] (FP)
ld [%i0 + 12], %f13
! 1 addresses covered

P1843: !DWLD [0] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1844: !DWLD [15] (Int)
ldx [%i3 + 192], %o3
! move %o3(upper) -> %o3(upper)

P1845: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1846: !MEMBAR (Int)
membar #StoreLoad

P1847: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1848: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P1849: !LD [11] (Int)
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1850: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1851: !ST [15] (maybe <- 0x810139) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P1852: !CAS [1] (maybe <- 0x81013a) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1853: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1854: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1855: !CASX [11] (maybe <- 0x81013b) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P1856: !ST [4] (maybe <- 0x81013c) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P1857: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1858: !DWST [2] (maybe <- 0x81013d) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P1859: !MEMBAR (Int)
membar #StoreLoad

P1860: !DWST [15] (maybe <- 0x81013e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P1861: !ST [10] (maybe <- 0x81013f) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P1862: !DWST [9] (maybe <- 0x810140) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P1863: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P1864: !NOP (Int)
nop

P1865: !MEMBAR (Int)
membar #StoreLoad

P1866: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P1867: !DWLD [12] (Int)
ldx [%i3 + 0], %o3
! move %o3(upper) -> %o3(upper)

P1868: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P1869: !ST [3] (maybe <- 0x810141) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P1870: !DWST [8] (maybe <- 0x810142) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P1871: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1872: !SWAP [6] (maybe <- 0x810143) (Int)
mov %l4, %o4
swap  [%i1 + 80], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1873: !MEMBAR (Int)
membar #StoreLoad

P1874: !CAS [7] (maybe <- 0x810144) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1875: !ST [11] (maybe <- 0x810145) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P1876: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1877: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1878: !SWAP [6] (maybe <- 0x810146) (Int)
mov %l4, %l6
swap  [%i1 + 80], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1879: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1880: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P1881: !DWST [14] (maybe <- 0x810147) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P1882: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P1883: !CAS [9] (maybe <- 0x810148) (Int)
add %i1, 512, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P1884: !LD [0] (Int)
lduw [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1885: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P1886: !MEMBAR (Int)
membar #StoreLoad

P1887: !SWAP [3] (maybe <- 0x810149) (Int)
mov %l4, %l6
swap  [%i0 + 32], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P1888: !CASX [6] (maybe <- 0x81014a) (Int)
add %i1, 80, %l7
ldx [%l7], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1889: !ST [4] (maybe <- 0x81014c) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P1890: !CAS [8] (maybe <- 0x81014d) (Int)
add %i1, 256, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P1891: !DWLD [12] (Int)
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)

P1892: !MEMBAR (Int)
membar #StoreLoad

P1893: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2

P1894: !DWST [12] (maybe <- 0x81014e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P1895: !CASX [11] (maybe <- 0x81014f) (Int)
add %i2, 64, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1896: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1897: !DWST [9] (maybe <- 0x810150) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P1898: !DWLD [7] (Int)
ldx [%i1 + 80], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1899: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1900: !ST [0] (maybe <- 0x810151) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1901: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1902: !DWLD [3] (Int)
ldx [%i0 + 32], %o1
! move %o1(upper) -> %o1(upper)

P1903: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1

P1904: !LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P1905: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P1906: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1907: !ST [0] (maybe <- 0x810152) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1908: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P1909: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1910: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1911: !LD [8] (Int)
lduw [%i1 + 256], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1912: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1913: !CASX [7] (maybe <- 0x810153) (Int)
add %i1, 80, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1914: !CAS [15] (maybe <- 0x810155) (Int)
add %i3, 192, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1915: !MEMBAR (Int)
membar #StoreLoad

P1916: !ST [8] (maybe <- 0x810156) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P1917: !DWLD [0] (Int)
ldx [%i0 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1918: !ST [14] (maybe <- 0x810157) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P1919: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1920: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P1921: !CAS [5] (maybe <- 0x810158) (Int)
add %i1, 76, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P1922: !DWLD [10] (FP)
! case fp 
ldd  [%i2 + 32], %f14
! 1 addresses covered

P1923: !CASX [15] (maybe <- 0x810159) (Int)
add %i3, 192, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1924: !CAS [13] (maybe <- 0x81015a) (Int)
add %i3, 64, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1925: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P1926: !ST [14] (maybe <- 0x81015b) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P1927: !DWST [4] (maybe <- 0x81015c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P1928: !DWLD [7] (Int)
ldx [%i1 + 80], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P1929: !DWLD [5] (Int)
ldx [%i1 + 72], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P1930: !ST [2] (maybe <- 0x81015d) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P1931: !LD [12] (FP)
ld [%i3 + 0], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P1932: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1933: !DWST [3] (maybe <- 0x81015e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P1934: !ST [6] (maybe <- 0x81015f) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P1935: !MEMBAR (Int)
membar #StoreLoad

P1936: !SWAP [1] (maybe <- 0x810160) (Int)
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P1937: !DWST [9] (maybe <- 0x810161) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P1938: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1939: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1940: !CAS [15] (maybe <- 0x810162) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P1941: !CAS [11] (maybe <- 0x810163) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1942: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P1943: !ST [10] (maybe <- 0x810164) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P1944: !CASX [10] (maybe <- 0x810165) (Int)
add %i2, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P1945: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P1946: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P1947: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P1948: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1949: !DWST [8] (maybe <- 0x810166) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P1950: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1951: !DWST [14] (maybe <- 0x810167) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P1952: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1953: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P1954: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1955: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1956: !CASX [6] (maybe <- 0x810168) (Int)
add %i1, 80, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1957: !MEMBAR (Int)
membar #StoreLoad

P1958: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P1959: !MEMBAR (Int)
membar #StoreLoad

P1960: !MEMBAR (Int)
membar #StoreLoad

P1961: !DWLD [5] (Int)
ldx [%i1 + 72], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1962: !CAS [7] (maybe <- 0x81016a) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P1963: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P1964: !DWST [2] (maybe <- 0x81016b) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P1965: !SWAP [0] (maybe <- 0x81016c) (Int)
mov %l4, %l6
swap  [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1966: !DWST [12] (maybe <- 0x81016d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P1967: !DWLD [14] (Int)
ldx [%i3 + 128], %o1
! move %o1(upper) -> %o1(upper)

P1968: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P1969: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1970: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1971: !ST [0] (maybe <- 0x81016e) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P1972: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1973: !CASX [14] (maybe <- 0x81016f) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P1974: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1975: !CASX [3] (maybe <- 0x810170) (Int)
add %i0, 32, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P1976: !DWLD [0] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P1977: !SWAP [5] (maybe <- 0x810171) (Int)
mov %l4, %o2
swap  [%i1 + 76], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P1978: !SWAP [14] (maybe <- 0x810172) (Int)
mov %l4, %l6
swap  [%i3 + 128], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P1979: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1980: !CASX [5] (maybe <- 0x810173) (Int)
add %i1, 72, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %l4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P1981: !MEMBAR (Int)
membar #StoreLoad

P1982: !MEMBAR (Int)
membar #StoreLoad

P1983: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1984: !LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P1985: !SWAP [2] (maybe <- 0x810174) (Int)
mov %l4, %l6
swap  [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P1986: !CAS [0] (maybe <- 0x810175) (Int)
add %i0, 0, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P1987: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P1988: !DWLD [1] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P1989: !LD [11] (Int)
lduw [%i2 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P1990: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P1991: !DWLD [12] (Int)
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)

P1992: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1993: !MEMBAR (Int)
membar #StoreLoad

P1994: !ST [0] (maybe <- 0x47800a80) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P1995: !MEMBAR (Int)
membar #StoreLoad

P1996: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P1997: !ST [13] (maybe <- 0x810176) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P1998: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P1999: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2000: !MEMBAR (Int)
membar #StoreLoad

P2001: !CASX [11] (maybe <- 0x810177) (Int)
add %i2, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2002: !DWLD [11] (Int)
ldx [%i2 + 64], %o2
! move %o2(upper) -> %o2(upper)

P2003: !ST [15] (maybe <- 0x810178) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P2004: !DWST [1] (maybe <- 0x810179) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2005: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P2006: !DWST [3] (maybe <- 0x81017b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P2007: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P2008: !ST [15] (maybe <- 0x81017c) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P2009: !MEMBAR (Int)
membar #StoreLoad

P2010: !DWLD [6] (FP)
! case fp 
ldd  [%i1 + 80], %f0
! 2 addresses covered

P2011: !DWLD [12] (Int)
ldx [%i3 + 0], %o3
! move %o3(upper) -> %o3(upper)

P2012: !DWST [15] (maybe <- 0x81017d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2013: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2014: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P2015: !SWAP [0] (maybe <- 0x81017e) (Int)
mov %l4, %o4
swap  [%i0 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2016: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2017: !ST [14] (maybe <- 0x81017f) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P2018: !DWST [14] (maybe <- 0x810180) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P2019: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2020: !DWST [13] (maybe <- 0x810181) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2021: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2022: !DWST [13] (maybe <- 0x810182) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2023: !DWST [9] (maybe <- 0x810183) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P2024: !DWST [7] (maybe <- 0x810184) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2025: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P2026: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P2027: !DWLD [15] (FP)
! case fp 
ldd  [%i3 + 192], %f2
! 1 addresses covered

P2028: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2029: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2030: !CASX [7] (maybe <- 0x810186) (Int)
add %i1, 80, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2031: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2032: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2033: !DWLD [14] (Int)
ldx [%i3 + 128], %o2
! move %o2(upper) -> %o2(upper)

P2034: !CAS [6] (maybe <- 0x810188) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2035: !DWST [5] (maybe <- 0x810189) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P2036: !CASX [9] (maybe <- 0x81018a) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P2037: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P2038: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P2039: !MEMBAR (Int)
membar #StoreLoad

P2040: !LD [0] (FP)
ld [%i0 + 0], %f3
! 1 addresses covered

P2041: !LD [1] (FP)
ld [%i0 + 4], %f4
! 1 addresses covered

P2042: !LD [2] (FP)
ld [%i0 + 12], %f5
! 1 addresses covered

P2043: !LD [3] (FP)
ld [%i0 + 32], %f6
! 1 addresses covered

P2044: !LD [4] (FP)
ld [%i0 + 64], %f7
! 1 addresses covered

P2045: !LD [5] (FP)
ld [%i1 + 76], %f8
! 1 addresses covered

P2046: !LD [6] (FP)
ld [%i1 + 80], %f9
! 1 addresses covered

P2047: !LD [7] (FP)
ld [%i1 + 84], %f10
! 1 addresses covered

P2048: !LD [8] (FP)
ld [%i1 + 256], %f11
! 1 addresses covered

P2049: !LD [9] (FP)
ld [%i1 + 512], %f12
! 1 addresses covered

P2050: !LD [10] (FP)
ld [%i2 + 32], %f13
! 1 addresses covered

P2051: !LD [11] (FP)
ld [%i2 + 64], %f14
! 1 addresses covered

P2052: !LD [12] (FP)
ld [%i3 + 0], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P2053: !LD [13] (FP)
ld [%i3 + 64], %f0
! 1 addresses covered

P2054: !LD [14] (FP)
ld [%i3 + 128], %f1
! 1 addresses covered

P2055: !LD [15] (FP)
ld [%i3 + 192], %f2
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %o5
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30

restore
retl
nop
!-----------------



func2:

! 1000 instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
srlx %i0, 6, %i0
sllx %i0, 6, %i0

add %i1, 63, %i1
srlx %i1, 6, %i1
sllx %i1, 6, %i1

add %i2, 63, %i2
srlx %i2, 6, %i2
sllx %i2, 6, %i2

add %i3, 63, %i3
srlx %i3, 6, %i3
sllx %i3, 6, %i3

add %i4, 63, %i4
srlx %i4, 6, %i4
sllx %i4, 6, %i4

add %i5, 63, %i5
srlx %i5, 6, %i5
sllx %i5, 6, %i5

mov   %i4, %l1
add   %i5, 1152, %l5

! Initialize %o7, the pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
addx  %o7, %l1, %o7 

! Initializing %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l7
or    %l7, %lo(0xdeadbee0), %l7
stw   %l7, [%l5]
sethi %hi(0xdeadbee1), %l7
or    %l7, %lo(0xdeadbee1), %l7
stw   %l7, [%l5+4]
ldd [%l5], %f0
ldd [%l5], %f2
ldd [%l5], %f4
ldd [%l5], %f6
ldd [%l5], %f8
ldd [%l5], %f10
ldd [%l5], %f12
ldd [%l5], %f14
ldd [%l5], %f16
ldd [%l5], %f18
ldd [%l5], %f20
ldd [%l5], %f22
ldd [%l5], %f24
ldd [%l5], %f26
ldd [%l5], %f28
ldd [%l5], %f30
ldd [%l5], %f32
ldd [%l5], %f34
ldd [%l5], %f36
ldd [%l5], %f38
ldd [%l5], %f40
ldd [%l5], %f42
ldd [%l5], %f44
ldd [%l5], %f46
ldd [%l5], %f48
ldd [%l5], %f50
ldd [%l5], %f52
ldd [%l5], %f54
ldd [%l5], %f56
ldd [%l5], %f58
ldd [%l5], %f60
ldd [%l5], %f62

! Initializing int results buffer registers: %o0 %o1 %o2 %o3 %o4 
mov %g0, %o0
mov %g0, %o1
mov %g0, %o2
mov %g0, %o3
mov %g0, %o4

! Signature for extract_loads
sethi %hi(0x02deade1), %l7
or    %l7, %lo(0x02deade1), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize integer counter 
sethi %hi(0x820001), %l4
or    %l4, %lo(0x820001), %l4

! Initialize FP counter 
sethi %hi(0x47ffff80), %l7
or    %l7, %lo(0x47ffff80), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize FP counter increment value 
sethi %hi(0x3f800000), %l7
or    %l7, %lo(0x3f800000), %l7
stw %l7, [%l5] 
ld [%l5], %f17 

P2056: !DWLD [2] (FP)
! case fp 
ldd  [%i0 + 8], %f0
! 1 addresses covered
fmovs %f1, %f0

P2057: !DWST [0] (maybe <- 0x820001) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2058: !DWLD [11] (Int)
ldx [%i2 + 64], %o0
! move %o0(upper) -> %o0(upper)

P2059: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P2060: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P2061: !LD [15] (Int)
lduw [%i3 + 192], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2062: !ST [7] (maybe <- 0x820003) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P2063: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2064: !DWST [7] (maybe <- 0x820004) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2065: !LD [9] (Int)
lduw [%i1 + 512], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2066: !CASX [7] (maybe <- 0x820006) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2067: !MEMBAR (Int)
membar #StoreLoad

P2068: !DWST [6] (maybe <- 0x820008) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2069: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2070: !NOP (Int)
nop

P2071: !LD [6] (FP)
ld [%i1 + 80], %f1
! 1 addresses covered

P2072: !LD [4] (Int)
lduw [%i0 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2073: !ST [6] (maybe <- 0x47ffff80) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 80 ]

P2074: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P2075: !ST [13] (maybe <- 0x82000a) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P2076: !MEMBAR (Int)
membar #StoreLoad

P2077: !LD [5] (Int)
lduw [%i1 + 76], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2078: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2079: !ST [1] (maybe <- 0x82000b) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2080: !LD [13] (Int)
lduw [%i3 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2081: !MEMBAR (Int)
membar #StoreLoad

P2082: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2083: !DWST [1] (maybe <- 0x82000c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2084: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P2085: !ST [2] (maybe <- 0x82000e) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P2086: !CAS [10] (maybe <- 0x82000f) (Int)
add %i2, 32, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2087: !LD [1] (Int)
lduw [%i0 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2088: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P2089: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2090: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2091: !DWST [3] (maybe <- 0x820010) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P2092: !DWLD [4] (FP)
! case fp 
ldd  [%i0 + 64], %f2
! 1 addresses covered

P2093: !ST [3] (maybe <- 0x820011) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2094: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P2095: !LD [2] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2096: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P2097: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P2098: !ST [7] (maybe <- 0x820012) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P2099: !ST [15] (maybe <- 0x820013) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P2100: !DWLD [0] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2101: !DWST [12] (maybe <- 0x48000000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P2102: !CASX [3] (maybe <- 0x820014) (Int)
add %i0, 32, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P2103: !DWST [7] (maybe <- 0x820015) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2104: !ST [13] (maybe <- 0x820017) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P2105: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2106: !DWLD [2] (Int)
ldx [%i0 + 8], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2107: !CAS [8] (maybe <- 0x820018) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2108: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2109: !ST [1] (maybe <- 0x820019) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2110: !CAS [13] (maybe <- 0x82001a) (Int)
add %i3, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2111: !MEMBAR (Int)
membar #StoreLoad

P2112: !DWST [11] (maybe <- 0x48000040) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 64]

P2113: !ST [1] (maybe <- 0x82001b) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2114: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2115: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2116: !DWLD [7] (FP)
! case fp 
ldd  [%i1 + 80], %f18
! 2 addresses covered
fmovs %f18, %f3
fmovs %f19, %f4

P2117: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P2118: !LD [5] (Int)
lduw [%i1 + 76], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2119: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2120: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P2121: !CAS [12] (maybe <- 0x82001c) (Int)
add %i3, 0, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2122: !ST [1] (maybe <- 0x82001d) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2123: !LD [5] (Int)
lduw [%i1 + 76], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2124: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2125: !DWST [4] (maybe <- 0x82001e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2126: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2127: !DWLD [13] (Int)
ldx [%i3 + 64], %o0
! move %o0(upper) -> %o0(upper)

P2128: !ST [3] (maybe <- 0x82001f) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2129: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2130: !MEMBAR (Int)
membar #StoreLoad

P2131: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P2132: !DWST [15] (maybe <- 0x820020) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2133: !ST [1] (maybe <- 0x820021) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2134: !DWST [13] (maybe <- 0x820022) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2135: !DWST [3] (maybe <- 0x820023) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P2136: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2137: !CASX [7] (maybe <- 0x820024) (Int)
add %i1, 80, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P2138: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2139: !DWLD [2] (Int)
ldx [%i0 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2140: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P2141: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2142: !SWAP [9] (maybe <- 0x820026) (Int)
mov %l4, %o4
swap  [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2143: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2144: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2145: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2146: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P2147: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2148: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2149: !LD [4] (Int)
lduw [%i0 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2150: !CAS [7] (maybe <- 0x820027) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2151: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P2152: !CASX [13] (maybe <- 0x820028) (Int)
add %i3, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2153: !DWST [4] (maybe <- 0x820029) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2154: !DWST [11] (maybe <- 0x82002a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P2155: !NOP (Int)
nop

P2156: !CAS [12] (maybe <- 0x82002b) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2157: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P2158: !CAS [2] (maybe <- 0x82002c) (Int)
add %i0, 12, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2159: !ST [3] (maybe <- 0x82002d) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2160: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P2161: !CAS [5] (maybe <- 0x82002e) (Int)
add %i1, 76, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2162: !DWLD [8] (Int)
ldx [%i1 + 256], %o3
! move %o3(upper) -> %o3(upper)

P2163: !ST [0] (maybe <- 0x82002f) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P2164: !DWST [4] (maybe <- 0x820030) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2165: !DWST [2] (maybe <- 0x820031) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P2166: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2167: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2168: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2169: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P2170: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2171: !DWST [13] (maybe <- 0x820032) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2172: !SWAP [13] (maybe <- 0x820033) (Int)
mov %l4, %l6
swap  [%i3 + 64], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2173: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P2174: !CAS [15] (maybe <- 0x820034) (Int)
add %i3, 192, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P2175: !MEMBAR (Int)
membar #StoreLoad

P2176: !LD [15] (Int)
lduw [%i3 + 192], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2177: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2178: !SWAP [9] (maybe <- 0x820035) (Int)
mov %l4, %l6
swap  [%i1 + 512], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2179: !ST [15] (maybe <- 0x820036) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P2180: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2181: !DWST [13] (maybe <- 0x820037) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2182: !CASX [7] (maybe <- 0x820038) (Int)
add %i1, 80, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P2183: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2184: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2185: !LD [3] (Int)
lduw [%i0 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2186: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P2187: !CAS [7] (maybe <- 0x82003a) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2188: !MEMBAR (Int)
membar #StoreLoad

P2189: !CAS [0] (maybe <- 0x82003b) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2190: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P2191: !DWLD [3] (Int)
ldx [%i0 + 32], %o1
! move %o1(upper) -> %o1(upper)

P2192: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2193: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2194: !ST [0] (maybe <- 0x48000080) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P2195: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P2196: !LD [5] (Int)
lduw [%i1 + 76], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2197: !DWST [6] (maybe <- 0x82003c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2198: !CASX [5] (maybe <- 0x82003e) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2199: !MEMBAR (Int)
membar #StoreLoad

P2200: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2201: !CAS [13] (maybe <- 0x82003f) (Int)
add %i3, 64, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2202: !ST [2] (maybe <- 0x820040) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P2203: !DWLD [1] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2204: !DWST [1] (maybe <- 0x820041) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2205: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2206: !ST [4] (maybe <- 0x820043) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P2207: !DWST [0] (maybe <- 0x820044) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2208: !CAS [2] (maybe <- 0x820046) (Int)
add %i0, 12, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2209: !ST [12] (maybe <- 0x480000c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P2210: !CASX [11] (maybe <- 0x820047) (Int)
add %i2, 64, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2211: !DWLD [13] (Int)
ldx [%i3 + 64], %o0
! move %o0(upper) -> %o0(upper)

P2212: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0

P2213: !ST [7] (maybe <- 0x820048) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P2214: !CAS [1] (maybe <- 0x820049) (Int)
add %i0, 4, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2215: !LD [2] (Int)
lduw [%i0 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2216: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2217: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2218: !MEMBAR (Int)
membar #StoreLoad

P2219: !DWST [14] (maybe <- 0x82004a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P2220: !ST [12] (maybe <- 0x82004b) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2221: !DWST [1] (maybe <- 0x82004c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2222: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P2223: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2224: !DWLD [10] (Int)
ldx [%i2 + 32], %o3
! move %o3(upper) -> %o3(upper)

P2225: !DWST [10] (maybe <- 0x82004e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P2226: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P2227: !MEMBAR (Int)
membar #StoreLoad

P2228: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2229: !DWLD [6] (Int)
ldx [%i1 + 80], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2230: !DWLD [5] (Int)
ldx [%i1 + 72], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2231: !CAS [7] (maybe <- 0x82004f) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2232: !ST [5] (maybe <- 0x820050) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P2233: !MEMBAR (Int)
membar #StoreLoad

P2234: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2235: !CAS [0] (maybe <- 0x820051) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2236: !ST [12] (maybe <- 0x820052) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2237: !SWAP [5] (maybe <- 0x820053) (Int)
mov %l4, %l6
swap  [%i1 + 76], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2238: !LD [8] (Int)
lduw [%i1 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2239: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2240: !MEMBAR (Int)
membar #StoreLoad

P2241: !LD [13] (Int)
lduw [%i3 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2242: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2243: !DWLD [2] (Int)
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2244: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2245: !CASX [14] (maybe <- 0x820054) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P2246: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2247: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2248: !SWAP [9] (maybe <- 0x820055) (Int)
mov %l4, %l6
swap  [%i1 + 512], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2249: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2250: !MEMBAR (Int)
membar #StoreLoad

P2251: !DWST [8] (maybe <- 0x820056) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2252: !CASX [4] (maybe <- 0x820057) (Int)
add %i0, 64, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2253: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P2254: !CAS [11] (maybe <- 0x820058) (Int)
add %i2, 64, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2255: !ST [1] (maybe <- 0x820059) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2256: !ST [14] (maybe <- 0x82005a) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P2257: !MEMBAR (Int)
membar #StoreLoad

P2258: !CAS [13] (maybe <- 0x82005b) (Int)
add %i3, 64, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2259: !DWLD [6] (Int)
ldx [%i1 + 80], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P2260: !DWLD [14] (Int)
ldx [%i3 + 128], %o3
! move %o3(upper) -> %o3(upper)

P2261: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P2262: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P2263: !CASX [2] (maybe <- 0x82005c) (Int)
add %i0, 8, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2264: !DWLD [5] (Int)
ldx [%i1 + 72], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2265: !LD [5] (FP)
ld [%i1 + 76], %f5
! 1 addresses covered

P2266: !ST [12] (maybe <- 0x82005d) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2267: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P2268: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P2269: !MEMBAR (Int)
membar #StoreLoad

P2270: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2271: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2272: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2273: !NOP (Int)
nop

P2274: !ST [14] (maybe <- 0x82005e) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P2275: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P2276: !ST [10] (maybe <- 0x82005f) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P2277: !LD [14] (Int)
lduw [%i3 + 128], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2278: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2279: !CASX [5] (maybe <- 0x820060) (Int)
add %i1, 72, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %l4, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2280: !CASX [7] (maybe <- 0x820061) (Int)
add %i1, 80, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P2281: !LD [3] (Int)
lduw [%i0 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2282: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2283: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2284: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2285: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P2286: !ST [8] (maybe <- 0x820063) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P2287: !DWST [15] (maybe <- 0x820064) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2288: !CAS [14] (maybe <- 0x820065) (Int)
add %i3, 128, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2289: !CASX [4] (maybe <- 0x820066) (Int)
add %i0, 64, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P2290: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P2291: !ST [15] (maybe <- 0x820067) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P2292: !MEMBAR (Int)
membar #StoreLoad

P2293: !CAS [2] (maybe <- 0x820068) (Int)
add %i0, 12, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2294: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2295: !DWLD [4] (Int)
ldx [%i0 + 64], %o4
! move %o4(upper) -> %o4(upper)

P2296: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2297: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P2298: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2299: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P2300: !MEMBAR (Int)
membar #StoreLoad

P2301: !DWST [13] (maybe <- 0x820069) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2302: !DWLD [4] (Int)
ldx [%i0 + 64], %o1
! move %o1(upper) -> %o1(upper)

P2303: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P2304: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P2305: !SWAP [0] (maybe <- 0x82006a) (Int)
mov %l4, %o2
swap  [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2306: !CAS [0] (maybe <- 0x82006b) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2307: !MEMBAR (Int)
membar #StoreLoad

P2308: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P2309: !NOP (Int)
nop

P2310: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2311: !DWST [15] (maybe <- 0x82006c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2312: !DWLD [6] (Int)
ldx [%i1 + 80], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2313: !ST [12] (maybe <- 0x82006d) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2314: !MEMBAR (Int)
membar #StoreLoad

P2315: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2316: !LD [2] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2317: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P2318: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2319: !LD [10] (Int)
lduw [%i2 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2320: !ST [11] (maybe <- 0x82006e) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2321: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2322: !DWST [11] (maybe <- 0x82006f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P2323: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2324: !CAS [12] (maybe <- 0x820070) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2325: !SWAP [2] (maybe <- 0x820071) (Int)
mov %l4, %l6
swap  [%i0 + 12], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2326: !LD [6] (Int)
lduw [%i1 + 80], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2327: !MEMBAR (Int)
membar #StoreLoad

P2328: !CASX [8] (maybe <- 0x820072) (Int)
add %i1, 256, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P2329: !DWST [10] (maybe <- 0x48000100) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 32]

P2330: !CASX [3] (maybe <- 0x820073) (Int)
add %i0, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P2331: !SWAP [7] (maybe <- 0x820074) (Int)
mov %l4, %l6
swap  [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2332: !MEMBAR (Int)
membar #StoreLoad

P2333: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2334: !CAS [9] (maybe <- 0x820075) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2335: !DWST [6] (maybe <- 0x48000140) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P2336: !ST [11] (maybe <- 0x820076) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2337: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2338: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2339: !LD [11] (Int)
lduw [%i2 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2340: !ST [11] (maybe <- 0x820077) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2341: !CASX [1] (maybe <- 0x820078) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P2342: !LD [6] (FP)
ld [%i1 + 80], %f6
! 1 addresses covered

P2343: !CASX [8] (maybe <- 0x82007a) (Int)
add %i1, 256, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2344: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2345: !DWST [8] (maybe <- 0x82007b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2346: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P2347: !DWST [12] (maybe <- 0x82007c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P2348: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P2349: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P2350: !DWST [8] (maybe <- 0x82007d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2351: !SWAP [3] (maybe <- 0x82007e) (Int)
mov %l4, %o0
swap  [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2352: !SWAP [11] (maybe <- 0x82007f) (Int)
mov %l4, %l6
swap  [%i2 + 64], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2353: !DWST [2] (maybe <- 0x820080) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P2354: !LD [5] (Int)
lduw [%i1 + 76], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2355: !CASX [2] (maybe <- 0x820081) (Int)
add %i0, 8, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P2356: !SWAP [3] (maybe <- 0x820082) (Int)
mov %l4, %l6
swap  [%i0 + 32], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2357: !MEMBAR (Int)
membar #StoreLoad

P2358: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2359: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2360: !MEMBAR (Int)
membar #StoreLoad

P2361: !LD [10] (FP)
ld [%i2 + 32], %f7
! 1 addresses covered

P2362: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2363: !DWST [4] (maybe <- 0x820083) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2364: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2365: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2366: !SWAP [9] (maybe <- 0x820084) (Int)
mov %l4, %o4
swap  [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2367: !MEMBAR (Int)
membar #StoreLoad

P2368: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P2369: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2370: !CASX [7] (maybe <- 0x820085) (Int)
add %i1, 80, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2371: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P2372: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2373: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2374: !CASX [9] (maybe <- 0x820087) (Int)
add %i1, 512, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P2375: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2376: !CAS [6] (maybe <- 0x820088) (Int)
add %i1, 80, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P2377: !DWST [6] (maybe <- 0x820089) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2378: !CAS [5] (maybe <- 0x82008b) (Int)
add %i1, 76, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2379: !CAS [10] (maybe <- 0x82008c) (Int)
add %i2, 32, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2380: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2381: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2382: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2383: !DWLD [13] (Int)
ldx [%i3 + 64], %o2
! move %o2(upper) -> %o2(upper)

P2384: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P2385: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P2386: !ST [2] (maybe <- 0x82008d) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P2387: !DWLD [5] (Int)
ldx [%i1 + 72], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2388: !DWST [3] (maybe <- 0x82008e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P2389: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2390: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2391: !MEMBAR (Int)
membar #StoreLoad

P2392: !LD [0] (Int)
lduw [%i0 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2393: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P2394: !DWST [7] (maybe <- 0x82008f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2395: !NOP (Int)
nop

P2396: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2397: !CASX [12] (maybe <- 0x820091) (Int)
add %i3, 0, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2398: !DWLD [6] (Int)
ldx [%i1 + 80], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P2399: !CAS [4] (maybe <- 0x820092) (Int)
add %i0, 64, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2400: !LD [9] (Int)
lduw [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2401: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2402: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P2403: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2404: !LD [9] (Int)
lduw [%i1 + 512], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2405: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2406: !SWAP [10] (maybe <- 0x820093) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2407: !DWLD [13] (Int)
ldx [%i3 + 64], %o1
! move %o1(upper) -> %o1(upper)

P2408: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P2409: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2410: !LD [0] (Int)
lduw [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2411: !DWST [10] (maybe <- 0x820094) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P2412: !ST [5] (maybe <- 0x820095) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P2413: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2414: !ST [3] (maybe <- 0x820096) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2415: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P2416: !DWST [10] (maybe <- 0x480001c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 32]

P2417: !CAS [15] (maybe <- 0x820097) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2418: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2419: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2420: !CASX [9] (maybe <- 0x820098) (Int)
add %i1, 512, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2421: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2422: !LD [2] (Int)
lduw [%i0 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2423: !DWST [13] (maybe <- 0x820099) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2424: !ST [11] (maybe <- 0x82009a) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2425: !ST [0] (maybe <- 0x82009b) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P2426: !ST [10] (maybe <- 0x82009c) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P2427: !SWAP [13] (maybe <- 0x82009d) (Int)
mov %l4, %l6
swap  [%i3 + 64], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2428: !DWST [6] (maybe <- 0x82009e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2429: !DWST [12] (maybe <- 0x8200a0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P2430: !CAS [2] (maybe <- 0x8200a1) (Int)
add %i0, 12, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2431: !MEMBAR (Int)
membar #StoreLoad

P2432: !LD [5] (Int)
lduw [%i1 + 76], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2433: !ST [1] (maybe <- 0x8200a2) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2434: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2435: !MEMBAR (Int)
membar #StoreLoad

P2436: !SWAP [9] (maybe <- 0x8200a3) (Int)
mov %l4, %o4
swap  [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2437: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2438: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2439: !SWAP [15] (maybe <- 0x8200a4) (Int)
mov %l4, %l6
swap  [%i3 + 192], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P2440: !DWST [12] (maybe <- 0x8200a5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P2441: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2442: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2443: !DWST [14] (maybe <- 0x8200a6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P2444: !ST [6] (maybe <- 0x8200a7) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P2445: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2446: !LD [9] (Int)
lduw [%i1 + 512], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2447: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P2448: !MEMBAR (Int)
membar #StoreLoad

P2449: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P2450: !ST [6] (maybe <- 0x8200a8) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P2451: !DWST [3] (maybe <- 0x8200a9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P2452: !LD [9] (Int)
lduw [%i1 + 512], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2453: !NOP (Int)
nop

P2454: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2455: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2456: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2457: !LD [6] (Int)
lduw [%i1 + 80], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2458: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2459: !DWST [10] (maybe <- 0x8200aa) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P2460: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2461: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2462: !MEMBAR (Int)
membar #StoreLoad

P2463: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P2464: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2465: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2466: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2467: !LD [6] (Int)
lduw [%i1 + 80], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2468: !DWST [11] (maybe <- 0x8200ab) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P2469: !ST [9] (maybe <- 0x8200ac) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P2470: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2471: !CAS [0] (maybe <- 0x8200ad) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2472: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2473: !CAS [5] (maybe <- 0x8200ae) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2474: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2475: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2476: !DWST [5] (maybe <- 0x8200af) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P2477: !SWAP [1] (maybe <- 0x8200b0) (Int)
mov %l4, %l6
swap  [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2478: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P2479: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P2480: !SWAP [13] (maybe <- 0x8200b1) (Int)
mov %l4, %o1
swap  [%i3 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2481: !CASX [10] (maybe <- 0x8200b2) (Int)
add %i2, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P2482: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2483: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P2484: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P2485: !LD [8] (Int)
lduw [%i1 + 256], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2486: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2487: !CASX [1] (maybe <- 0x8200b3) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2488: !DWST [8] (maybe <- 0x8200b5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2489: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2490: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2491: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P2492: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2493: !DWST [10] (maybe <- 0x8200b6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P2494: !MEMBAR (Int)
membar #StoreLoad

P2495: !DWLD [14] (Int)
ldx [%i3 + 128], %o2
! move %o2(upper) -> %o2(upper)

P2496: !SWAP [1] (maybe <- 0x8200b7) (Int)
mov %l4, %l6
swap  [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2497: !LD [14] (FP)
ld [%i3 + 128], %f8
! 1 addresses covered

P2498: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2499: !ST [14] (maybe <- 0x8200b8) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P2500: !CASX [5] (maybe <- 0x8200b9) (Int)
add %i1, 72, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %l4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2501: !LD [5] (Int)
lduw [%i1 + 76], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2502: !DWST [15] (maybe <- 0x48000200) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 192]

P2503: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0

P2504: !LD [7] (Int)
lduw [%i1 + 84], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2505: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P2506: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2507: !MEMBAR (Int)
membar #StoreLoad

P2508: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P2509: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P2510: !ST [9] (maybe <- 0x8200ba) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P2511: !CAS [7] (maybe <- 0x8200bb) (Int)
add %i1, 84, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2512: !CAS [14] (maybe <- 0x8200bc) (Int)
add %i3, 128, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2513: !DWST [12] (maybe <- 0x8200bd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P2514: !CASX [4] (maybe <- 0x8200be) (Int)
add %i0, 64, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2515: !DWLD [5] (Int)
ldx [%i1 + 72], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2516: !DWST [10] (maybe <- 0x8200bf) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P2517: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2518: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P2519: !ST [0] (maybe <- 0x8200c0) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P2520: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P2521: !SWAP [5] (maybe <- 0x8200c1) (Int)
mov %l4, %o3
swap  [%i1 + 76], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2522: !CAS [1] (maybe <- 0x8200c2) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2523: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2524: !DWST [8] (maybe <- 0x8200c3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2525: !DWST [9] (maybe <- 0x8200c4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P2526: !SWAP [8] (maybe <- 0x8200c5) (Int)
mov %l4, %o0
swap  [%i1 + 256], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2527: !MEMBAR (Int)
membar #StoreLoad

P2528: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P2529: !ST [11] (maybe <- 0x8200c6) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2530: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2531: !DWST [13] (maybe <- 0x8200c7) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2532: !DWLD [0] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2533: !LD [14] (Int)
lduw [%i3 + 128], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2534: !DWST [8] (maybe <- 0x8200c8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2535: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2536: !DWST [13] (maybe <- 0x8200c9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2537: !DWST [2] (maybe <- 0x8200ca) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P2538: !CASX [7] (maybe <- 0x8200cb) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2539: !CAS [12] (maybe <- 0x8200cd) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2540: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2541: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P2542: !DWLD [11] (Int)
ldx [%i2 + 64], %o2
! move %o2(upper) -> %o2(upper)

P2543: !CASX [6] (maybe <- 0x8200ce) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2544: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2545: !DWLD [15] (Int)
ldx [%i3 + 192], %o0
! move %o0(upper) -> %o0(upper)

P2546: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P2547: !SWAP [7] (maybe <- 0x8200d0) (Int)
mov %l4, %o1
swap  [%i1 + 84], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2548: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P2549: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2550: !DWST [0] (maybe <- 0x8200d1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2551: !CAS [7] (maybe <- 0x8200d3) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2552: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P2553: !ST [4] (maybe <- 0x8200d4) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P2554: !DWLD [9] (Int)
ldx [%i1 + 512], %o3
! move %o3(upper) -> %o3(upper)

P2555: !CAS [8] (maybe <- 0x8200d5) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2556: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2557: !SWAP [2] (maybe <- 0x8200d6) (Int)
mov %l4, %l6
swap  [%i0 + 12], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P2558: !ST [10] (maybe <- 0x8200d7) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P2559: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2560: !SWAP [5] (maybe <- 0x8200d8) (Int)
mov %l4, %o0
swap  [%i1 + 76], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2561: !DWST [15] (maybe <- 0x8200d9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2562: !CASX [11] (maybe <- 0x8200da) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P2563: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2564: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2565: !DWST [4] (maybe <- 0x8200db) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2566: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P2567: !SWAP [9] (maybe <- 0x8200dc) (Int)
mov %l4, %o3
swap  [%i1 + 512], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2568: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2569: !CASX [14] (maybe <- 0x8200dd) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P2570: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P2571: !DWLD [13] (Int)
ldx [%i3 + 64], %o1
! move %o1(upper) -> %o1(upper)

P2572: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P2573: !CAS [11] (maybe <- 0x8200de) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2574: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P2575: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P2576: !ST [11] (maybe <- 0x8200df) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2577: !LD [14] (Int)
lduw [%i3 + 128], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2578: !LD [7] (FP)
ld [%i1 + 84], %f9
! 1 addresses covered

P2579: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2580: !LD [14] (Int)
lduw [%i3 + 128], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2581: !CAS [10] (maybe <- 0x8200e0) (Int)
add %i2, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2582: !DWST [13] (maybe <- 0x8200e1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2583: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P2584: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2585: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P2586: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0

P2587: !LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2588: !DWST [13] (maybe <- 0x8200e2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2589: !ST [11] (maybe <- 0x8200e3) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2590: !DWST [13] (maybe <- 0x8200e4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2591: !ST [10] (maybe <- 0x8200e5) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P2592: !CAS [1] (maybe <- 0x8200e6) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2593: !MEMBAR (Int)
membar #StoreLoad

P2594: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2595: !ST [9] (maybe <- 0x8200e7) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P2596: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2597: !DWST [1] (maybe <- 0x8200e8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2598: !ST [13] (maybe <- 0x8200ea) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P2599: !ST [12] (maybe <- 0x8200eb) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2600: !ST [7] (maybe <- 0x8200ec) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P2601: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P2602: !LD [2] (Int)
lduw [%i0 + 12], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2603: !SWAP [12] (maybe <- 0x8200ed) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2604: !NOP (Int)
nop

P2605: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2606: !NOP (Int)
nop

P2607: !MEMBAR (Int)
membar #StoreLoad

P2608: !ST [12] (maybe <- 0x8200ee) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2609: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2610: !LD [8] (Int)
lduw [%i1 + 256], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2611: !DWST [7] (maybe <- 0x48000240) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P2612: !ST [10] (maybe <- 0x8200ef) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P2613: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2614: !DWST [0] (maybe <- 0x8200f0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2615: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2616: !ST [4] (maybe <- 0x8200f2) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P2617: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P2618: !DWST [10] (maybe <- 0x8200f3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P2619: !MEMBAR (Int)
membar #StoreLoad

P2620: !NOP (Int)
nop

P2621: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2622: !DWST [15] (maybe <- 0x8200f4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2623: !DWST [8] (maybe <- 0x8200f5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2624: !DWST [5] (maybe <- 0x8200f6) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P2625: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2626: !LD [10] (FP)
ld [%i2 + 32], %f10
! 1 addresses covered

P2627: !CAS [10] (maybe <- 0x8200f7) (Int)
add %i2, 32, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2628: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P2629: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2630: !ST [0] (maybe <- 0x8200f8) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P2631: !MEMBAR (Int)
membar #StoreLoad

P2632: !SWAP [6] (maybe <- 0x8200f9) (Int)
mov %l4, %o1
swap  [%i1 + 80], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2633: !ST [1] (maybe <- 0x8200fa) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2634: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P2635: !DWST [12] (maybe <- 0x8200fb) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P2636: !ST [4] (maybe <- 0x8200fc) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P2637: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P2638: !DWST [15] (maybe <- 0x8200fd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2639: !CAS [2] (maybe <- 0x8200fe) (Int)
add %i0, 12, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2640: !DWST [8] (maybe <- 0x8200ff) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2641: !DWST [10] (maybe <- 0x820100) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P2642: !DWLD [10] (Int)
ldx [%i2 + 32], %o3
! move %o3(upper) -> %o3(upper)

P2643: !CASX [9] (maybe <- 0x820101) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P2644: !CAS [8] (maybe <- 0x820102) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2645: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2646: !DWST [12] (maybe <- 0x820103) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P2647: !ST [2] (maybe <- 0x820104) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P2648: !SWAP [10] (maybe <- 0x820105) (Int)
mov %l4, %o2
swap  [%i2 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2649: !ST [13] (maybe <- 0x820106) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P2650: !DWST [6] (maybe <- 0x820107) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2651: !CASX [4] (maybe <- 0x820109) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2652: !DWST [14] (maybe <- 0x82010a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P2653: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2654: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2655: !DWLD [14] (Int)
ldx [%i3 + 128], %o0
! move %o0(upper) -> %o0(upper)

P2656: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2657: !CASX [10] (maybe <- 0x82010b) (Int)
add %i2, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P2658: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2659: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2660: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2661: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2662: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2663: !CASX [11] (maybe <- 0x82010c) (Int)
add %i2, 64, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2664: !DWLD [10] (Int)
ldx [%i2 + 32], %o1
! move %o1(upper) -> %o1(upper)

P2665: !ST [13] (maybe <- 0x480002c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]

P2666: !MEMBAR (Int)
membar #StoreLoad

P2667: !CASX [11] (maybe <- 0x82010d) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P2668: !DWST [4] (maybe <- 0x82010e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2669: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P2670: !DWLD [5] (Int)
ldx [%i1 + 72], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2671: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2672: !LD [3] (Int)
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P2673: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P2674: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2675: !DWST [14] (maybe <- 0x82010f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P2676: !DWST [11] (maybe <- 0x820110) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P2677: !DWST [5] (maybe <- 0x820111) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P2678: !DWST [13] (maybe <- 0x48000300) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 64]

P2679: !NOP (Int)
nop

P2680: !DWLD [15] (Int)
ldx [%i3 + 192], %o1
! move %o1(upper) -> %o1(upper)

P2681: !CAS [13] (maybe <- 0x820112) (Int)
add %i3, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2682: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2

P2683: !ST [1] (maybe <- 0x820113) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2684: !SWAP [10] (maybe <- 0x820114) (Int)
mov %l4, %o3
swap  [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2685: !ST [9] (maybe <- 0x820115) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P2686: !CAS [1] (maybe <- 0x820116) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2687: !DWST [2] (maybe <- 0x820117) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P2688: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2689: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2690: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2691: !CAS [7] (maybe <- 0x820118) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2692: !CAS [12] (maybe <- 0x820119) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2693: !SWAP [12] (maybe <- 0x82011a) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2694: !DWST [15] (maybe <- 0x82011b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2695: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2696: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2697: !ST [4] (maybe <- 0x82011c) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P2698: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P2699: !ST [3] (maybe <- 0x82011d) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2700: !MEMBAR (Int)
membar #StoreLoad

P2701: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P2702: !LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2703: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P2704: !LD [4] (Int)
lduw [%i0 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2705: !DWST [3] (maybe <- 0x82011e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P2706: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2707: !DWST [11] (maybe <- 0x82011f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P2708: !CAS [15] (maybe <- 0x820120) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2709: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P2710: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2711: !MEMBAR (Int)
membar #StoreLoad

P2712: !DWLD [2] (Int)
ldx [%i0 + 8], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2713: !MEMBAR (Int)
membar #StoreLoad

P2714: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2715: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2716: !ST [7] (maybe <- 0x820121) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P2717: !SWAP [2] (maybe <- 0x820122) (Int)
mov %l4, %o2
swap  [%i0 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2718: !MEMBAR (Int)
membar #StoreLoad

P2719: !ST [4] (maybe <- 0x48000340) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

P2720: !CAS [4] (maybe <- 0x820123) (Int)
add %i0, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2721: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2722: !CASX [9] (maybe <- 0x820124) (Int)
add %i1, 512, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2723: !DWLD [14] (Int)
ldx [%i3 + 128], %o1
! move %o1(upper) -> %o1(upper)

P2724: !SWAP [8] (maybe <- 0x820125) (Int)
mov %l4, %l6
swap  [%i1 + 256], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2725: !DWLD [9] (Int)
ldx [%i1 + 512], %o2
! move %o2(upper) -> %o2(upper)

P2726: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P2727: !DWLD [2] (Int)
ldx [%i0 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2728: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2729: !CAS [1] (maybe <- 0x820126) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2730: !DWST [9] (maybe <- 0x820127) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P2731: !CAS [2] (maybe <- 0x820128) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2732: !DWST [5] (maybe <- 0x820129) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P2733: !ST [1] (maybe <- 0x82012a) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2734: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P2735: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P2736: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2737: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2738: !DWST [15] (maybe <- 0x82012b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2739: !DWLD [7] (FP)
! case fp 
ldd  [%i1 + 80], %f18
! 2 addresses covered
fmovs %f18, %f11
fmovs %f19, %f12

P2740: !ST [11] (maybe <- 0x82012c) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2741: !DWLD [13] (Int)
ldx [%i3 + 64], %o1
! move %o1(upper) -> %o1(upper)

P2742: !CAS [6] (maybe <- 0x82012d) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P2743: !LD [1] (FP)
ld [%i0 + 4], %f13
! 1 addresses covered

P2744: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P2745: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P2746: !CASX [14] (maybe <- 0x82012e) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P2747: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2748: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P2749: !DWLD [0] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2750: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2751: !ST [10] (maybe <- 0x82012f) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P2752: !DWLD [8] (Int)
ldx [%i1 + 256], %o2
! move %o2(upper) -> %o2(upper)

P2753: !ST [6] (maybe <- 0x820130) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P2754: !ST [15] (maybe <- 0x820131) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P2755: !NOP (Int)
nop

P2756: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P2757: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2

P2758: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2759: !DWLD [2] (Int)
ldx [%i0 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2760: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2761: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P2762: !DWLD [3] (Int)
ldx [%i0 + 32], %o4
! move %o4(upper) -> %o4(upper)

P2763: !CASX [15] (maybe <- 0x820132) (Int)
add %i3, 192, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2764: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2765: !NOP (Int)
nop

P2766: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2767: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2768: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2769: !MEMBAR (Int)
membar #StoreLoad

P2770: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2771: !MEMBAR (Int)
membar #StoreLoad

P2772: !DWST [0] (maybe <- 0x820133) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2773: !MEMBAR (Int)
membar #StoreLoad

P2774: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2775: !DWST [14] (maybe <- 0x820135) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P2776: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2777: !DWST [4] (maybe <- 0x820136) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2778: !CAS [0] (maybe <- 0x820137) (Int)
add %i0, 0, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2779: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2780: !DWLD [12] (FP)
! case fp 
ldd  [%i3 + 0], %f14
! 1 addresses covered

P2781: !LD [11] (Int)
lduw [%i2 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2782: !CAS [11] (maybe <- 0x820138) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2783: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P2784: !CAS [7] (maybe <- 0x820139) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2785: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2786: !ST [10] (maybe <- 0x82013a) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P2787: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2788: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0

P2789: !DWST [12] (maybe <- 0x82013b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P2790: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2791: !CASX [2] (maybe <- 0x82013c) (Int)
add %i0, 8, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %l4, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P2792: !CAS [4] (maybe <- 0x82013d) (Int)
add %i0, 64, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P2793: !LD [2] (Int)
lduw [%i0 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2794: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2795: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P2796: !DWST [0] (maybe <- 0x82013e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2797: !MEMBAR (Int)
membar #StoreLoad

P2798: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2799: !CASX [8] (maybe <- 0x820140) (Int)
add %i1, 256, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2800: !ST [11] (maybe <- 0x820141) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2801: !DWST [11] (maybe <- 0x820142) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P2802: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2803: !DWLD [12] (FP)
! case fp 
ldd  [%i3 + 0], %f18
! 1 addresses covered
fmovs %f18, %f15
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P2804: !CASX [14] (maybe <- 0x820143) (Int)
add %i3, 128, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P2805: !LD [8] (Int)
lduw [%i1 + 256], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2806: !CASX [10] (maybe <- 0x820144) (Int)
add %i2, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2807: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2808: !ST [1] (maybe <- 0x820145) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2809: !DWST [15] (maybe <- 0x820146) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2810: !DWST [6] (maybe <- 0x820147) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2811: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P2812: !CASX [9] (maybe <- 0x820149) (Int)
add %i1, 512, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P2813: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2814: !DWST [8] (maybe <- 0x82014a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2815: !LD [1] (Int)
lduw [%i0 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2816: !SWAP [9] (maybe <- 0x82014b) (Int)
mov %l4, %l6
swap  [%i1 + 512], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P2817: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2818: !DWST [11] (maybe <- 0x82014c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P2819: !DWST [6] (maybe <- 0x82014d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2820: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2821: !DWST [4] (maybe <- 0x82014f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2822: !CAS [1] (maybe <- 0x820150) (Int)
add %i0, 4, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2823: !ST [13] (maybe <- 0x48000380) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]

P2824: !DWST [4] (maybe <- 0x820151) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2825: !MEMBAR (Int)
membar #StoreLoad

P2826: !CASX [2] (maybe <- 0x820152) (Int)
add %i0, 8, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %l4, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P2827: !ST [7] (maybe <- 0x820153) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P2828: !DWLD [4] (Int)
ldx [%i0 + 64], %o3
! move %o3(upper) -> %o3(upper)

P2829: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P2830: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2831: !DWLD [7] (Int)
ldx [%i1 + 80], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2832: !SWAP [13] (maybe <- 0x820154) (Int)
mov %l4, %o0
swap  [%i3 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2833: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2834: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P2835: !CAS [6] (maybe <- 0x820155) (Int)
add %i1, 80, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2836: !ST [1] (maybe <- 0x820156) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2837: !DWLD [15] (Int)
ldx [%i3 + 192], %o2
! move %o2(upper) -> %o2(upper)

P2838: !DWST [14] (maybe <- 0x820157) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P2839: !ST [3] (maybe <- 0x820158) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2840: !DWST [1] (maybe <- 0x820159) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2841: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2842: !SWAP [2] (maybe <- 0x82015b) (Int)
mov %l4, %l6
swap  [%i0 + 12], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2843: !ST [12] (maybe <- 0x82015c) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2844: !LD [14] (Int)
lduw [%i3 + 128], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2845: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P2846: !DWST [0] (maybe <- 0x82015d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2847: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2848: !ST [14] (maybe <- 0x82015f) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P2849: !ST [3] (maybe <- 0x820160) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2850: !MEMBAR (Int)
membar #StoreLoad

P2851: !LD [11] (Int)
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2852: !NOP (Int)
nop

P2853: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P2854: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P2855: !DWST [0] (maybe <- 0x820161) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2856: !CASX [8] (maybe <- 0x820163) (Int)
add %i1, 256, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P2857: !DWST [6] (maybe <- 0x820164) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2858: !MEMBAR (Int)
membar #StoreLoad

P2859: !DWST [5] (maybe <- 0x820166) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P2860: !DWLD [14] (FP)
! case fp 
ldd  [%i3 + 128], %f0
! 1 addresses covered

P2861: !DWST [3] (maybe <- 0x820167) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P2862: !ST [3] (maybe <- 0x820168) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2863: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2864: !ST [12] (maybe <- 0x820169) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2865: !ST [0] (maybe <- 0x82016a) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P2866: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P2867: !DWST [5] (maybe <- 0x82016b) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P2868: !CASX [5] (maybe <- 0x82016c) (Int)
add %i1, 72, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %l4, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P2869: !ST [7] (maybe <- 0x82016d) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P2870: !LD [7] (Int)
lduw [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2871: !DWLD [11] (FP)
! case fp 
ldd  [%i2 + 64], %f18
! 1 addresses covered
fmovs %f18, %f1

P2872: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P2873: !MEMBAR (Int)
membar #StoreLoad

P2874: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2875: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2876: !LD [6] (FP)
ld [%i1 + 80], %f2
! 1 addresses covered

P2877: !DWLD [1] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2878: !DWLD [10] (Int)
ldx [%i2 + 32], %o1
! move %o1(upper) -> %o1(upper)

P2879: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P2880: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P2881: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2882: !CAS [14] (maybe <- 0x82016e) (Int)
add %i3, 128, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2883: !ST [10] (maybe <- 0x480003c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

P2884: !LD [15] (Int)
lduw [%i3 + 192], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2885: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P2886: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2887: !DWST [4] (maybe <- 0x82016f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2888: !DWST [0] (maybe <- 0x48000400) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 0]

P2889: !SWAP [13] (maybe <- 0x820170) (Int)
mov %l4, %o4
swap  [%i3 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2890: !ST [5] (maybe <- 0x820171) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P2891: !DWST [15] (maybe <- 0x820172) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2892: !DWST [1] (maybe <- 0x820173) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2893: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P2894: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2895: !ST [0] (maybe <- 0x820175) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P2896: !CAS [4] (maybe <- 0x820176) (Int)
add %i0, 64, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P2897: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2898: !CASX [3] (maybe <- 0x820177) (Int)
add %i0, 32, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P2899: !DWLD [12] (Int)
ldx [%i3 + 0], %o3
! move %o3(upper) -> %o3(upper)

P2900: !MEMBAR (Int)
membar #StoreLoad

P2901: !ST [3] (maybe <- 0x820178) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P2902: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P2903: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2904: !LD [7] (FP)
ld [%i1 + 84], %f3
! 1 addresses covered

P2905: !DWST [8] (maybe <- 0x820179) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2906: !NOP (Int)
nop

P2907: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P2908: !CASX [12] (maybe <- 0x82017a) (Int)
add %i3, 0, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2909: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P2910: !LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2911: !SWAP [5] (maybe <- 0x82017b) (Int)
mov %l4, %l6
swap  [%i1 + 76], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P2912: !MEMBAR (Int)
membar #StoreLoad

P2913: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P2914: !MEMBAR (Int)
membar #StoreLoad

P2915: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P2916: !DWST [4] (maybe <- 0x82017c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2917: !DWST [14] (maybe <- 0x48000480) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 128]

P2918: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2919: !NOP (Int)
nop

P2920: !LD [9] (Int)
lduw [%i1 + 512], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2921: !ST [7] (maybe <- 0x82017d) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P2922: !DWST [11] (maybe <- 0x82017e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P2923: !DWST [2] (maybe <- 0x82017f) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P2924: !CASX [11] (maybe <- 0x820180) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2925: !CAS [12] (maybe <- 0x820181) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2926: !DWST [1] (maybe <- 0x820182) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P2927: !DWST [13] (maybe <- 0x820184) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P2928: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0

P2929: !MEMBAR (Int)
membar #StoreLoad

P2930: !MEMBAR (Int)
membar #StoreLoad

P2931: !SWAP [7] (maybe <- 0x820185) (Int)
mov %l4, %o1
swap  [%i1 + 84], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2932: !DWST [11] (maybe <- 0x820186) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P2933: !MEMBAR (Int)
membar #StoreLoad

P2934: !DWST [4] (maybe <- 0x820187) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2935: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2936: !DWST [6] (maybe <- 0x820188) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2937: !MEMBAR (Int)
membar #StoreLoad

P2938: !ST [12] (maybe <- 0x82018a) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P2939: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P2940: !LD [6] (Int)
lduw [%i1 + 80], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2941: !DWST [10] (maybe <- 0x82018b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P2942: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2943: !CAS [15] (maybe <- 0x82018c) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P2944: !DWST [6] (maybe <- 0x82018d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P2945: !DWST [8] (maybe <- 0x82018f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P2946: !ST [1] (maybe <- 0x820190) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P2947: !ST [4] (maybe <- 0x820191) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P2948: !DWST [4] (maybe <- 0x820192) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2949: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2950: !DWST [5] (maybe <- 0x820193) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P2951: !MEMBAR (Int)
membar #StoreLoad

P2952: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P2953: !MEMBAR (Int)
membar #StoreLoad

P2954: !ST [8] (maybe <- 0x480004c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 256 ]

P2955: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P2956: !ST [5] (maybe <- 0x48000500) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 76 ]

P2957: !LD [11] (FP)
ld [%i2 + 64], %f4
! 1 addresses covered

P2958: !ST [13] (maybe <- 0x820194) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P2959: !LD [10] (Int)
lduw [%i2 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P2960: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2961: !DWST [15] (maybe <- 0x820195) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2962: !ST [14] (maybe <- 0x820196) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P2963: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P2964: !CAS [14] (maybe <- 0x820197) (Int)
add %i3, 128, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P2965: !ST [8] (maybe <- 0x820198) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P2966: !MEMBAR (Int)
membar #StoreLoad

P2967: !CAS [7] (maybe <- 0x820199) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P2968: !ST [11] (maybe <- 0x82019a) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P2969: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P2970: !CAS [0] (maybe <- 0x82019b) (Int)
add %i0, 0, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P2971: !DWLD [5] (Int)
ldx [%i1 + 72], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P2972: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P2973: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2974: !SWAP [7] (maybe <- 0x82019c) (Int)
mov %l4, %o4
swap  [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P2975: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P2976: !CASX [0] (maybe <- 0x82019d) (Int)
add %i0, 0, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P2977: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P2978: !LD [13] (Int)
lduw [%i3 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P2979: !DWST [14] (maybe <- 0x82019f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P2980: !DWST [4] (maybe <- 0x8201a0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P2981: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P2982: !CASX [7] (maybe <- 0x8201a1) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P2983: !SWAP [8] (maybe <- 0x8201a3) (Int)
mov %l4, %l6
swap  [%i1 + 256], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P2984: !DWST [11] (maybe <- 0x8201a4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P2985: !DWLD [0] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P2986: !LD [7] (Int)
lduw [%i1 + 84], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P2987: !CASX [6] (maybe <- 0x8201a5) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P2988: !DWST [7] (maybe <- 0x48000540) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P2989: !MEMBAR (Int)
membar #StoreLoad

P2990: !DWST [15] (maybe <- 0x8201a7) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P2991: !ST [5] (maybe <- 0x8201a8) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P2992: !DWST [14] (maybe <- 0x8201a9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P2993: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2994: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P2995: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2996: !DWST [9] (maybe <- 0x480005c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 512]

P2997: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P2998: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P2999: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P3000: !LD [3] (Int)
lduw [%i0 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3001: !CASX [2] (maybe <- 0x8201aa) (Int)
add %i0, 8, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P3002: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P3003: !DWST [13] (maybe <- 0x8201ab) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P3004: !SWAP [12] (maybe <- 0x8201ac) (Int)
mov %l4, %o2
swap  [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3005: !SWAP [13] (maybe <- 0x8201ad) (Int)
mov %l4, %l6
swap  [%i3 + 64], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3006: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P3007: !CAS [0] (maybe <- 0x8201ae) (Int)
add %i0, 0, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P3008: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3009: !ST [2] (maybe <- 0x8201af) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P3010: !ST [15] (maybe <- 0x8201b0) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P3011: !DWLD [13] (Int)
ldx [%i3 + 64], %o4
! move %o4(upper) -> %o4(upper)

P3012: !MEMBAR (Int)
membar #StoreLoad

P3013: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3014: !ST [3] (maybe <- 0x8201b1) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P3015: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3016: !DWLD [3] (Int)
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P3017: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P3018: !CASX [10] (maybe <- 0x8201b2) (Int)
add %i2, 32, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3019: !LD [4] (Int)
lduw [%i0 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3020: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3021: !ST [0] (maybe <- 0x8201b3) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P3022: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P3023: !ST [2] (maybe <- 0x8201b4) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P3024: !NOP (Int)
nop

P3025: !CASX [3] (maybe <- 0x8201b5) (Int)
add %i0, 32, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3026: !LD [2] (Int)
lduw [%i0 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3027: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3028: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3029: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3030: !LD [7] (FP)
ld [%i1 + 84], %f5
! 1 addresses covered

P3031: !MEMBAR (Int)
membar #StoreLoad

P3032: !CAS [6] (maybe <- 0x8201b6) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3033: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P3034: !CASX [0] (maybe <- 0x8201b7) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3035: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3036: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3037: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P3038: !ST [0] (maybe <- 0x8201b9) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P3039: !LD [4] (Int)
lduw [%i0 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3040: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3041: !ST [8] (maybe <- 0x8201ba) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P3042: !DWST [10] (maybe <- 0x48000600) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 32]

P3043: !ST [4] (maybe <- 0x8201bb) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P3044: !DWST [8] (maybe <- 0x8201bc) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P3045: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3046: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3047: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3048: !LD [13] (FP)
ld [%i3 + 64], %f6
! 1 addresses covered

P3049: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P3050: !DWLD [11] (Int)
ldx [%i2 + 64], %o1
! move %o1(upper) -> %o1(upper)

P3051: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3052: !DWST [3] (maybe <- 0x8201bd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P3053: !SWAP [9] (maybe <- 0x8201be) (Int)
mov %l4, %l6
swap  [%i1 + 512], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3054: !MEMBAR (Int)
membar #StoreLoad

P3055: !SWAP [8] (maybe <- 0x8201bf) (Int)
mov %l4, %o2
swap  [%i1 + 256], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3056: !MEMBAR (Int)
membar #StoreLoad

P3057: !LD [0] (FP)
ld [%i0 + 0], %f7
! 1 addresses covered

P3058: !LD [1] (FP)
ld [%i0 + 4], %f8
! 1 addresses covered

P3059: !LD [2] (FP)
ld [%i0 + 12], %f9
! 1 addresses covered

P3060: !LD [3] (FP)
ld [%i0 + 32], %f10
! 1 addresses covered

P3061: !LD [4] (FP)
ld [%i0 + 64], %f11
! 1 addresses covered

P3062: !LD [5] (FP)
ld [%i1 + 76], %f12
! 1 addresses covered

P3063: !LD [6] (FP)
ld [%i1 + 80], %f13
! 1 addresses covered

P3064: !LD [7] (FP)
ld [%i1 + 84], %f14
! 1 addresses covered

P3065: !LD [8] (FP)
ld [%i1 + 256], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P3066: !LD [9] (FP)
ld [%i1 + 512], %f0
! 1 addresses covered

P3067: !LD [10] (FP)
ld [%i2 + 32], %f1
! 1 addresses covered

P3068: !LD [11] (FP)
ld [%i2 + 64], %f2
! 1 addresses covered

P3069: !LD [12] (FP)
ld [%i3 + 0], %f3
! 1 addresses covered

P3070: !LD [13] (FP)
ld [%i3 + 64], %f4
! 1 addresses covered

P3071: !LD [14] (FP)
ld [%i3 + 128], %f5
! 1 addresses covered

P3072: !LD [15] (FP)
ld [%i3 + 192], %f6
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30

restore
retl
nop
!-----------------



func3:

! 1000 instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
srlx %i0, 6, %i0
sllx %i0, 6, %i0

add %i1, 63, %i1
srlx %i1, 6, %i1
sllx %i1, 6, %i1

add %i2, 63, %i2
srlx %i2, 6, %i2
sllx %i2, 6, %i2

add %i3, 63, %i3
srlx %i3, 6, %i3
sllx %i3, 6, %i3

add %i4, 63, %i4
srlx %i4, 6, %i4
sllx %i4, 6, %i4

add %i5, 63, %i5
srlx %i5, 6, %i5
sllx %i5, 6, %i5

mov   %i4, %l1
add   %i5, 1216, %l5

! Initialize %o7, the pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
addx  %o7, %l1, %o7 

! Initializing %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l7
or    %l7, %lo(0xdeadbee0), %l7
stw   %l7, [%l5]
sethi %hi(0xdeadbee1), %l7
or    %l7, %lo(0xdeadbee1), %l7
stw   %l7, [%l5+4]
ldd [%l5], %f0
ldd [%l5], %f2
ldd [%l5], %f4
ldd [%l5], %f6
ldd [%l5], %f8
ldd [%l5], %f10
ldd [%l5], %f12
ldd [%l5], %f14
ldd [%l5], %f16
ldd [%l5], %f18
ldd [%l5], %f20
ldd [%l5], %f22
ldd [%l5], %f24
ldd [%l5], %f26
ldd [%l5], %f28
ldd [%l5], %f30
ldd [%l5], %f32
ldd [%l5], %f34
ldd [%l5], %f36
ldd [%l5], %f38
ldd [%l5], %f40
ldd [%l5], %f42
ldd [%l5], %f44
ldd [%l5], %f46
ldd [%l5], %f48
ldd [%l5], %f50
ldd [%l5], %f52
ldd [%l5], %f54
ldd [%l5], %f56
ldd [%l5], %f58
ldd [%l5], %f60
ldd [%l5], %f62

! Initializing int results buffer registers: %o0 %o1 %o2 %o3 %o4 
mov %g0, %o0
mov %g0, %o1
mov %g0, %o2
mov %g0, %o3
mov %g0, %o4

! Signature for extract_loads
sethi %hi(0x03deade1), %l7
or    %l7, %lo(0x03deade1), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize integer counter 
sethi %hi(0x830001), %l4
or    %l4, %lo(0x830001), %l4

! Initialize FP counter 
sethi %hi(0x483fff80), %l7
or    %l7, %lo(0x483fff80), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize FP counter increment value 
sethi %hi(0x3f800000), %l7
or    %l7, %lo(0x3f800000), %l7
stw %l7, [%l5] 
ld [%l5], %f17 

P3073: !ST [9] (maybe <- 0x830001) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P3074: !SWAP [13] (maybe <- 0x830002) (Int)
mov %l4, %o0
swap  [%i3 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3075: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P3076: !DWST [12] (maybe <- 0x830003) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3077: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3078: !ST [10] (maybe <- 0x830004) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P3079: !DWLD [14] (Int)
ldx [%i3 + 128], %o1
! move %o1(upper) -> %o1(upper)

P3080: !CAS [12] (maybe <- 0x830005) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3081: !NOP (Int)
nop

P3082: !CAS [2] (maybe <- 0x830006) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3083: !MEMBAR (Int)
membar #StoreLoad

P3084: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3085: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3086: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3087: !CASX [1] (maybe <- 0x830007) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P3088: !ST [11] (maybe <- 0x830009) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P3089: !CASX [5] (maybe <- 0x83000a) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P3090: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P3091: !LD [13] (FP)
ld [%i3 + 64], %f0
! 1 addresses covered

P3092: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P3093: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P3094: !LD [2] (Int)
lduw [%i0 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3095: !CAS [10] (maybe <- 0x83000b) (Int)
add %i2, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3096: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3097: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P3098: !CASX [12] (maybe <- 0x83000c) (Int)
add %i3, 0, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P3099: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3100: !ST [4] (maybe <- 0x83000d) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P3101: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3102: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P3103: !DWST [6] (maybe <- 0x83000e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3104: !CASX [6] (maybe <- 0x830010) (Int)
add %i1, 80, %l7
ldx [%l7], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3105: !DWST [12] (maybe <- 0x830012) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3106: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3107: !SWAP [13] (maybe <- 0x830013) (Int)
mov %l4, %o1
swap  [%i3 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3108: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P3109: !SWAP [15] (maybe <- 0x830014) (Int)
mov %l4, %l6
swap  [%i3 + 192], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3110: !ST [8] (maybe <- 0x483fff80) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 256 ]

P3111: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P3112: !CASX [0] (maybe <- 0x830015) (Int)
add %i0, 0, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3113: !CASX [2] (maybe <- 0x830017) (Int)
add %i0, 8, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3114: !DWLD [11] (Int)
ldx [%i2 + 64], %o1
! move %o1(upper) -> %o1(upper)

P3115: !DWST [7] (maybe <- 0x830018) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3116: !CAS [14] (maybe <- 0x83001a) (Int)
add %i3, 128, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3117: !CAS [6] (maybe <- 0x83001b) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3118: !DWST [1] (maybe <- 0x83001c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3119: !ST [3] (maybe <- 0x83001e) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P3120: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3121: !ST [11] (maybe <- 0x483fffc0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

P3122: !DWLD [0] (FP)
! case fp 
ldd  [%i0 + 0], %f18
! 2 addresses covered
fmovs %f18, %f1
fmovs %f19, %f2

P3123: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3124: !ST [6] (maybe <- 0x83001f) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P3125: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P3126: !ST [1] (maybe <- 0x830020) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3127: !ST [0] (maybe <- 0x830021) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P3128: !CASX [4] (maybe <- 0x830022) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P3129: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P3130: !ST [9] (maybe <- 0x830023) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P3131: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P3132: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P3133: !DWST [2] (maybe <- 0x830024) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P3134: !SWAP [2] (maybe <- 0x830025) (Int)
mov %l4, %o1
swap  [%i0 + 12], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3135: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P3136: !ST [11] (maybe <- 0x48400000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

P3137: !CAS [2] (maybe <- 0x830026) (Int)
add %i0, 12, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3138: !LD [5] (Int)
lduw [%i1 + 76], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3139: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3140: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3141: !DWLD [9] (Int)
ldx [%i1 + 512], %o4
! move %o4(upper) -> %o4(upper)

P3142: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P3143: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3144: !LD [8] (Int)
lduw [%i1 + 256], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3145: !MEMBAR (Int)
membar #StoreLoad

P3146: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0

P3147: !ST [11] (maybe <- 0x830027) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P3148: !DWLD [4] (FP)
! case fp 
ldd  [%i0 + 64], %f18
! 1 addresses covered
fmovs %f18, %f3

P3149: !SWAP [11] (maybe <- 0x830028) (Int)
mov %l4, %o1
swap  [%i2 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3150: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3151: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3152: !MEMBAR (Int)
membar #StoreLoad

P3153: !ST [1] (maybe <- 0x830029) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3154: !ST [2] (maybe <- 0x83002a) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P3155: !ST [0] (maybe <- 0x83002b) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P3156: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P3157: !MEMBAR (Int)
membar #StoreLoad

P3158: !ST [14] (maybe <- 0x83002c) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3159: !CAS [11] (maybe <- 0x83002d) (Int)
add %i2, 64, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3160: !DWST [10] (maybe <- 0x83002e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P3161: !DWLD [2] (Int)
ldx [%i0 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3162: !CAS [5] (maybe <- 0x83002f) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3163: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3164: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P3165: !DWLD [10] (FP)
! case fp 
ldd  [%i2 + 32], %f4
! 1 addresses covered

P3166: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P3167: !CAS [8] (maybe <- 0x830030) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3168: !CAS [11] (maybe <- 0x830031) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3169: !ST [9] (maybe <- 0x830032) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P3170: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3171: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3172: !CAS [11] (maybe <- 0x830033) (Int)
add %i2, 64, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3173: !NOP (Int)
nop

P3174: !ST [10] (maybe <- 0x830034) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P3175: !LD [8] (Int)
lduw [%i1 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3176: !SWAP [13] (maybe <- 0x830035) (Int)
mov %l4, %l6
swap  [%i3 + 64], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P3177: !DWLD [14] (Int)
ldx [%i3 + 128], %o4
! move %o4(upper) -> %o4(upper)

P3178: !CASX [0] (maybe <- 0x830036) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P3179: !LD [11] (FP)
ld [%i2 + 64], %f5
! 1 addresses covered

P3180: !ST [4] (maybe <- 0x830038) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P3181: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3182: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3183: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P3184: !LD [12] (Int)
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3185: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P3186: !ST [14] (maybe <- 0x830039) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3187: !MEMBAR (Int)
membar #StoreLoad

P3188: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P3189: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3190: !ST [12] (maybe <- 0x83003a) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3191: !ST [0] (maybe <- 0x83003b) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P3192: !MEMBAR (Int)
membar #StoreLoad

P3193: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P3194: !ST [0] (maybe <- 0x83003c) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P3195: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P3196: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3197: !DWLD [5] (Int)
ldx [%i1 + 72], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3198: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3199: !DWST [0] (maybe <- 0x83003d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3200: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P3201: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3202: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3203: !DWST [5] (maybe <- 0x83003f) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P3204: !MEMBAR (Int)
membar #StoreLoad

P3205: !DWLD [8] (Int)
ldx [%i1 + 256], %o0
! move %o0(upper) -> %o0(upper)

P3206: !DWST [0] (maybe <- 0x830040) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3207: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P3208: !SWAP [6] (maybe <- 0x830042) (Int)
mov %l4, %o1
swap  [%i1 + 80], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3209: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3210: !ST [0] (maybe <- 0x830043) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P3211: !DWST [9] (maybe <- 0x830044) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P3212: !DWST [2] (maybe <- 0x830045) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P3213: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P3214: !DWLD [12] (Int)
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)

P3215: !CASX [14] (maybe <- 0x830046) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3216: !DWST [1] (maybe <- 0x830047) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3217: !DWST [9] (maybe <- 0x830049) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P3218: !DWST [11] (maybe <- 0x83004a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P3219: !ST [14] (maybe <- 0x83004b) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3220: !CASX [6] (maybe <- 0x83004c) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P3221: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3222: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3223: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P3224: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P3225: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P3226: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3227: !ST [6] (maybe <- 0x83004e) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P3228: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3229: !ST [7] (maybe <- 0x83004f) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P3230: !LD [5] (Int)
lduw [%i1 + 76], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3231: !DWST [10] (maybe <- 0x830050) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P3232: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P3233: !ST [13] (maybe <- 0x830051) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P3234: !DWST [9] (maybe <- 0x830052) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P3235: !MEMBAR (Int)
membar #StoreLoad

P3236: !DWST [0] (maybe <- 0x830053) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3237: !DWLD [7] (Int)
ldx [%i1 + 80], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3238: !CASX [5] (maybe <- 0x830055) (Int)
add %i1, 72, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3239: !ST [4] (maybe <- 0x830056) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P3240: !DWLD [0] (FP)
! case fp 
ldd  [%i0 + 0], %f6
! 2 addresses covered

P3241: !SWAP [0] (maybe <- 0x830057) (Int)
mov %l4, %o1
swap  [%i0 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3242: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1

P3243: !DWST [5] (maybe <- 0x830058) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P3244: !DWLD [6] (Int)
ldx [%i1 + 80], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3245: !CASX [10] (maybe <- 0x830059) (Int)
add %i2, 32, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3246: !ST [1] (maybe <- 0x83005a) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3247: !CAS [10] (maybe <- 0x83005b) (Int)
add %i2, 32, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3248: !LD [10] (FP)
ld [%i2 + 32], %f8
! 1 addresses covered

P3249: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3250: !DWLD [9] (Int)
ldx [%i1 + 512], %o1
! move %o1(upper) -> %o1(upper)

P3251: !NOP (Int)
nop

P3252: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P3253: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P3254: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3255: !DWST [3] (maybe <- 0x83005c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P3256: !SWAP [15] (maybe <- 0x83005d) (Int)
mov %l4, %l6
swap  [%i3 + 192], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3257: !DWLD [14] (Int)
ldx [%i3 + 128], %o0
! move %o0(upper) -> %o0(upper)

P3258: !NOP (Int)
nop

P3259: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P3260: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P3261: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P3262: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P3263: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3264: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3265: !DWST [0] (maybe <- 0x83005e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3266: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P3267: !DWLD [7] (Int)
ldx [%i1 + 80], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3268: !LD [13] (Int)
lduw [%i3 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3269: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2

P3270: !ST [5] (maybe <- 0x830060) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P3271: !ST [9] (maybe <- 0x830061) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P3272: !DWST [5] (maybe <- 0x830062) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P3273: !DWLD [11] (Int)
ldx [%i2 + 64], %o3
! move %o3(upper) -> %o3(upper)

P3274: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P3275: !MEMBAR (Int)
membar #StoreLoad

P3276: !CAS [0] (maybe <- 0x830063) (Int)
add %i0, 0, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3277: !CAS [13] (maybe <- 0x830064) (Int)
add %i3, 64, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3278: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3279: !ST [14] (maybe <- 0x830065) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3280: !DWST [3] (maybe <- 0x830066) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P3281: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3282: !DWST [8] (maybe <- 0x830067) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P3283: !DWST [10] (maybe <- 0x830068) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P3284: !DWLD [14] (Int)
ldx [%i3 + 128], %o1
! move %o1(upper) -> %o1(upper)

P3285: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P3286: !ST [14] (maybe <- 0x830069) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3287: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P3288: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3289: !CAS [7] (maybe <- 0x83006a) (Int)
add %i1, 84, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3290: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P3291: !ST [7] (maybe <- 0x83006b) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P3292: !CASX [13] (maybe <- 0x83006c) (Int)
add %i3, 64, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3293: !ST [5] (maybe <- 0x83006d) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P3294: !DWST [13] (maybe <- 0x83006e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P3295: !ST [7] (maybe <- 0x83006f) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P3296: !DWST [1] (maybe <- 0x830070) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3297: !CASX [7] (maybe <- 0x830072) (Int)
add %i1, 80, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3298: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P3299: !CAS [6] (maybe <- 0x830074) (Int)
add %i1, 80, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3300: !CAS [10] (maybe <- 0x830075) (Int)
add %i2, 32, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P3301: !CAS [1] (maybe <- 0x830076) (Int)
add %i0, 4, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3302: !DWST [4] (maybe <- 0x830077) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3303: !CAS [14] (maybe <- 0x830078) (Int)
add %i3, 128, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3304: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3305: !CASX [13] (maybe <- 0x830079) (Int)
add %i3, 64, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3306: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P3307: !CAS [14] (maybe <- 0x83007a) (Int)
add %i3, 128, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P3308: !CASX [0] (maybe <- 0x83007b) (Int)
add %i0, 0, %l7
ldx [%l7], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3309: !ST [6] (maybe <- 0x83007d) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P3310: !DWST [4] (maybe <- 0x83007e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3311: !DWLD [5] (Int)
ldx [%i1 + 72], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3312: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3313: !CASX [1] (maybe <- 0x83007f) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P3314: !DWST [4] (maybe <- 0x830081) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3315: !ST [15] (maybe <- 0x830082) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P3316: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3317: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3318: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3319: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P3320: !CASX [9] (maybe <- 0x830083) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P3321: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3322: !DWST [8] (maybe <- 0x48400040) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 256]

P3323: !ST [11] (maybe <- 0x830084) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P3324: !DWST [4] (maybe <- 0x830085) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3325: !SWAP [7] (maybe <- 0x830086) (Int)
mov %l4, %o2
swap  [%i1 + 84], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3326: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P3327: !LD [3] (Int)
lduw [%i0 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3328: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3329: !ST [15] (maybe <- 0x830087) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P3330: !CAS [9] (maybe <- 0x830088) (Int)
add %i1, 512, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3331: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P3332: !CASX [1] (maybe <- 0x830089) (Int)
add %i0, 0, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3333: !DWST [6] (maybe <- 0x83008b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3334: !DWST [14] (maybe <- 0x83008d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P3335: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3336: !LD [3] (Int)
lduw [%i0 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3337: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P3338: !CASX [10] (maybe <- 0x83008e) (Int)
add %i2, 32, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3339: !DWST [3] (maybe <- 0x83008f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P3340: !DWST [12] (maybe <- 0x830090) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3341: !ST [6] (maybe <- 0x830091) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P3342: !NOP (Int)
nop

P3343: !CAS [7] (maybe <- 0x830092) (Int)
add %i1, 84, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3344: !CASX [3] (maybe <- 0x830093) (Int)
add %i0, 32, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3345: !LD [8] (Int)
lduw [%i1 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3346: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3347: !CAS [8] (maybe <- 0x830094) (Int)
add %i1, 256, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3348: !DWLD [15] (Int)
ldx [%i3 + 192], %o0
! move %o0(upper) -> %o0(upper)

P3349: !ST [11] (maybe <- 0x830095) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P3350: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P3351: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P3352: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3353: !DWLD [5] (Int)
ldx [%i1 + 72], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3354: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3355: !DWST [5] (maybe <- 0x830096) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P3356: !CASX [13] (maybe <- 0x830097) (Int)
add %i3, 64, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3357: !DWST [7] (maybe <- 0x830098) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3358: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3359: !DWLD [3] (Int)
ldx [%i0 + 32], %o4
! move %o4(upper) -> %o4(upper)

P3360: !ST [10] (maybe <- 0x48400080) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

P3361: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P3362: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3363: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3364: !ST [10] (maybe <- 0x83009a) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P3365: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3366: !DWST [1] (maybe <- 0x484000c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 0]

P3367: !DWLD [9] (Int)
ldx [%i1 + 512], %o0
! move %o0(upper) -> %o0(upper)

P3368: !CAS [9] (maybe <- 0x83009b) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3369: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3370: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P3371: !MEMBAR (Int)
membar #StoreLoad

P3372: !ST [12] (maybe <- 0x83009c) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3373: !LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3374: !CAS [11] (maybe <- 0x83009d) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3375: !DWST [11] (maybe <- 0x83009e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P3376: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3377: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P3378: !DWST [13] (maybe <- 0x83009f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P3379: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P3380: !MEMBAR (Int)
membar #StoreLoad

P3381: !DWST [13] (maybe <- 0x8300a0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P3382: !CASX [0] (maybe <- 0x8300a1) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P3383: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3384: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P3385: !SWAP [7] (maybe <- 0x8300a3) (Int)
mov %l4, %l6
swap  [%i1 + 84], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3386: !MEMBAR (Int)
membar #StoreLoad

P3387: !ST [8] (maybe <- 0x8300a4) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P3388: !LD [10] (FP)
ld [%i2 + 32], %f9
! 1 addresses covered

P3389: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P3390: !ST [15] (maybe <- 0x8300a5) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P3391: !LD [12] (Int)
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3392: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P3393: !DWST [15] (maybe <- 0x8300a6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P3394: !LD [9] (Int)
lduw [%i1 + 512], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3395: !DWST [1] (maybe <- 0x8300a7) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3396: !CAS [6] (maybe <- 0x8300a9) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3397: !SWAP [10] (maybe <- 0x8300aa) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3398: !LD [6] (Int)
lduw [%i1 + 80], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3399: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P3400: !MEMBAR (Int)
membar #StoreLoad

P3401: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3402: !NOP (Int)
nop

P3403: !CASX [15] (maybe <- 0x8300ab) (Int)
add %i3, 192, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3404: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P3405: !MEMBAR (Int)
membar #StoreLoad

P3406: !LD [15] (Int)
lduw [%i3 + 192], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3407: !ST [8] (maybe <- 0x8300ac) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P3408: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3409: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3410: !CASX [9] (maybe <- 0x8300ad) (Int)
add %i1, 512, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3411: !DWST [15] (maybe <- 0x8300ae) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P3412: !ST [0] (maybe <- 0x8300af) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P3413: !DWST [6] (maybe <- 0x8300b0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3414: !ST [3] (maybe <- 0x8300b2) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P3415: !ST [13] (maybe <- 0x8300b3) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P3416: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3417: !CAS [7] (maybe <- 0x8300b4) (Int)
add %i1, 84, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3418: !ST [2] (maybe <- 0x8300b5) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P3419: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3420: !LD [2] (FP)
ld [%i0 + 12], %f10
! 1 addresses covered

P3421: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P3422: !DWST [10] (maybe <- 0x8300b6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P3423: !MEMBAR (Int)
membar #StoreLoad

P3424: !DWST [15] (maybe <- 0x8300b7) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P3425: !MEMBAR (Int)
membar #StoreLoad

P3426: !LD [15] (FP)
ld [%i3 + 192], %f11
! 1 addresses covered

P3427: !DWLD [4] (Int)
ldx [%i0 + 64], %o3
! move %o3(upper) -> %o3(upper)

P3428: !DWST [13] (maybe <- 0x8300b8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P3429: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l7
or %l7, %o3, %o3

P3430: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3431: !DWST [6] (maybe <- 0x48400140) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P3432: !LD [11] (Int)
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3433: !ST [10] (maybe <- 0x8300b9) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P3434: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3435: !MEMBAR (Int)
membar #StoreLoad

P3436: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3437: !MEMBAR (Int)
membar #StoreLoad

P3438: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3439: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3440: !NOP (Int)
nop

P3441: !ST [9] (maybe <- 0x8300ba) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P3442: !ST [4] (maybe <- 0x8300bb) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P3443: !CASX [11] (maybe <- 0x8300bc) (Int)
add %i2, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3444: !LD [8] (Int)
lduw [%i1 + 256], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3445: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P3446: !CAS [3] (maybe <- 0x8300bd) (Int)
add %i0, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3447: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P3448: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P3449: !CAS [2] (maybe <- 0x8300be) (Int)
add %i0, 12, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3450: !DWLD [1] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3451: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P3452: !NOP (Int)
nop

P3453: !DWST [6] (maybe <- 0x8300bf) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3454: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P3455: !SWAP [9] (maybe <- 0x8300c1) (Int)
mov %l4, %o1
swap  [%i1 + 512], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3456: !SWAP [4] (maybe <- 0x8300c2) (Int)
mov %l4, %l6
swap  [%i0 + 64], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3457: !MEMBAR (Int)
membar #StoreLoad

P3458: !CAS [8] (maybe <- 0x8300c3) (Int)
add %i1, 256, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3459: !DWST [1] (maybe <- 0x484001c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 0]

P3460: !MEMBAR (Int)
membar #StoreLoad

P3461: !DWST [9] (maybe <- 0x8300c4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P3462: !SWAP [10] (maybe <- 0x8300c5) (Int)
mov %l4, %o3
swap  [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3463: !MEMBAR (Int)
membar #StoreLoad

P3464: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3465: !ST [10] (maybe <- 0x8300c6) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P3466: !ST [5] (maybe <- 0x8300c7) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P3467: !SWAP [9] (maybe <- 0x8300c8) (Int)
mov %l4, %l6
swap  [%i1 + 512], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P3468: !DWST [11] (maybe <- 0x8300c9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P3469: !DWST [0] (maybe <- 0x8300ca) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3470: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3471: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P3472: !CAS [13] (maybe <- 0x8300cc) (Int)
add %i3, 64, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3473: !DWST [10] (maybe <- 0x48400240) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 32]

P3474: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3475: !ST [1] (maybe <- 0x8300cd) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3476: !DWST [6] (maybe <- 0x8300ce) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3477: !MEMBAR (Int)
membar #StoreLoad

P3478: !CASX [9] (maybe <- 0x8300d0) (Int)
add %i1, 512, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3479: !ST [3] (maybe <- 0x8300d1) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P3480: !DWST [9] (maybe <- 0x48400280) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 512]

P3481: !DWST [0] (maybe <- 0x8300d2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3482: !MEMBAR (Int)
membar #StoreLoad

P3483: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P3484: !MEMBAR (Int)
membar #StoreLoad

P3485: !SWAP [8] (maybe <- 0x8300d4) (Int)
mov %l4, %o2
swap  [%i1 + 256], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3486: !ST [6] (maybe <- 0x8300d5) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P3487: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P3488: !MEMBAR (Int)
membar #StoreLoad

P3489: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P3490: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3491: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2

P3492: !LD [4] (Int)
lduw [%i0 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3493: !DWST [10] (maybe <- 0x8300d6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P3494: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3495: !DWST [7] (maybe <- 0x8300d7) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3496: !DWST [15] (maybe <- 0x484002c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 192]

P3497: !CAS [8] (maybe <- 0x8300d9) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3498: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3499: !DWST [6] (maybe <- 0x8300da) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3500: !LD [10] (Int)
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P3501: !SWAP [10] (maybe <- 0x8300dc) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3502: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3503: !LD [0] (Int)
lduw [%i0 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3504: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3505: !ST [4] (maybe <- 0x48400300) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

P3506: !DWLD [8] (Int)
ldx [%i1 + 256], %o2
! move %o2(upper) -> %o2(upper)

P3507: !DWST [12] (maybe <- 0x8300dd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3508: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3509: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P3510: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2

P3511: !MEMBAR (Int)
membar #StoreLoad

P3512: !LD [12] (Int)
lduw [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3513: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3514: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P3515: !LD [11] (Int)
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3516: !SWAP [0] (maybe <- 0x8300de) (Int)
mov %l4, %l6
swap  [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3517: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3518: !MEMBAR (Int)
membar #StoreLoad

P3519: !DWST [8] (maybe <- 0x8300df) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P3520: !CASX [3] (maybe <- 0x8300e0) (Int)
add %i0, 32, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3521: !ST [6] (maybe <- 0x8300e1) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P3522: !DWST [3] (maybe <- 0x8300e2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P3523: !CASX [1] (maybe <- 0x8300e3) (Int)
add %i0, 0, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3524: !CASX [3] (maybe <- 0x8300e5) (Int)
add %i0, 32, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3525: !CASX [1] (maybe <- 0x8300e6) (Int)
add %i0, 0, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3526: !DWLD [7] (Int)
ldx [%i1 + 80], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3527: !DWST [7] (maybe <- 0x8300e8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3528: !LD [7] (FP)
ld [%i1 + 84], %f12
! 1 addresses covered

P3529: !MEMBAR (Int)
membar #StoreLoad

P3530: !DWST [1] (maybe <- 0x8300ea) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3531: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P3532: !LD [14] (Int)
lduw [%i3 + 128], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3533: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3534: !MEMBAR (Int)
membar #StoreLoad

P3535: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3536: !ST [8] (maybe <- 0x8300ec) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P3537: !DWST [5] (maybe <- 0x8300ed) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P3538: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3539: !DWST [0] (maybe <- 0x8300ee) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3540: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P3541: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3542: !ST [9] (maybe <- 0x8300f0) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P3543: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3544: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P3545: !DWST [6] (maybe <- 0x48400340) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P3546: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3547: !CASX [8] (maybe <- 0x8300f1) (Int)
add %i1, 256, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3548: !DWST [7] (maybe <- 0x8300f2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3549: !CASX [6] (maybe <- 0x8300f4) (Int)
add %i1, 80, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3550: !CAS [15] (maybe <- 0x8300f6) (Int)
add %i3, 192, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3551: !ST [3] (maybe <- 0x8300f7) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P3552: !CAS [15] (maybe <- 0x8300f8) (Int)
add %i3, 192, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3553: !DWLD [5] (Int)
ldx [%i1 + 72], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3554: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3555: !DWST [4] (maybe <- 0x8300f9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3556: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3557: !LD [15] (Int)
lduw [%i3 + 192], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3558: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3559: !DWST [14] (maybe <- 0x8300fa) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P3560: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P3561: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P3562: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3563: !LD [15] (Int)
lduw [%i3 + 192], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3564: !CAS [5] (maybe <- 0x8300fb) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3565: !CASX [11] (maybe <- 0x8300fc) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P3566: !MEMBAR (Int)
membar #StoreLoad

P3567: !ST [10] (maybe <- 0x8300fd) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P3568: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3569: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3570: !ST [14] (maybe <- 0x8300fe) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3571: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3572: !LD [14] (Int)
lduw [%i3 + 128], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3573: !CASX [6] (maybe <- 0x8300ff) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3574: !DWST [0] (maybe <- 0x830101) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3575: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P3576: !ST [3] (maybe <- 0x830103) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P3577: !DWST [9] (maybe <- 0x484003c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 512]

P3578: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3579: !DWLD [5] (FP)
! case fp 
ldd  [%i1 + 72], %f18
! 1 addresses covered
fmovs %f19, %f13

P3580: !DWST [12] (maybe <- 0x830104) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3581: !MEMBAR (Int)
membar #StoreLoad

P3582: !DWLD [12] (Int)
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)

P3583: !DWST [13] (maybe <- 0x830105) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P3584: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P3585: !DWST [2] (maybe <- 0x830106) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P3586: !DWST [2] (maybe <- 0x830107) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P3587: !DWLD [2] (Int)
ldx [%i0 + 8], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3588: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3589: !CASX [0] (maybe <- 0x830108) (Int)
add %i0, 0, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3590: !MEMBAR (Int)
membar #StoreLoad

P3591: !MEMBAR (Int)
membar #StoreLoad

P3592: !DWST [8] (maybe <- 0x83010a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P3593: !ST [13] (maybe <- 0x48400400) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 64 ]

P3594: !CASX [15] (maybe <- 0x83010b) (Int)
add %i3, 192, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3595: !ST [9] (maybe <- 0x83010c) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P3596: !LD [6] (Int)
lduw [%i1 + 80], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3597: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P3598: !NOP (Int)
nop

P3599: !DWST [2] (maybe <- 0x48400440) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 8]

P3600: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P3601: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P3602: !ST [14] (maybe <- 0x83010d) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3603: !LD [4] (FP)
ld [%i0 + 64], %f14
! 1 addresses covered

P3604: !ST [8] (maybe <- 0x83010e) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P3605: !SWAP [10] (maybe <- 0x83010f) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P3606: !ST [4] (maybe <- 0x830110) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P3607: !LD [6] (Int)
lduw [%i1 + 80], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3608: !DWST [15] (maybe <- 0x830111) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P3609: !LD [7] (FP)
ld [%i1 + 84], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P3610: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3611: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3612: !DWLD [12] (Int)
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)

P3613: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0

P3614: !MEMBAR (Int)
membar #StoreLoad

P3615: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3616: !DWLD [10] (FP)
! case fp 
ldd  [%i2 + 32], %f0
! 1 addresses covered

P3617: !MEMBAR (Int)
membar #StoreLoad

P3618: !LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3619: !CASX [6] (maybe <- 0x830112) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P3620: !CAS [7] (maybe <- 0x830114) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3621: !ST [1] (maybe <- 0x830115) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3622: !ST [4] (maybe <- 0x48400480) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

P3623: !ST [13] (maybe <- 0x830116) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P3624: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3625: !SWAP [11] (maybe <- 0x830117) (Int)
mov %l4, %l6
swap  [%i2 + 64], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3626: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3627: !DWST [7] (maybe <- 0x830118) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3628: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3629: !CAS [14] (maybe <- 0x83011a) (Int)
add %i3, 128, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3630: !ST [1] (maybe <- 0x83011b) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3631: !DWST [8] (maybe <- 0x83011c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P3632: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P3633: !MEMBAR (Int)
membar #StoreLoad

P3634: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3635: !DWST [4] (maybe <- 0x83011d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3636: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3637: !DWST [3] (maybe <- 0x83011e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P3638: !DWLD [9] (Int)
ldx [%i1 + 512], %o1
! move %o1(upper) -> %o1(upper)

P3639: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3640: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3641: !CASX [14] (maybe <- 0x83011f) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P3642: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P3643: !CAS [13] (maybe <- 0x830120) (Int)
add %i3, 64, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3644: !CAS [6] (maybe <- 0x830121) (Int)
add %i1, 80, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3645: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P3646: !CAS [8] (maybe <- 0x830122) (Int)
add %i1, 256, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3647: !DWST [1] (maybe <- 0x830123) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3648: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3649: !ST [7] (maybe <- 0x830125) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P3650: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3651: !DWST [12] (maybe <- 0x830126) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3652: !DWLD [13] (Int)
ldx [%i3 + 64], %o2
! move %o2(upper) -> %o2(upper)

P3653: !LD [12] (FP)
ld [%i3 + 0], %f1
! 1 addresses covered

P3654: !ST [0] (maybe <- 0x830127) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P3655: !SWAP [3] (maybe <- 0x830128) (Int)
mov %l4, %l6
swap  [%i0 + 32], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3656: !DWLD [9] (Int)
ldx [%i1 + 512], %o3
! move %o3(upper) -> %o3(upper)

P3657: !ST [12] (maybe <- 0x830129) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3658: !MEMBAR (Int)
membar #StoreLoad

P3659: !DWST [0] (maybe <- 0x83012a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3660: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P3661: !CASX [7] (maybe <- 0x83012c) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P3662: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P3663: !LD [0] (Int)
lduw [%i0 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3664: !CAS [5] (maybe <- 0x83012e) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3665: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P3666: !ST [7] (maybe <- 0x83012f) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P3667: !DWLD [11] (Int)
ldx [%i2 + 64], %o3
! move %o3(upper) -> %o3(upper)

P3668: !DWST [2] (maybe <- 0x830130) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P3669: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P3670: !DWST [13] (maybe <- 0x830131) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P3671: !LD [12] (FP)
ld [%i3 + 0], %f2
! 1 addresses covered

P3672: !ST [12] (maybe <- 0x830132) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3673: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P3674: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P3675: !DWST [14] (maybe <- 0x830133) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P3676: !LD [13] (Int)
lduw [%i3 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3677: !CASX [3] (maybe <- 0x830134) (Int)
add %i0, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P3678: !DWST [13] (maybe <- 0x830135) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P3679: !ST [6] (maybe <- 0x830136) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P3680: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P3681: !CAS [9] (maybe <- 0x830137) (Int)
add %i1, 512, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3682: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3683: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P3684: !MEMBAR (Int)
membar #StoreLoad

P3685: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P3686: !DWST [9] (maybe <- 0x830138) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P3687: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3688: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3689: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3690: !ST [14] (maybe <- 0x830139) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3691: !ST [10] (maybe <- 0x83013a) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P3692: !SWAP [5] (maybe <- 0x83013b) (Int)
mov %l4, %o4
swap  [%i1 + 76], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3693: !CAS [8] (maybe <- 0x83013c) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3694: !DWST [9] (maybe <- 0x83013d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P3695: !CAS [6] (maybe <- 0x83013e) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3696: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P3697: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1

P3698: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3699: !MEMBAR (Int)
membar #StoreLoad

P3700: !LD [4] (Int)
lduw [%i0 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3701: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P3702: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P3703: !MEMBAR (Int)
membar #StoreLoad

P3704: !DWLD [9] (Int)
ldx [%i1 + 512], %o3
! move %o3(upper) -> %o3(upper)

P3705: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3706: !ST [11] (maybe <- 0x83013f) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P3707: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P3708: !DWLD [14] (FP)
! case fp 
ldd  [%i3 + 128], %f18
! 1 addresses covered
fmovs %f18, %f3

P3709: !DWST [10] (maybe <- 0x830140) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P3710: !SWAP [10] (maybe <- 0x830141) (Int)
mov %l4, %o4
swap  [%i2 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3711: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3712: !DWST [15] (maybe <- 0x484004c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 192]

P3713: !CAS [3] (maybe <- 0x830142) (Int)
add %i0, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3714: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P3715: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0

P3716: !ST [15] (maybe <- 0x830143) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P3717: !MEMBAR (Int)
membar #StoreLoad

P3718: !LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3719: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3720: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P3721: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3722: !CAS [14] (maybe <- 0x830144) (Int)
add %i3, 128, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3723: !ST [1] (maybe <- 0x830145) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3724: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3725: !ST [12] (maybe <- 0x48400500) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P3726: !LD [1] (Int)
lduw [%i0 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3727: !MEMBAR (Int)
membar #StoreLoad

P3728: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3729: !DWST [11] (maybe <- 0x830146) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P3730: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3731: !DWST [4] (maybe <- 0x830147) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3732: !ST [7] (maybe <- 0x830148) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P3733: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3734: !ST [14] (maybe <- 0x830149) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3735: !ST [12] (maybe <- 0x83014a) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3736: !DWST [8] (maybe <- 0x83014b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P3737: !CAS [12] (maybe <- 0x83014c) (Int)
add %i3, 0, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3738: !MEMBAR (Int)
membar #StoreLoad

P3739: !DWST [3] (maybe <- 0x83014d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P3740: !ST [2] (maybe <- 0x83014e) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P3741: !ST [12] (maybe <- 0x83014f) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3742: !MEMBAR (Int)
membar #StoreLoad

P3743: !ST [2] (maybe <- 0x830150) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P3744: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3745: !SWAP [12] (maybe <- 0x830151) (Int)
mov %l4, %o0
swap  [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3746: !DWST [7] (maybe <- 0x830152) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3747: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P3748: !LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3749: !CASX [9] (maybe <- 0x830154) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P3750: !DWST [11] (maybe <- 0x830155) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P3751: !MEMBAR (Int)
membar #StoreLoad

P3752: !ST [2] (maybe <- 0x830156) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P3753: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P3754: !DWST [12] (maybe <- 0x830157) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3755: !CAS [3] (maybe <- 0x830158) (Int)
add %i0, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3756: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P3757: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3758: !SWAP [7] (maybe <- 0x830159) (Int)
mov %l4, %o0
swap  [%i1 + 84], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3759: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P3760: !LD [8] (FP)
ld [%i1 + 256], %f4
! 1 addresses covered

P3761: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P3762: !ST [2] (maybe <- 0x83015a) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P3763: !ST [13] (maybe <- 0x83015b) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P3764: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3765: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3766: !CAS [14] (maybe <- 0x83015c) (Int)
add %i3, 128, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3767: !DWST [12] (maybe <- 0x83015d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3768: !CASX [5] (maybe <- 0x83015e) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P3769: !CAS [10] (maybe <- 0x83015f) (Int)
add %i2, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3770: !ST [10] (maybe <- 0x830160) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P3771: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3772: !CASX [6] (maybe <- 0x830161) (Int)
add %i1, 80, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3773: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3774: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P3775: !DWST [14] (maybe <- 0x830163) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P3776: !CAS [8] (maybe <- 0x830164) (Int)
add %i1, 256, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3777: !DWST [3] (maybe <- 0x830165) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P3778: !DWLD [9] (Int)
ldx [%i1 + 512], %o3
! move %o3(upper) -> %o3(upper)

P3779: !DWST [9] (maybe <- 0x830166) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P3780: !DWST [12] (maybe <- 0x830167) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3781: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3782: !CAS [4] (maybe <- 0x830168) (Int)
add %i0, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3783: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P3784: !ST [1] (maybe <- 0x830169) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3785: !MEMBAR (Int)
membar #StoreLoad

P3786: !DWST [7] (maybe <- 0x83016a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3787: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3788: !MEMBAR (Int)
membar #StoreLoad

P3789: !DWLD [7] (Int)
ldx [%i1 + 80], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3790: !ST [14] (maybe <- 0x83016c) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3791: !NOP (Int)
nop

P3792: !ST [15] (maybe <- 0x83016d) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P3793: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P3794: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3795: !DWST [6] (maybe <- 0x83016e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3796: !CAS [7] (maybe <- 0x830170) (Int)
add %i1, 84, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3797: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3798: !CASX [12] (maybe <- 0x830171) (Int)
add %i3, 0, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3799: !LD [4] (FP)
ld [%i0 + 64], %f5
! 1 addresses covered

P3800: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P3801: !ST [1] (maybe <- 0x830172) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3802: !ST [1] (maybe <- 0x830173) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3803: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P3804: !CASX [11] (maybe <- 0x830174) (Int)
add %i2, 64, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3805: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P3806: !ST [11] (maybe <- 0x830175) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P3807: !DWST [2] (maybe <- 0x830176) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P3808: !DWST [12] (maybe <- 0x830177) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3809: !DWST [2] (maybe <- 0x830178) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P3810: !LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3811: !DWST [11] (maybe <- 0x830179) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P3812: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P3813: !CAS [5] (maybe <- 0x83017a) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P3814: !MEMBAR (Int)
membar #StoreLoad

P3815: !CASX [13] (maybe <- 0x83017b) (Int)
add %i3, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3816: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P3817: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P3818: !MEMBAR (Int)
membar #StoreLoad

P3819: !CAS [9] (maybe <- 0x83017c) (Int)
add %i1, 512, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3820: !CAS [5] (maybe <- 0x83017d) (Int)
add %i1, 76, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3821: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P3822: !CAS [7] (maybe <- 0x83017e) (Int)
add %i1, 84, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P3823: !ST [9] (maybe <- 0x83017f) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P3824: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3825: !ST [3] (maybe <- 0x830180) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P3826: !MEMBAR (Int)
membar #StoreLoad

P3827: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P3828: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3829: !MEMBAR (Int)
membar #StoreLoad

P3830: !LD [2] (Int)
lduw [%i0 + 12], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3831: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P3832: !MEMBAR (Int)
membar #StoreLoad

P3833: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P3834: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3835: !CASX [12] (maybe <- 0x830181) (Int)
add %i3, 0, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3836: !ST [5] (maybe <- 0x830182) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P3837: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P3838: !ST [12] (maybe <- 0x830183) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3839: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P3840: !ST [12] (maybe <- 0x830184) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3841: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3842: !ST [4] (maybe <- 0x830185) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P3843: !MEMBAR (Int)
membar #StoreLoad

P3844: !DWST [4] (maybe <- 0x830186) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3845: !LD [2] (Int)
lduw [%i0 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3846: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P3847: !MEMBAR (Int)
membar #StoreLoad

P3848: !CAS [9] (maybe <- 0x830187) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3849: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3850: !SWAP [14] (maybe <- 0x830188) (Int)
mov %l4, %o4
swap  [%i3 + 128], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P3851: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3852: !DWST [7] (maybe <- 0x830189) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3853: !SWAP [1] (maybe <- 0x83018b) (Int)
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3854: !CAS [11] (maybe <- 0x83018c) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3855: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P3856: !ST [11] (maybe <- 0x83018d) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P3857: !MEMBAR (Int)
membar #StoreLoad

P3858: !LD [5] (Int)
lduw [%i1 + 76], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3859: !DWST [8] (maybe <- 0x83018e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P3860: !DWST [6] (maybe <- 0x48400540) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P3861: !ST [4] (maybe <- 0x83018f) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P3862: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P3863: !LD [4] (FP)
ld [%i0 + 64], %f6
! 1 addresses covered

P3864: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P3865: !DWST [12] (maybe <- 0x830190) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P3866: !DWST [4] (maybe <- 0x830191) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3867: !ST [13] (maybe <- 0x830192) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P3868: !DWLD [5] (Int)
ldx [%i1 + 72], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3869: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3870: !DWST [2] (maybe <- 0x830193) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P3871: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3872: !LD [0] (Int)
lduw [%i0 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3873: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3874: !DWST [0] (maybe <- 0x830194) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P3875: !CAS [7] (maybe <- 0x830196) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3876: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P3877: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3878: !ST [14] (maybe <- 0x830197) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3879: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3880: !ST [13] (maybe <- 0x830198) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P3881: !CASX [8] (maybe <- 0x830199) (Int)
add %i1, 256, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3882: !LD [8] (Int)
lduw [%i1 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3883: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3884: !DWLD [2] (Int)
ldx [%i0 + 8], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P3885: !CAS [9] (maybe <- 0x83019a) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P3886: !ST [9] (maybe <- 0x83019b) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P3887: !ST [6] (maybe <- 0x83019c) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P3888: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P3889: !ST [15] (maybe <- 0x83019d) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P3890: !DWST [3] (maybe <- 0x83019e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P3891: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P3892: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3893: !LD [10] (Int)
lduw [%i2 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3894: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3895: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3896: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P3897: !CASX [5] (maybe <- 0x83019f) (Int)
add %i1, 72, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %l4, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3898: !CAS [8] (maybe <- 0x8301a0) (Int)
add %i1, 256, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P3899: !CASX [9] (maybe <- 0x8301a1) (Int)
add %i1, 512, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3900: !DWST [14] (maybe <- 0x8301a2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P3901: !CAS [1] (maybe <- 0x8301a3) (Int)
add %i0, 4, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P3902: !CASX [10] (maybe <- 0x8301a4) (Int)
add %i2, 32, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3903: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3904: !DWLD [8] (Int)
ldx [%i1 + 256], %o0
! move %o0(upper) -> %o0(upper)

P3905: !ST [15] (maybe <- 0x8301a5) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P3906: !SWAP [15] (maybe <- 0x8301a6) (Int)
mov %l4, %l6
swap  [%i3 + 192], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3907: !LD [4] (Int)
lduw [%i0 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P3908: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3909: !DWST [11] (maybe <- 0x8301a7) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P3910: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3911: !DWLD [14] (Int)
ldx [%i3 + 128], %o2
! move %o2(upper) -> %o2(upper)

P3912: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P3913: !CASX [9] (maybe <- 0x8301a8) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3914: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3915: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P3916: !DWLD [7] (Int)
ldx [%i1 + 80], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3917: !MEMBAR (Int)
membar #StoreLoad

P3918: !MEMBAR (Int)
membar #StoreLoad

P3919: !ST [6] (maybe <- 0x8301a9) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P3920: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P3921: !DWST [7] (maybe <- 0x8301aa) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3922: !DWST [14] (maybe <- 0x8301ac) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P3923: !MEMBAR (Int)
membar #StoreLoad

P3924: !CAS [4] (maybe <- 0x8301ad) (Int)
add %i0, 64, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P3925: !ST [4] (maybe <- 0x8301ae) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P3926: !LD [3] (Int)
lduw [%i0 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3927: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P3928: !DWST [4] (maybe <- 0x8301af) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3929: !LD [5] (Int)
lduw [%i1 + 76], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P3930: !DWST [2] (maybe <- 0x8301b0) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P3931: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P3932: !CASX [14] (maybe <- 0x8301b1) (Int)
add %i3, 128, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3933: !DWST [14] (maybe <- 0x8301b2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P3934: !MEMBAR (Int)
membar #StoreLoad

P3935: !DWLD [13] (Int)
ldx [%i3 + 64], %o1
! move %o1(upper) -> %o1(upper)

P3936: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P3937: !ST [5] (maybe <- 0x8301b3) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P3938: !ST [8] (maybe <- 0x8301b4) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P3939: !LD [7] (Int)
lduw [%i1 + 84], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P3940: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P3941: !ST [5] (maybe <- 0x8301b5) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P3942: !DWST [14] (maybe <- 0x8301b6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P3943: !CASX [6] (maybe <- 0x8301b7) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3944: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3945: !DWLD [15] (Int)
ldx [%i3 + 192], %o0
! move %o0(upper) -> %o0(upper)

P3946: !MEMBAR (Int)
membar #StoreLoad

P3947: !LD [8] (FP)
ld [%i1 + 256], %f7
! 1 addresses covered

P3948: !MEMBAR (Int)
membar #StoreLoad

P3949: !CAS [6] (maybe <- 0x8301b9) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3950: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3951: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3952: !DWLD [10] (Int)
ldx [%i2 + 32], %o2
! move %o2(upper) -> %o2(upper)

P3953: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P3954: !CAS [8] (maybe <- 0x8301ba) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3955: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P3956: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3957: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3958: !ST [1] (maybe <- 0x8301bb) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P3959: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3960: !ST [14] (maybe <- 0x8301bc) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3961: !CAS [6] (maybe <- 0x8301bd) (Int)
add %i1, 80, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P3962: !ST [14] (maybe <- 0x8301be) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3963: !DWLD [12] (Int)
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)

P3964: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P3965: !DWLD [12] (Int)
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)

P3966: !CAS [7] (maybe <- 0x8301bf) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P3967: !ST [5] (maybe <- 0x8301c0) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P3968: !MEMBAR (Int)
membar #StoreLoad

P3969: !DWST [11] (maybe <- 0x8301c1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P3970: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P3971: !DWST [9] (maybe <- 0x8301c2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P3972: !DWST [15] (maybe <- 0x484005c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 192]

P3973: !DWLD [11] (Int)
ldx [%i2 + 64], %o4
! move %o4(upper) -> %o4(upper)

P3974: !DWST [4] (maybe <- 0x8301c3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P3975: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3976: !CASX [11] (maybe <- 0x8301c4) (Int)
add %i2, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P3977: !DWLD [0] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3978: !ST [12] (maybe <- 0x8301c5) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P3979: !NOP (Int)
nop

P3980: !MEMBAR (Int)
membar #StoreLoad

P3981: !CASX [3] (maybe <- 0x8301c6) (Int)
add %i0, 32, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P3982: !DWLD [1] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P3983: !CASX [11] (maybe <- 0x8301c7) (Int)
add %i2, 64, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P3984: !ST [10] (maybe <- 0x8301c8) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P3985: !DWLD [13] (Int)
ldx [%i3 + 64], %o3
! move %o3(upper) -> %o3(upper)

P3986: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3987: !ST [0] (maybe <- 0x8301c9) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P3988: !ST [9] (maybe <- 0x8301ca) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P3989: !ST [14] (maybe <- 0x8301cb) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P3990: !DWST [7] (maybe <- 0x8301cc) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P3991: !DWST [10] (maybe <- 0x8301ce) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P3992: !DWST [8] (maybe <- 0x8301cf) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P3993: !LD [7] (FP)
ld [%i1 + 84], %f8
! 1 addresses covered

P3994: !CASX [4] (maybe <- 0x8301d0) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P3995: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P3996: !CAS [1] (maybe <- 0x8301d1) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P3997: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P3998: !CASX [8] (maybe <- 0x8301d2) (Int)
add %i1, 256, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P3999: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4000: !SWAP [7] (maybe <- 0x8301d3) (Int)
mov %l4, %o4
swap  [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4001: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4002: !ST [9] (maybe <- 0x8301d4) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P4003: !DWLD [9] (Int)
ldx [%i1 + 512], %o0
! move %o0(upper) -> %o0(upper)

P4004: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4005: !SWAP [7] (maybe <- 0x8301d5) (Int)
mov %l4, %l6
swap  [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4006: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4007: !DWST [11] (maybe <- 0x8301d6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P4008: !ST [12] (maybe <- 0x8301d7) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4009: !MEMBAR (Int)
membar #StoreLoad

P4010: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4011: !LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4012: !DWST [6] (maybe <- 0x8301d8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P4013: !ST [2] (maybe <- 0x8301da) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4014: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P4015: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P4016: !CAS [8] (maybe <- 0x8301db) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4017: !ST [8] (maybe <- 0x8301dc) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P4018: !DWST [14] (maybe <- 0x8301dd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P4019: !DWST [15] (maybe <- 0x8301de) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4020: !ST [12] (maybe <- 0x8301df) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4021: !CAS [6] (maybe <- 0x8301e0) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4022: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P4023: !ST [8] (maybe <- 0x8301e1) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P4024: !ST [2] (maybe <- 0x8301e2) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4025: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4026: !DWLD [14] (Int)
ldx [%i3 + 128], %o4
! move %o4(upper) -> %o4(upper)

P4027: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4028: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P4029: !ST [10] (maybe <- 0x8301e3) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P4030: !CASX [15] (maybe <- 0x8301e4) (Int)
add %i3, 192, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4031: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P4032: !CAS [10] (maybe <- 0x8301e5) (Int)
add %i2, 32, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P4033: !DWLD [8] (Int)
ldx [%i1 + 256], %o3
! move %o3(upper) -> %o3(upper)

P4034: !DWST [11] (maybe <- 0x8301e6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P4035: !ST [14] (maybe <- 0x8301e7) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4036: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4037: !SWAP [7] (maybe <- 0x8301e8) (Int)
mov %l4, %l6
swap  [%i1 + 84], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P4038: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4039: !CASX [8] (maybe <- 0x8301e9) (Int)
add %i1, 256, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4040: !CAS [0] (maybe <- 0x8301ea) (Int)
add %i0, 0, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P4041: !ST [2] (maybe <- 0x8301eb) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4042: !CAS [14] (maybe <- 0x8301ec) (Int)
add %i3, 128, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P4043: !CASX [14] (maybe <- 0x8301ed) (Int)
add %i3, 128, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4044: !CASX [1] (maybe <- 0x8301ee) (Int)
add %i0, 0, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4045: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P4046: !LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4047: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4048: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4049: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4050: !DWST [2] (maybe <- 0x8301f0) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4051: !ST [11] (maybe <- 0x8301f1) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4052: !CASX [12] (maybe <- 0x8301f2) (Int)
add %i3, 0, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4053: !MEMBAR (Int)
membar #StoreLoad

P4054: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4055: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P4056: !DWLD [5] (FP)
! case fp 
ldd  [%i1 + 72], %f18
! 1 addresses covered
fmovs %f19, %f9

P4057: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4058: !CASX [11] (maybe <- 0x8301f3) (Int)
add %i2, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4059: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P4060: !ST [5] (maybe <- 0x8301f4) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P4061: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P4062: !SWAP [12] (maybe <- 0x8301f5) (Int)
mov %l4, %o2
swap  [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4063: !CASX [15] (maybe <- 0x8301f6) (Int)
add %i3, 192, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4064: !CASX [9] (maybe <- 0x8301f7) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4065: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4066: !ST [6] (maybe <- 0x8301f8) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P4067: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4068: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P4069: !DWLD [13] (FP)
! case fp 
ldd  [%i3 + 64], %f10
! 1 addresses covered

P4070: !CASX [0] (maybe <- 0x8301f9) (Int)
add %i0, 0, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4071: !LD [7] (FP)
ld [%i1 + 84], %f11
! 1 addresses covered

P4072: !DWST [8] (maybe <- 0x8301fb) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P4073: !MEMBAR (Int)
membar #StoreLoad

P4074: !LD [0] (FP)
ld [%i0 + 0], %f12
! 1 addresses covered

P4075: !LD [1] (FP)
ld [%i0 + 4], %f13
! 1 addresses covered

P4076: !LD [2] (FP)
ld [%i0 + 12], %f14
! 1 addresses covered

P4077: !LD [3] (FP)
ld [%i0 + 32], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P4078: !LD [4] (FP)
ld [%i0 + 64], %f0
! 1 addresses covered

P4079: !LD [5] (FP)
ld [%i1 + 76], %f1
! 1 addresses covered

P4080: !LD [6] (FP)
ld [%i1 + 80], %f2
! 1 addresses covered

P4081: !LD [7] (FP)
ld [%i1 + 84], %f3
! 1 addresses covered

P4082: !LD [8] (FP)
ld [%i1 + 256], %f4
! 1 addresses covered

P4083: !LD [9] (FP)
ld [%i1 + 512], %f5
! 1 addresses covered

P4084: !LD [10] (FP)
ld [%i2 + 32], %f6
! 1 addresses covered

P4085: !LD [11] (FP)
ld [%i2 + 64], %f7
! 1 addresses covered

P4086: !LD [12] (FP)
ld [%i3 + 0], %f8
! 1 addresses covered

P4087: !LD [13] (FP)
ld [%i3 + 64], %f9
! 1 addresses covered

P4088: !LD [14] (FP)
ld [%i3 + 128], %f10
! 1 addresses covered

P4089: !LD [15] (FP)
ld [%i3 + 192], %f11
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30

restore
retl
nop
!-----------------



func4:

! 1000 instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
srlx %i0, 6, %i0
sllx %i0, 6, %i0

add %i1, 63, %i1
srlx %i1, 6, %i1
sllx %i1, 6, %i1

add %i2, 63, %i2
srlx %i2, 6, %i2
sllx %i2, 6, %i2

add %i3, 63, %i3
srlx %i3, 6, %i3
sllx %i3, 6, %i3

add %i4, 63, %i4
srlx %i4, 6, %i4
sllx %i4, 6, %i4

add %i5, 63, %i5
srlx %i5, 6, %i5
sllx %i5, 6, %i5

mov   %i4, %l1
add   %i5, 1280, %l5

! Initialize %o7, the pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
addx  %o7, %l1, %o7 

! Initializing %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l7
or    %l7, %lo(0xdeadbee0), %l7
stw   %l7, [%l5]
sethi %hi(0xdeadbee1), %l7
or    %l7, %lo(0xdeadbee1), %l7
stw   %l7, [%l5+4]
ldd [%l5], %f0
ldd [%l5], %f2
ldd [%l5], %f4
ldd [%l5], %f6
ldd [%l5], %f8
ldd [%l5], %f10
ldd [%l5], %f12
ldd [%l5], %f14
ldd [%l5], %f16
ldd [%l5], %f18
ldd [%l5], %f20
ldd [%l5], %f22
ldd [%l5], %f24
ldd [%l5], %f26
ldd [%l5], %f28
ldd [%l5], %f30
ldd [%l5], %f32
ldd [%l5], %f34
ldd [%l5], %f36
ldd [%l5], %f38
ldd [%l5], %f40
ldd [%l5], %f42
ldd [%l5], %f44
ldd [%l5], %f46
ldd [%l5], %f48
ldd [%l5], %f50
ldd [%l5], %f52
ldd [%l5], %f54
ldd [%l5], %f56
ldd [%l5], %f58
ldd [%l5], %f60
ldd [%l5], %f62

! Initializing int results buffer registers: %o0 %o1 %o2 %o3 %o4 
mov %g0, %o0
mov %g0, %o1
mov %g0, %o2
mov %g0, %o3
mov %g0, %o4

! Signature for extract_loads
sethi %hi(0x04deade1), %l7
or    %l7, %lo(0x04deade1), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize integer counter 
sethi %hi(0x840001), %l4
or    %l4, %lo(0x840001), %l4

! Initialize FP counter 
sethi %hi(0x487fff40), %l7
or    %l7, %lo(0x487fff40), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize FP counter increment value 
sethi %hi(0x3f800000), %l7
or    %l7, %lo(0x3f800000), %l7
stw %l7, [%l5] 
ld [%l5], %f17 

P4090: !DWLD [3] (Int)
ldx [%i0 + 32], %o0
! move %o0(upper) -> %o0(upper)

P4091: !DWST [1] (maybe <- 0x487fff40) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 0]

P4092: !CAS [11] (maybe <- 0x840001) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4093: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P4094: !NOP (Int)
nop

P4095: !DWST [15] (maybe <- 0x840002) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4096: !DWST [7] (maybe <- 0x840003) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P4097: !NOP (Int)
nop

P4098: !DWLD [6] (Int)
ldx [%i1 + 80], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4099: !DWLD [1] (Int)
ldx [%i0 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4100: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P4101: !LD [7] (Int)
lduw [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4102: !CAS [2] (maybe <- 0x840005) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4103: !ST [0] (maybe <- 0x840006) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4104: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4105: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4106: !ST [4] (maybe <- 0x840007) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P4107: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4108: !ST [11] (maybe <- 0x840008) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4109: !CAS [6] (maybe <- 0x840009) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4110: !MEMBAR (Int)
membar #StoreLoad

P4111: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4112: !CAS [10] (maybe <- 0x84000a) (Int)
add %i2, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4113: !ST [5] (maybe <- 0x84000b) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P4114: !DWST [1] (maybe <- 0x84000c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4115: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4116: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4117: !DWLD [11] (Int)
ldx [%i2 + 64], %o3
! move %o3(upper) -> %o3(upper)

P4118: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P4119: !SWAP [15] (maybe <- 0x84000e) (Int)
mov %l4, %o4
swap  [%i3 + 192], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4120: !NOP (Int)
nop

P4121: !DWST [10] (maybe <- 0x84000f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P4122: !ST [0] (maybe <- 0x487fffc0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P4123: !ST [11] (maybe <- 0x840010) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4124: !LD [8] (FP)
ld [%i1 + 256], %f0
! 1 addresses covered

P4125: !CAS [3] (maybe <- 0x840011) (Int)
add %i0, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4126: !DWST [15] (maybe <- 0x840012) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4127: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4128: !LD [10] (Int)
lduw [%i2 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4129: !ST [15] (maybe <- 0x840013) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P4130: !ST [9] (maybe <- 0x840014) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P4131: !DWST [11] (maybe <- 0x840015) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P4132: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4133: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1

P4134: !DWLD [3] (Int)
ldx [%i0 + 32], %o2
! move %o2(upper) -> %o2(upper)

P4135: !MEMBAR (Int)
membar #StoreLoad

P4136: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2

P4137: !ST [11] (maybe <- 0x840016) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4138: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4139: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4140: !LD [14] (Int)
lduw [%i3 + 128], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4141: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4142: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P4143: !ST [15] (maybe <- 0x840017) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P4144: !DWST [12] (maybe <- 0x840018) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P4145: !DWLD [12] (Int)
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)

P4146: !ST [2] (maybe <- 0x840019) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4147: !CAS [1] (maybe <- 0x84001a) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4148: !LD [6] (FP)
ld [%i1 + 80], %f1
! 1 addresses covered

P4149: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4150: !CAS [0] (maybe <- 0x84001b) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4151: !ST [1] (maybe <- 0x84001c) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P4152: !CASX [4] (maybe <- 0x84001d) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P4153: !SWAP [14] (maybe <- 0x84001e) (Int)
mov %l4, %l6
swap  [%i3 + 128], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P4154: !MEMBAR (Int)
membar #StoreLoad

P4155: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4156: !LD [3] (Int)
lduw [%i0 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4157: !ST [10] (maybe <- 0x48800000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

P4158: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4159: !CASX [15] (maybe <- 0x84001f) (Int)
add %i3, 192, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4160: !ST [11] (maybe <- 0x840020) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4161: !ST [11] (maybe <- 0x840021) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4162: !CASX [11] (maybe <- 0x840022) (Int)
add %i2, 64, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4163: !CASX [0] (maybe <- 0x840023) (Int)
add %i0, 0, %l7
ldx [%l7], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4164: !DWLD [14] (Int)
ldx [%i3 + 128], %o1
! move %o1(upper) -> %o1(upper)

P4165: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4166: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P4167: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4168: !MEMBAR (Int)
membar #StoreLoad

P4169: !LD [10] (Int)
lduw [%i2 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4170: !CASX [11] (maybe <- 0x840025) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4171: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4172: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4173: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4174: !LD [0] (FP)
ld [%i0 + 0], %f2
! 1 addresses covered

P4175: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4176: !CASX [9] (maybe <- 0x840026) (Int)
add %i1, 512, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4177: !DWST [9] (maybe <- 0x840027) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P4178: !DWLD [1] (FP)
! case fp 
ldd  [%i0 + 0], %f18
! 2 addresses covered
fmovs %f18, %f3
fmovs %f19, %f4

P4179: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4180: !DWST [2] (maybe <- 0x840028) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4181: !DWLD [14] (Int)
ldx [%i3 + 128], %o2
! move %o2(upper) -> %o2(upper)

P4182: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4183: !ST [3] (maybe <- 0x840029) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P4184: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P4185: !MEMBAR (Int)
membar #StoreLoad

P4186: !ST [8] (maybe <- 0x84002a) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P4187: !DWLD [10] (Int)
ldx [%i2 + 32], %o3
! move %o3(upper) -> %o3(upper)

P4188: !CAS [8] (maybe <- 0x84002b) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4189: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4190: !CASX [4] (maybe <- 0x84002c) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4191: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4192: !CASX [0] (maybe <- 0x84002d) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4193: !ST [7] (maybe <- 0x84002f) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P4194: !CASX [7] (maybe <- 0x840030) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4195: !SWAP [4] (maybe <- 0x840032) (Int)
mov %l4, %l6
swap  [%i0 + 64], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P4196: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4197: !ST [9] (maybe <- 0x840033) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P4198: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4199: !LD [2] (Int)
lduw [%i0 + 12], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4200: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P4201: !ST [5] (maybe <- 0x48800020) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 76 ]

P4202: !LD [12] (Int)
lduw [%i3 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4203: !CAS [6] (maybe <- 0x840034) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4204: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4205: !CASX [12] (maybe <- 0x840035) (Int)
add %i3, 0, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4206: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P4207: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P4208: !DWLD [1] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4209: !LD [6] (Int)
lduw [%i1 + 80], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4210: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P4211: !DWST [4] (maybe <- 0x840036) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4212: !LD [3] (FP)
ld [%i0 + 32], %f5
! 1 addresses covered

P4213: !ST [11] (maybe <- 0x840037) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4214: !LD [4] (FP)
ld [%i0 + 64], %f6
! 1 addresses covered

P4215: !NOP (Int)
nop

P4216: !DWLD [9] (Int)
ldx [%i1 + 512], %o4
! move %o4(upper) -> %o4(upper)

P4217: !DWST [0] (maybe <- 0x840038) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4218: !SWAP [11] (maybe <- 0x84003a) (Int)
mov %l4, %l6
swap  [%i2 + 64], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P4219: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P4220: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P4221: !SWAP [12] (maybe <- 0x84003b) (Int)
mov %l4, %o0
swap  [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4222: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4223: !LD [8] (Int)
lduw [%i1 + 256], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4224: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P4225: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P4226: !DWLD [4] (Int)
ldx [%i0 + 64], %o2
! move %o2(upper) -> %o2(upper)

P4227: !DWST [15] (maybe <- 0x84003c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4228: !LD [1] (FP)
ld [%i0 + 4], %f7
! 1 addresses covered

P4229: !NOP (Int)
nop

P4230: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2

P4231: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4232: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4233: !DWLD [8] (Int)
ldx [%i1 + 256], %o3
! move %o3(upper) -> %o3(upper)

P4234: !SWAP [3] (maybe <- 0x84003d) (Int)
mov %l4, %l6
swap  [%i0 + 32], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P4235: !ST [0] (maybe <- 0x84003e) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4236: !SWAP [13] (maybe <- 0x84003f) (Int)
mov %l4, %o4
swap  [%i3 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4237: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4238: !CAS [0] (maybe <- 0x840040) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4239: !ST [11] (maybe <- 0x840041) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4240: !MEMBAR (Int)
membar #StoreLoad

P4241: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4242: !ST [4] (maybe <- 0x840042) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P4243: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P4244: !DWLD [9] (FP)
! case fp 
ldd  [%i1 + 512], %f8
! 1 addresses covered

P4245: !ST [11] (maybe <- 0x840043) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4246: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4247: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4248: !DWST [2] (maybe <- 0x840044) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4249: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P4250: !DWST [4] (maybe <- 0x840045) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4251: !CASX [14] (maybe <- 0x840046) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P4252: !MEMBAR (Int)
membar #StoreLoad

P4253: !DWST [3] (maybe <- 0x840047) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P4254: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P4255: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P4256: !CAS [13] (maybe <- 0x840048) (Int)
add %i3, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4257: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P4258: !CAS [3] (maybe <- 0x840049) (Int)
add %i0, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4259: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4260: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P4261: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4262: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4263: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P4264: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4265: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4266: !DWLD [1] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4267: !CAS [14] (maybe <- 0x84004a) (Int)
add %i3, 128, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P4268: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4269: !DWLD [14] (Int)
ldx [%i3 + 128], %o4
! move %o4(upper) -> %o4(upper)

P4270: !ST [12] (maybe <- 0x48800040) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P4271: !ST [4] (maybe <- 0x48800060) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

P4272: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4273: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4274: !SWAP [10] (maybe <- 0x84004b) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P4275: !ST [9] (maybe <- 0x84004c) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P4276: !MEMBAR (Int)
membar #StoreLoad

P4277: !MEMBAR (Int)
membar #StoreLoad

P4278: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P4279: !SWAP [1] (maybe <- 0x84004d) (Int)
mov %l4, %o0
swap  [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4280: !DWST [2] (maybe <- 0x48800080) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 8]

P4281: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P4282: !MEMBAR (Int)
membar #StoreLoad

P4283: !CAS [13] (maybe <- 0x84004e) (Int)
add %i3, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4284: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P4285: !DWLD [1] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4286: !DWLD [13] (Int)
ldx [%i3 + 64], %o3
! move %o3(upper) -> %o3(upper)

P4287: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P4288: !CASX [7] (maybe <- 0x84004f) (Int)
add %i1, 80, %l7
ldx [%l7], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4289: !LD [1] (FP)
ld [%i0 + 4], %f9
! 1 addresses covered

P4290: !DWLD [10] (Int)
ldx [%i2 + 32], %o1
! move %o1(upper) -> %o1(upper)

P4291: !ST [2] (maybe <- 0x488000a0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 12 ]

P4292: !DWLD [10] (FP)
! case fp 
ldd  [%i2 + 32], %f10
! 1 addresses covered

P4293: !ST [3] (maybe <- 0x840051) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P4294: !ST [3] (maybe <- 0x840052) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P4295: !CAS [9] (maybe <- 0x840053) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4296: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P4297: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P4298: !LD [5] (Int)
lduw [%i1 + 76], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4299: !ST [6] (maybe <- 0x840054) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P4300: !ST [15] (maybe <- 0x840055) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P4301: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4302: !CASX [14] (maybe <- 0x840056) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P4303: !CASX [8] (maybe <- 0x840057) (Int)
add %i1, 256, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4304: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4305: !DWST [12] (maybe <- 0x840058) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P4306: !NOP (Int)
nop

P4307: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4308: !DWST [11] (maybe <- 0x840059) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P4309: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P4310: !NOP (Int)
nop

P4311: !CASX [9] (maybe <- 0x84005a) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4312: !CASX [10] (maybe <- 0x84005b) (Int)
add %i2, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4313: !DWST [0] (maybe <- 0x84005c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4314: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4315: !SWAP [15] (maybe <- 0x84005e) (Int)
mov %l4, %l6
swap  [%i3 + 192], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P4316: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P4317: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P4318: !CASX [12] (maybe <- 0x84005f) (Int)
add %i3, 0, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4319: !ST [5] (maybe <- 0x488000c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 76 ]

P4320: !DWLD [9] (Int)
ldx [%i1 + 512], %o0
! move %o0(upper) -> %o0(upper)

P4321: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P4322: !ST [9] (maybe <- 0x840060) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P4323: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0

P4324: !DWLD [7] (Int)
ldx [%i1 + 80], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4325: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4326: !DWLD [10] (Int)
ldx [%i2 + 32], %o2
! move %o2(upper) -> %o2(upper)

P4327: !CAS [1] (maybe <- 0x840061) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4328: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P4329: !DWST [14] (maybe <- 0x840062) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P4330: !ST [15] (maybe <- 0x840063) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P4331: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4332: !ST [11] (maybe <- 0x840064) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4333: !DWST [11] (maybe <- 0x840065) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P4334: !ST [10] (maybe <- 0x840066) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P4335: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P4336: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4337: !DWST [2] (maybe <- 0x840067) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4338: !LD [11] (Int)
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4339: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4340: !DWST [10] (maybe <- 0x840068) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P4341: !LD [9] (Int)
lduw [%i1 + 512], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4342: !ST [0] (maybe <- 0x840069) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4343: !SWAP [11] (maybe <- 0x84006a) (Int)
mov %l4, %l6
swap  [%i2 + 64], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4344: !NOP (Int)
nop

P4345: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4346: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P4347: !DWST [12] (maybe <- 0x488000e0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P4348: !DWST [10] (maybe <- 0x84006b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P4349: !DWLD [12] (FP)
! case fp 
ldd  [%i3 + 0], %f18
! 1 addresses covered
fmovs %f18, %f11

P4350: !DWST [4] (maybe <- 0x84006c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4351: !DWST [13] (maybe <- 0x84006d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P4352: !MEMBAR (Int)
membar #StoreLoad

P4353: !LD [0] (Int)
lduw [%i0 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4354: !CAS [11] (maybe <- 0x84006e) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4355: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4356: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P4357: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4358: !ST [12] (maybe <- 0x84006f) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4359: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4360: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P4361: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4362: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4363: !CASX [2] (maybe <- 0x840070) (Int)
add %i0, 8, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4364: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4365: !ST [5] (maybe <- 0x840071) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P4366: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P4367: !DWLD [15] (Int)
ldx [%i3 + 192], %o1
! move %o1(upper) -> %o1(upper)

P4368: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1

P4369: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4370: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4371: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P4372: !ST [5] (maybe <- 0x840072) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P4373: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4374: !DWST [4] (maybe <- 0x840073) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4375: !LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4376: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4377: !ST [7] (maybe <- 0x840074) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P4378: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P4379: !ST [10] (maybe <- 0x48800100) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 32 ]

P4380: !DWLD [10] (Int)
ldx [%i2 + 32], %o3
! move %o3(upper) -> %o3(upper)

P4381: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4382: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P4383: !DWLD [14] (Int)
ldx [%i3 + 128], %o4
! move %o4(upper) -> %o4(upper)

P4384: !ST [14] (maybe <- 0x840075) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4385: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4386: !NOP (Int)
nop

P4387: !ST [9] (maybe <- 0x840076) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P4388: !DWLD [13] (Int)
ldx [%i3 + 64], %o0
! move %o0(upper) -> %o0(upper)

P4389: !MEMBAR (Int)
membar #StoreLoad

P4390: !CASX [8] (maybe <- 0x840077) (Int)
add %i1, 256, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4391: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P4392: !MEMBAR (Int)
membar #StoreLoad

P4393: !MEMBAR (Int)
membar #StoreLoad

P4394: !LD [4] (FP)
ld [%i0 + 64], %f12
! 1 addresses covered

P4395: !CASX [5] (maybe <- 0x840078) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P4396: !DWST [3] (maybe <- 0x840079) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P4397: !MEMBAR (Int)
membar #StoreLoad

P4398: !MEMBAR (Int)
membar #StoreLoad

P4399: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4400: !DWLD [9] (Int)
ldx [%i1 + 512], %o1
! move %o1(upper) -> %o1(upper)

P4401: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P4402: !CASX [11] (maybe <- 0x84007a) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P4403: !ST [6] (maybe <- 0x84007b) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P4404: !MEMBAR (Int)
membar #StoreLoad

P4405: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P4406: !DWLD [3] (Int)
ldx [%i0 + 32], %o4
! move %o4(upper) -> %o4(upper)

P4407: !CASX [5] (maybe <- 0x84007c) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4408: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P4409: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4410: !ST [13] (maybe <- 0x84007d) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P4411: !CASX [3] (maybe <- 0x84007e) (Int)
add %i0, 32, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4412: !DWLD [10] (Int)
ldx [%i2 + 32], %o4
! move %o4(upper) -> %o4(upper)

P4413: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4414: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P4415: !ST [5] (maybe <- 0x84007f) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P4416: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4417: !MEMBAR (Int)
membar #StoreLoad

P4418: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P4419: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P4420: !DWLD [9] (FP)
! case fp 
ldd  [%i1 + 512], %f18
! 1 addresses covered
fmovs %f18, %f13

P4421: !CASX [4] (maybe <- 0x840080) (Int)
add %i0, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4422: !DWST [6] (maybe <- 0x840081) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P4423: !DWST [5] (maybe <- 0x840083) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P4424: !DWST [1] (maybe <- 0x840084) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4425: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4426: !ST [6] (maybe <- 0x840086) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P4427: !DWST [1] (maybe <- 0x840087) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4428: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4429: !SWAP [9] (maybe <- 0x840089) (Int)
mov %l4, %o2
swap  [%i1 + 512], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4430: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P4431: !NOP (Int)
nop

P4432: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4433: !DWLD [13] (Int)
ldx [%i3 + 64], %o3
! move %o3(upper) -> %o3(upper)

P4434: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4435: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4436: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P4437: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4438: !LD [5] (FP)
ld [%i1 + 76], %f14
! 1 addresses covered

P4439: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4440: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4441: !SWAP [7] (maybe <- 0x84008a) (Int)
mov %l4, %o4
swap  [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4442: !DWST [15] (maybe <- 0x84008b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4443: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4444: !ST [11] (maybe <- 0x48800120) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

P4445: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4446: !DWST [7] (maybe <- 0x84008c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P4447: !ST [1] (maybe <- 0x84008e) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P4448: !ST [1] (maybe <- 0x48800140) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P4449: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4450: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P4451: !CASX [2] (maybe <- 0x84008f) (Int)
add %i0, 8, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %l4, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4452: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P4453: !LD [12] (Int)
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4454: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4455: !LD [13] (Int)
lduw [%i3 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4456: !MEMBAR (Int)
membar #StoreLoad

P4457: !ST [5] (maybe <- 0x840090) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P4458: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P4459: !ST [8] (maybe <- 0x840091) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P4460: !ST [11] (maybe <- 0x840092) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4461: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P4462: !DWLD [2] (Int)
ldx [%i0 + 8], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4463: !DWST [1] (maybe <- 0x840093) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4464: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4465: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4466: !CASX [3] (maybe <- 0x840095) (Int)
add %i0, 32, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4467: !DWLD [5] (Int)
ldx [%i1 + 72], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4468: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P4469: !ST [11] (maybe <- 0x840096) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4470: !DWST [15] (maybe <- 0x840097) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4471: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4472: !CAS [10] (maybe <- 0x840098) (Int)
add %i2, 32, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P4473: !DWST [2] (maybe <- 0x840099) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4474: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4475: !ST [4] (maybe <- 0x84009a) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P4476: !LD [3] (Int)
lduw [%i0 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4477: !ST [13] (maybe <- 0x84009b) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P4478: !SWAP [10] (maybe <- 0x84009c) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P4479: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P4480: !CAS [0] (maybe <- 0x84009d) (Int)
add %i0, 0, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4481: !ST [2] (maybe <- 0x84009e) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4482: !DWST [0] (maybe <- 0x84009f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4483: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4484: !CASX [11] (maybe <- 0x8400a1) (Int)
add %i2, 64, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4485: !DWLD [8] (Int)
ldx [%i1 + 256], %o3
! move %o3(upper) -> %o3(upper)

P4486: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P4487: !ST [10] (maybe <- 0x8400a2) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P4488: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4489: !CAS [11] (maybe <- 0x8400a3) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4490: !ST [8] (maybe <- 0x8400a4) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P4491: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P4492: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4493: !CASX [1] (maybe <- 0x8400a5) (Int)
add %i0, 0, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4494: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P4495: !DWLD [5] (Int)
ldx [%i1 + 72], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4496: !CAS [2] (maybe <- 0x8400a7) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4497: !DWST [8] (maybe <- 0x8400a8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P4498: !CASX [15] (maybe <- 0x8400a9) (Int)
add %i3, 192, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P4499: !CASX [3] (maybe <- 0x8400aa) (Int)
add %i0, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4500: !LD [3] (FP)
ld [%i0 + 32], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P4501: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4502: !CASX [2] (maybe <- 0x8400ab) (Int)
add %i0, 8, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %l4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4503: !ST [9] (maybe <- 0x48800160) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 512 ]

P4504: !LD [10] (Int)
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4505: !SWAP [0] (maybe <- 0x8400ac) (Int)
mov %l4, %l6
swap  [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4506: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4507: !DWLD [14] (FP)
! case fp 
ldd  [%i3 + 128], %f0
! 1 addresses covered

P4508: !DWLD [7] (FP)
! case fp 
ldd  [%i1 + 80], %f18
! 2 addresses covered
fmovs %f18, %f1
fmovs %f19, %f2

P4509: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P4510: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P4511: !LD [14] (Int)
lduw [%i3 + 128], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4512: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P4513: !ST [14] (maybe <- 0x8400ad) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4514: !CAS [5] (maybe <- 0x8400ae) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4515: !CAS [13] (maybe <- 0x8400af) (Int)
add %i3, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4516: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4517: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P4518: !DWST [10] (maybe <- 0x8400b0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P4519: !MEMBAR (Int)
membar #StoreLoad

P4520: !DWST [4] (maybe <- 0x8400b1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4521: !NOP (Int)
nop

P4522: !LD [1] (Int)
lduw [%i0 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4523: !ST [11] (maybe <- 0x8400b2) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4524: !DWST [10] (maybe <- 0x8400b3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P4525: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4526: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4527: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4528: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P4529: !DWST [15] (maybe <- 0x8400b4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4530: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P4531: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4532: !CASX [6] (maybe <- 0x8400b5) (Int)
add %i1, 80, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4533: !CAS [10] (maybe <- 0x8400b7) (Int)
add %i2, 32, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P4534: !DWLD [10] (Int)
ldx [%i2 + 32], %o3
! move %o3(upper) -> %o3(upper)

P4535: !CAS [10] (maybe <- 0x8400b8) (Int)
add %i2, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4536: !CAS [7] (maybe <- 0x8400b9) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4537: !SWAP [7] (maybe <- 0x8400ba) (Int)
mov %l4, %l6
swap  [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4538: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P4539: !CAS [5] (maybe <- 0x8400bb) (Int)
add %i1, 76, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P4540: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4541: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4542: !CASX [5] (maybe <- 0x8400bc) (Int)
add %i1, 72, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %l4, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4543: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4544: !CASX [2] (maybe <- 0x8400bd) (Int)
add %i0, 8, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4545: !CASX [10] (maybe <- 0x8400be) (Int)
add %i2, 32, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4546: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4547: !MEMBAR (Int)
membar #StoreLoad

P4548: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P4549: !DWLD [10] (Int)
ldx [%i2 + 32], %o3
! move %o3(upper) -> %o3(upper)

P4550: !DWST [4] (maybe <- 0x8400bf) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4551: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4552: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4553: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P4554: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4555: !LD [6] (Int)
lduw [%i1 + 80], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4556: !DWST [3] (maybe <- 0x8400c0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P4557: !LD [7] (FP)
ld [%i1 + 84], %f3
! 1 addresses covered

P4558: !DWST [4] (maybe <- 0x8400c1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4559: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4560: !DWST [8] (maybe <- 0x48800180) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 256]

P4561: !ST [12] (maybe <- 0x488001a0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 0 ]

P4562: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4563: !DWST [8] (maybe <- 0x8400c2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P4564: !DWST [11] (maybe <- 0x8400c3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P4565: !ST [5] (maybe <- 0x8400c4) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P4566: !ST [3] (maybe <- 0x8400c5) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P4567: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P4568: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P4569: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4570: !CASX [7] (maybe <- 0x8400c6) (Int)
add %i1, 80, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4571: !CASX [3] (maybe <- 0x8400c8) (Int)
add %i0, 32, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4572: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4573: !DWST [13] (maybe <- 0x8400c9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P4574: !LD [14] (FP)
ld [%i3 + 128], %f4
! 1 addresses covered

P4575: !CAS [9] (maybe <- 0x8400ca) (Int)
add %i1, 512, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4576: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4577: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P4578: !DWST [3] (maybe <- 0x8400cb) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P4579: !DWST [5] (maybe <- 0x8400cc) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P4580: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4581: !CASX [4] (maybe <- 0x8400cd) (Int)
add %i0, 64, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4582: !CAS [15] (maybe <- 0x8400ce) (Int)
add %i3, 192, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P4583: !CASX [14] (maybe <- 0x8400cf) (Int)
add %i3, 128, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4584: !DWLD [7] (Int)
ldx [%i1 + 80], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4585: !DWST [3] (maybe <- 0x8400d0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P4586: !DWST [14] (maybe <- 0x8400d1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P4587: !CAS [3] (maybe <- 0x8400d2) (Int)
add %i0, 32, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P4588: !CASX [14] (maybe <- 0x8400d3) (Int)
add %i3, 128, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4589: !SWAP [0] (maybe <- 0x8400d4) (Int)
mov %l4, %o0
swap  [%i0 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4590: !MEMBAR (Int)
membar #StoreLoad

P4591: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4592: !LD [1] (Int)
lduw [%i0 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4593: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4594: !ST [2] (maybe <- 0x8400d5) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4595: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4596: !CAS [9] (maybe <- 0x8400d6) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4597: !CAS [15] (maybe <- 0x8400d7) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4598: !CAS [10] (maybe <- 0x8400d8) (Int)
add %i2, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P4599: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4600: !DWLD [13] (Int)
ldx [%i3 + 64], %o0
! move %o0(upper) -> %o0(upper)

P4601: !ST [0] (maybe <- 0x8400d9) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4602: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P4603: !ST [14] (maybe <- 0x8400da) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4604: !DWLD [3] (Int)
ldx [%i0 + 32], %o1
! move %o1(upper) -> %o1(upper)

P4605: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1

P4606: !NOP (Int)
nop

P4607: !ST [11] (maybe <- 0x8400db) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4608: !ST [8] (maybe <- 0x8400dc) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P4609: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4610: !CASX [12] (maybe <- 0x8400dd) (Int)
add %i3, 0, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4611: !ST [14] (maybe <- 0x8400de) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4612: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P4613: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4614: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4615: !MEMBAR (Int)
membar #StoreLoad

P4616: !DWLD [10] (Int)
ldx [%i2 + 32], %o4
! move %o4(upper) -> %o4(upper)

P4617: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4618: !DWST [15] (maybe <- 0x8400df) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4619: !DWST [11] (maybe <- 0x8400e0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P4620: !DWLD [8] (FP)
! case fp 
ldd  [%i1 + 256], %f18
! 1 addresses covered
fmovs %f18, %f5

P4621: !DWST [8] (maybe <- 0x8400e1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P4622: !CAS [2] (maybe <- 0x8400e2) (Int)
add %i0, 12, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4623: !DWST [4] (maybe <- 0x8400e3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4624: !CASX [7] (maybe <- 0x8400e4) (Int)
add %i1, 80, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4625: !DWLD [4] (Int)
ldx [%i0 + 64], %o3
! move %o3(upper) -> %o3(upper)

P4626: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4627: !CASX [7] (maybe <- 0x8400e6) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P4628: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4629: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P4630: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4631: !NOP (Int)
nop

P4632: !DWLD [5] (FP)
! case fp 
ldd  [%i1 + 72], %f6
! 1 addresses covered
fmovs %f7, %f6

P4633: !ST [8] (maybe <- 0x488001c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 256 ]

P4634: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4635: !LD [14] (Int)
lduw [%i3 + 128], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4636: !ST [1] (maybe <- 0x488001e0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P4637: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4638: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P4639: !SWAP [6] (maybe <- 0x8400e8) (Int)
mov %l4, %o2
swap  [%i1 + 80], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4640: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P4641: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4642: !DWST [3] (maybe <- 0x8400e9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P4643: !DWST [2] (maybe <- 0x8400ea) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4644: !ST [5] (maybe <- 0x8400eb) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P4645: !MEMBAR (Int)
membar #StoreLoad

P4646: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4647: !DWST [6] (maybe <- 0x8400ec) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P4648: !DWST [13] (maybe <- 0x8400ee) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P4649: !CASX [13] (maybe <- 0x8400ef) (Int)
add %i3, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4650: !ST [7] (maybe <- 0x8400f0) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P4651: !DWST [15] (maybe <- 0x8400f1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4652: !ST [8] (maybe <- 0x8400f2) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P4653: !DWST [4] (maybe <- 0x8400f3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4654: !DWST [0] (maybe <- 0x8400f4) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4655: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P4656: !DWLD [3] (FP)
! case fp 
ldd  [%i0 + 32], %f18
! 1 addresses covered
fmovs %f18, %f7

P4657: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4658: !SWAP [8] (maybe <- 0x8400f6) (Int)
mov %l4, %o0
swap  [%i1 + 256], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4659: !CASX [14] (maybe <- 0x8400f7) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4660: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P4661: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4662: !SWAP [6] (maybe <- 0x8400f8) (Int)
mov %l4, %l6
swap  [%i1 + 80], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P4663: !ST [6] (maybe <- 0x8400f9) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P4664: !DWLD [14] (Int)
ldx [%i3 + 128], %o4
! move %o4(upper) -> %o4(upper)

P4665: !ST [0] (maybe <- 0x8400fa) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4666: !ST [2] (maybe <- 0x8400fb) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4667: !ST [11] (maybe <- 0x8400fc) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4668: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4669: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4670: !DWLD [1] (Int)
ldx [%i0 + 0], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4671: !CAS [10] (maybe <- 0x8400fd) (Int)
add %i2, 32, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P4672: !DWLD [10] (Int)
ldx [%i2 + 32], %o2
! move %o2(upper) -> %o2(upper)

P4673: !MEMBAR (Int)
membar #StoreLoad

P4674: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P4675: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P4676: !ST [11] (maybe <- 0x8400fe) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4677: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P4678: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4679: !MEMBAR (Int)
membar #StoreLoad

P4680: !ST [9] (maybe <- 0x8400ff) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P4681: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4682: !SWAP [12] (maybe <- 0x840100) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P4683: !LD [11] (Int)
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4684: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P4685: !CASX [14] (maybe <- 0x840101) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4686: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4687: !DWST [14] (maybe <- 0x840102) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P4688: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4689: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4690: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P4691: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4692: !DWLD [6] (Int)
ldx [%i1 + 80], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4693: !DWLD [6] (FP)
! case fp 
ldd  [%i1 + 80], %f8
! 2 addresses covered

P4694: !ST [14] (maybe <- 0x840103) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4695: !ST [14] (maybe <- 0x840104) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4696: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4697: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P4698: !LD [9] (Int)
lduw [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4699: !ST [0] (maybe <- 0x840105) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4700: !MEMBAR (Int)
membar #StoreLoad

P4701: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4702: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P4703: !CAS [10] (maybe <- 0x840106) (Int)
add %i2, 32, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4704: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P4705: !LD [9] (Int)
lduw [%i1 + 512], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4706: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P4707: !DWST [5] (maybe <- 0x840107) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P4708: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P4709: !ST [10] (maybe <- 0x840108) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P4710: !MEMBAR (Int)
membar #StoreLoad

P4711: !CASX [15] (maybe <- 0x840109) (Int)
add %i3, 192, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4712: !DWST [3] (maybe <- 0x84010a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P4713: !LD [11] (FP)
ld [%i2 + 64], %f10
! 1 addresses covered

P4714: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4715: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P4716: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P4717: !DWST [10] (maybe <- 0x84010b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P4718: !CAS [8] (maybe <- 0x84010c) (Int)
add %i1, 256, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P4719: !ST [0] (maybe <- 0x84010d) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4720: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P4721: !LD [3] (Int)
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4722: !ST [11] (maybe <- 0x84010e) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4723: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4724: !DWST [10] (maybe <- 0x84010f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P4725: !CAS [10] (maybe <- 0x840110) (Int)
add %i2, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4726: !CASX [0] (maybe <- 0x840111) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4727: !ST [2] (maybe <- 0x840113) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4728: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P4729: !ST [2] (maybe <- 0x840114) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4730: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4731: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4732: !LD [2] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4733: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4734: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P4735: !DWST [4] (maybe <- 0x840115) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4736: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4737: !CASX [11] (maybe <- 0x840116) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4738: !DWST [8] (maybe <- 0x840117) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P4739: !DWST [8] (maybe <- 0x48800200) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 256]

P4740: !DWST [2] (maybe <- 0x840118) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4741: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4742: !ST [8] (maybe <- 0x840119) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P4743: !LD [1] (Int)
lduw [%i0 + 4], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4744: !ST [9] (maybe <- 0x84011a) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P4745: !CASX [15] (maybe <- 0x84011b) (Int)
add %i3, 192, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P4746: !ST [2] (maybe <- 0x84011c) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P4747: !ST [4] (maybe <- 0x84011d) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P4748: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4749: !CAS [13] (maybe <- 0x84011e) (Int)
add %i3, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4750: !DWST [8] (maybe <- 0x84011f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P4751: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P4752: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P4753: !MEMBAR (Int)
membar #StoreLoad

P4754: !CASX [8] (maybe <- 0x840120) (Int)
add %i1, 256, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4755: !CASX [15] (maybe <- 0x840121) (Int)
add %i3, 192, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4756: !LD [14] (Int)
lduw [%i3 + 128], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4757: !CAS [6] (maybe <- 0x840122) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4758: !CAS [8] (maybe <- 0x840123) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4759: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4760: !MEMBAR (Int)
membar #StoreLoad

P4761: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4762: !NOP (Int)
nop

P4763: !CAS [13] (maybe <- 0x840124) (Int)
add %i3, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4764: !ST [14] (maybe <- 0x48800220) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P4765: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4766: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4767: !DWST [12] (maybe <- 0x840125) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P4768: !DWLD [9] (FP)
! case fp 
ldd  [%i1 + 512], %f18
! 1 addresses covered
fmovs %f18, %f11

P4769: !ST [3] (maybe <- 0x840126) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P4770: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4771: !DWLD [12] (Int)
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)

P4772: !ST [11] (maybe <- 0x840127) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4773: !CASX [9] (maybe <- 0x840128) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P4774: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P4775: !DWST [2] (maybe <- 0x840129) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4776: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P4777: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P4778: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4779: !ST [12] (maybe <- 0x84012a) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4780: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4781: !LD [7] (Int)
lduw [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4782: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4783: !LD [10] (Int)
lduw [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4784: !MEMBAR (Int)
membar #StoreLoad

P4785: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4786: !DWLD [4] (Int)
ldx [%i0 + 64], %o1
! move %o1(upper) -> %o1(upper)

P4787: !DWLD [3] (FP)
! case fp 
ldd  [%i0 + 32], %f12
! 1 addresses covered

P4788: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P4789: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4790: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P4791: !DWST [11] (maybe <- 0x84012b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P4792: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4793: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4794: !ST [14] (maybe <- 0x84012c) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4795: !DWST [6] (maybe <- 0x48800240) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 80]

P4796: !DWST [11] (maybe <- 0x84012d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P4797: !DWST [14] (maybe <- 0x84012e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P4798: !ST [4] (maybe <- 0x84012f) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P4799: !DWLD [8] (Int)
ldx [%i1 + 256], %o3
! move %o3(upper) -> %o3(upper)

P4800: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P4801: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4802: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4803: !ST [3] (maybe <- 0x840130) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P4804: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4805: !ST [6] (maybe <- 0x840131) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P4806: !SWAP [10] (maybe <- 0x840132) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P4807: !DWLD [13] (Int)
ldx [%i3 + 64], %o4
! move %o4(upper) -> %o4(upper)

P4808: !ST [10] (maybe <- 0x840133) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P4809: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4810: !ST [9] (maybe <- 0x840134) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P4811: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P4812: !LD [5] (Int)
lduw [%i1 + 76], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4813: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P4814: !DWST [15] (maybe <- 0x840135) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4815: !DWST [4] (maybe <- 0x840136) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P4816: !MEMBAR (Int)
membar #StoreLoad

P4817: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4818: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4819: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4820: !LD [6] (Int)
lduw [%i1 + 80], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4821: !ST [8] (maybe <- 0x840137) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P4822: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P4823: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4824: !MEMBAR (Int)
membar #StoreLoad

P4825: !LD [15] (Int)
lduw [%i3 + 192], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4826: !ST [12] (maybe <- 0x840138) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4827: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P4828: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P4829: !ST [3] (maybe <- 0x840139) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P4830: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P4831: !SWAP [8] (maybe <- 0x84013a) (Int)
mov %l4, %o3
swap  [%i1 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P4832: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4833: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4834: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4835: !CASX [14] (maybe <- 0x84013b) (Int)
add %i3, 128, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4836: !CASX [9] (maybe <- 0x84013c) (Int)
add %i1, 512, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4837: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P4838: !MEMBAR (Int)
membar #StoreLoad

P4839: !DWLD [6] (Int)
ldx [%i1 + 80], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4840: !DWST [14] (maybe <- 0x84013d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P4841: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P4842: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4843: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P4844: !MEMBAR (Int)
membar #StoreLoad

P4845: !DWST [1] (maybe <- 0x84013e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4846: !CAS [4] (maybe <- 0x840140) (Int)
add %i0, 64, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4847: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4848: !MEMBAR (Int)
membar #StoreLoad

P4849: !SWAP [6] (maybe <- 0x840141) (Int)
mov %l4, %o1
swap  [%i1 + 80], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P4850: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P4851: !DWST [0] (maybe <- 0x840142) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4852: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P4853: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P4854: !ST [4] (maybe <- 0x840144) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P4855: !CASX [5] (maybe <- 0x840145) (Int)
add %i1, 72, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %l4, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4856: !CAS [9] (maybe <- 0x840146) (Int)
add %i1, 512, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P4857: !DWST [1] (maybe <- 0x840147) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P4858: !LD [6] (Int)
lduw [%i1 + 80], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4859: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P4860: !DWLD [1] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4861: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4862: !CAS [6] (maybe <- 0x840149) (Int)
add %i1, 80, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P4863: !LD [0] (Int)
lduw [%i0 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4864: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P4865: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4866: !LD [12] (FP)
ld [%i3 + 0], %f13
! 1 addresses covered

P4867: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P4868: !ST [14] (maybe <- 0x84014a) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4869: !DWLD [11] (Int)
ldx [%i2 + 64], %o4
! move %o4(upper) -> %o4(upper)

P4870: !ST [0] (maybe <- 0x84014b) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P4871: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4872: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4873: !MEMBAR (Int)
membar #StoreLoad

P4874: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4875: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4876: !ST [4] (maybe <- 0x84014c) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P4877: !DWST [2] (maybe <- 0x84014d) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4878: !MEMBAR (Int)
membar #StoreLoad

P4879: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4880: !DWST [10] (maybe <- 0x84014e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P4881: !CAS [15] (maybe <- 0x84014f) (Int)
add %i3, 192, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4882: !DWST [15] (maybe <- 0x840150) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4883: !ST [13] (maybe <- 0x840151) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P4884: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P4885: !ST [7] (maybe <- 0x840152) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P4886: !CASX [10] (maybe <- 0x840153) (Int)
add %i2, 32, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4887: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4888: !ST [6] (maybe <- 0x840154) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P4889: !DWST [15] (maybe <- 0x840155) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4890: !DWLD [4] (Int)
ldx [%i0 + 64], %o3
! move %o3(upper) -> %o3(upper)

P4891: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4892: !LD [4] (Int)
lduw [%i0 + 64], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P4893: !CASX [6] (maybe <- 0x840156) (Int)
add %i1, 80, %l7
ldx [%l7], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4894: !CASX [14] (maybe <- 0x840158) (Int)
add %i3, 128, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4895: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4896: !MEMBAR (Int)
membar #StoreLoad

P4897: !CAS [2] (maybe <- 0x840159) (Int)
add %i0, 12, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P4898: !ST [14] (maybe <- 0x84015a) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4899: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4900: !DWST [2] (maybe <- 0x84015b) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4901: !DWLD [2] (Int)
ldx [%i0 + 8], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4902: !CASX [13] (maybe <- 0x84015c) (Int)
add %i3, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4903: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P4904: !DWST [2] (maybe <- 0x84015d) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P4905: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P4906: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4907: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4908: !DWST [14] (maybe <- 0x84015e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P4909: !LD [12] (Int)
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P4910: !DWST [6] (maybe <- 0x84015f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P4911: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P4912: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P4913: !LD [15] (Int)
lduw [%i3 + 192], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4914: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P4915: !LD [6] (Int)
lduw [%i1 + 80], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4916: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4917: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4918: !ST [11] (maybe <- 0x840161) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P4919: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4920: !DWLD [13] (FP)
! case fp 
ldd  [%i3 + 64], %f14
! 1 addresses covered

P4921: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P4922: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P4923: !CASX [4] (maybe <- 0x840162) (Int)
add %i0, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P4924: !SWAP [6] (maybe <- 0x840163) (Int)
mov %l4, %o2
swap  [%i1 + 80], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4925: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4926: !MEMBAR (Int)
membar #StoreLoad

P4927: !DWST [5] (maybe <- 0x48800280) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 72]

P4928: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P4929: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4930: !ST [6] (maybe <- 0x488002a0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 80 ]

P4931: !CASX [3] (maybe <- 0x840164) (Int)
add %i0, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P4932: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P4933: !CAS [6] (maybe <- 0x840165) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P4934: !ST [3] (maybe <- 0x840166) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P4935: !CASX [4] (maybe <- 0x840167) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P4936: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P4937: !DWST [9] (maybe <- 0x840168) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P4938: !LD [9] (Int)
lduw [%i1 + 512], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P4939: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P4940: !ST [12] (maybe <- 0x840169) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4941: !LD [3] (FP)
ld [%i0 + 32], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P4942: !MEMBAR (Int)
membar #StoreLoad

P4943: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4944: !ST [7] (maybe <- 0x84016a) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P4945: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P4946: !CASX [6] (maybe <- 0x84016b) (Int)
add %i1, 80, %l7
ldx [%l7], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %o4, %l3
sllx %l4, 32, %o0
add  %l4, 1, %l4
or   %l4, %o0, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P4947: !ST [10] (maybe <- 0x84016d) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P4948: !DWLD [9] (FP)
! case fp 
ldd  [%i1 + 512], %f0
! 1 addresses covered

P4949: !DWLD [11] (Int)
ldx [%i2 + 64], %o1
! move %o1(upper) -> %o1(upper)

P4950: !ST [12] (maybe <- 0x84016e) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4951: !ST [13] (maybe <- 0x84016f) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P4952: !SWAP [5] (maybe <- 0x840170) (Int)
mov %l4, %l6
swap  [%i1 + 76], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P4953: !DWLD [0] (Int)
ldx [%i0 + 0], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P4954: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4955: !DWST [13] (maybe <- 0x840171) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P4956: !DWLD [1] (Int)
ldx [%i0 + 0], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P4957: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P4958: !DWST [7] (maybe <- 0x840172) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P4959: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4960: !DWST [8] (maybe <- 0x840174) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P4961: !MEMBAR (Int)
membar #StoreLoad

P4962: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4963: !DWLD [12] (Int)
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)

P4964: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P4965: !DWST [5] (maybe <- 0x488002c0) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 72]

P4966: !ST [10] (maybe <- 0x840175) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P4967: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4968: !CASX [0] (maybe <- 0x840176) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P4969: !DWST [11] (maybe <- 0x840178) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P4970: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4971: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P4972: !MEMBAR (Int)
membar #StoreLoad

P4973: !NOP (Int)
nop

P4974: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4975: !DWST [5] (maybe <- 0x840179) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P4976: !DWST [15] (maybe <- 0x84017a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P4977: !CAS [5] (maybe <- 0x84017b) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P4978: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2

P4979: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P4980: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4981: !DWLD [10] (Int)
ldx [%i2 + 32], %o3
! move %o3(upper) -> %o3(upper)

P4982: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l7
or %l7, %o3, %o3

P4983: !LD [7] (FP)
ld [%i1 + 84], %f1
! 1 addresses covered

P4984: !MEMBAR (Int)
membar #StoreLoad

P4985: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4986: !ST [12] (maybe <- 0x84017c) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P4987: !LD [13] (Int)
lduw [%i3 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P4988: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P4989: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P4990: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P4991: !ST [14] (maybe <- 0x84017d) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4992: !ST [14] (maybe <- 0x84017e) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P4993: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P4994: !DWST [9] (maybe <- 0x84017f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P4995: !LD [5] (Int)
lduw [%i1 + 76], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P4996: !SWAP [15] (maybe <- 0x840180) (Int)
mov %l4, %l6
swap  [%i3 + 192], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P4997: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P4998: !LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P4999: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P5000: !CAS [13] (maybe <- 0x840181) (Int)
add %i3, 64, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P5001: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5002: !DWST [3] (maybe <- 0x840182) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P5003: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P5004: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P5005: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P5006: !ST [14] (maybe <- 0x840183) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P5007: !DWST [9] (maybe <- 0x840184) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P5008: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P5009: !DWST [12] (maybe <- 0x840185) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P5010: !LD [14] (Int)
lduw [%i3 + 128], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5011: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5012: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5013: !CAS [15] (maybe <- 0x840186) (Int)
add %i3, 192, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5014: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5015: !LD [15] (Int)
lduw [%i3 + 192], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5016: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5017: !CAS [6] (maybe <- 0x840187) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5018: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5019: !MEMBAR (Int)
membar #StoreLoad

P5020: !SWAP [1] (maybe <- 0x840188) (Int)
mov %l4, %l6
swap  [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P5021: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P5022: !CAS [0] (maybe <- 0x840189) (Int)
add %i0, 0, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5023: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P5024: !ST [6] (maybe <- 0x84018a) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P5025: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P5026: !DWST [1] (maybe <- 0x84018b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P5027: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P5028: !DWST [13] (maybe <- 0x84018d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P5029: !CASX [3] (maybe <- 0x84018e) (Int)
add %i0, 32, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P5030: !ST [13] (maybe <- 0x84018f) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5031: !DWST [2] (maybe <- 0x840190) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P5032: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5033: !DWLD [3] (Int)
ldx [%i0 + 32], %o1
! move %o1(upper) -> %o1(upper)

P5034: !ST [11] (maybe <- 0x840191) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P5035: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5036: !ST [1] (maybe <- 0x840192) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P5037: !DWST [11] (maybe <- 0x488002e0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 64]

P5038: !CAS [13] (maybe <- 0x840193) (Int)
add %i3, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5039: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P5040: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P5041: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5042: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P5043: !CAS [3] (maybe <- 0x840194) (Int)
add %i0, 32, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5044: !LD [3] (Int)
lduw [%i0 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5045: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P5046: !SWAP [13] (maybe <- 0x840195) (Int)
mov %l4, %l6
swap  [%i3 + 64], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5047: !DWST [9] (maybe <- 0x840196) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P5048: !MEMBAR (Int)
membar #StoreLoad

P5049: !DWLD [0] (Int)
ldx [%i0 + 0], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5050: !CASX [3] (maybe <- 0x840197) (Int)
add %i0, 32, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P5051: !DWLD [8] (Int)
ldx [%i1 + 256], %o4
! move %o4(upper) -> %o4(upper)

P5052: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5053: !SWAP [13] (maybe <- 0x840198) (Int)
mov %l4, %o0
swap  [%i3 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5054: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P5055: !LD [0] (Int)
lduw [%i0 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5056: !CASX [6] (maybe <- 0x840199) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5057: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P5058: !MEMBAR (Int)
membar #StoreLoad

P5059: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P5060: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P5061: !LD [0] (Int)
lduw [%i0 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5062: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5063: !MEMBAR (Int)
membar #StoreLoad

P5064: !ST [15] (maybe <- 0x84019b) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P5065: !DWLD [14] (Int)
ldx [%i3 + 128], %o0
! move %o0(upper) -> %o0(upper)

P5066: !CASX [6] (maybe <- 0x84019c) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5067: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P5068: !SWAP [8] (maybe <- 0x84019e) (Int)
mov %l4, %o3
swap  [%i1 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5069: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5070: !MEMBAR (Int)
membar #StoreLoad

P5071: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5072: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5073: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5074: !DWST [15] (maybe <- 0x84019f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5075: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5076: !MEMBAR (Int)
membar #StoreLoad

P5077: !CASX [3] (maybe <- 0x8401a0) (Int)
add %i0, 32, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5078: !LD [6] (Int)
lduw [%i1 + 80], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5079: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5080: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5081: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P5082: !CAS [3] (maybe <- 0x8401a1) (Int)
add %i0, 32, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5083: !CAS [13] (maybe <- 0x8401a2) (Int)
add %i3, 64, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5084: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P5085: !CASX [1] (maybe <- 0x8401a3) (Int)
add %i0, 0, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P5086: !LD [11] (Int)
lduw [%i2 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5087: !ST [6] (maybe <- 0x8401a5) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P5088: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P5089: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5090: !MEMBAR (Int)
membar #StoreLoad

P5091: !LD [0] (FP)
ld [%i0 + 0], %f2
! 1 addresses covered

P5092: !LD [1] (FP)
ld [%i0 + 4], %f3
! 1 addresses covered

P5093: !LD [2] (FP)
ld [%i0 + 12], %f4
! 1 addresses covered

P5094: !LD [3] (FP)
ld [%i0 + 32], %f5
! 1 addresses covered

P5095: !LD [4] (FP)
ld [%i0 + 64], %f6
! 1 addresses covered

P5096: !LD [5] (FP)
ld [%i1 + 76], %f7
! 1 addresses covered

P5097: !LD [6] (FP)
ld [%i1 + 80], %f8
! 1 addresses covered

P5098: !LD [7] (FP)
ld [%i1 + 84], %f9
! 1 addresses covered

P5099: !LD [8] (FP)
ld [%i1 + 256], %f10
! 1 addresses covered

P5100: !LD [9] (FP)
ld [%i1 + 512], %f11
! 1 addresses covered

P5101: !LD [10] (FP)
ld [%i2 + 32], %f12
! 1 addresses covered

P5102: !LD [11] (FP)
ld [%i2 + 64], %f13
! 1 addresses covered

P5103: !LD [12] (FP)
ld [%i3 + 0], %f14
! 1 addresses covered

P5104: !LD [13] (FP)
ld [%i3 + 64], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P5105: !LD [14] (FP)
ld [%i3 + 128], %f0
! 1 addresses covered

P5106: !LD [15] (FP)
ld [%i3 + 192], %f1
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30

restore
retl
nop
!-----------------



func5:

! 1000 instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
srlx %i0, 6, %i0
sllx %i0, 6, %i0

add %i1, 63, %i1
srlx %i1, 6, %i1
sllx %i1, 6, %i1

add %i2, 63, %i2
srlx %i2, 6, %i2
sllx %i2, 6, %i2

add %i3, 63, %i3
srlx %i3, 6, %i3
sllx %i3, 6, %i3

add %i4, 63, %i4
srlx %i4, 6, %i4
sllx %i4, 6, %i4

add %i5, 63, %i5
srlx %i5, 6, %i5
sllx %i5, 6, %i5

mov   %i4, %l1
add   %i5, 1344, %l5

! Initialize %o7, the pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
addx  %o7, %l1, %o7 

! Initializing %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l7
or    %l7, %lo(0xdeadbee0), %l7
stw   %l7, [%l5]
sethi %hi(0xdeadbee1), %l7
or    %l7, %lo(0xdeadbee1), %l7
stw   %l7, [%l5+4]
ldd [%l5], %f0
ldd [%l5], %f2
ldd [%l5], %f4
ldd [%l5], %f6
ldd [%l5], %f8
ldd [%l5], %f10
ldd [%l5], %f12
ldd [%l5], %f14
ldd [%l5], %f16
ldd [%l5], %f18
ldd [%l5], %f20
ldd [%l5], %f22
ldd [%l5], %f24
ldd [%l5], %f26
ldd [%l5], %f28
ldd [%l5], %f30
ldd [%l5], %f32
ldd [%l5], %f34
ldd [%l5], %f36
ldd [%l5], %f38
ldd [%l5], %f40
ldd [%l5], %f42
ldd [%l5], %f44
ldd [%l5], %f46
ldd [%l5], %f48
ldd [%l5], %f50
ldd [%l5], %f52
ldd [%l5], %f54
ldd [%l5], %f56
ldd [%l5], %f58
ldd [%l5], %f60
ldd [%l5], %f62

! Initializing int results buffer registers: %o0 %o1 %o2 %o3 %o4 
mov %g0, %o0
mov %g0, %o1
mov %g0, %o2
mov %g0, %o3
mov %g0, %o4

! Signature for extract_loads
sethi %hi(0x05deade1), %l7
or    %l7, %lo(0x05deade1), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize integer counter 
sethi %hi(0x850001), %l4
or    %l4, %lo(0x850001), %l4

! Initialize FP counter 
sethi %hi(0x489fff80), %l7
or    %l7, %lo(0x489fff80), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize FP counter increment value 
sethi %hi(0x3f800000), %l7
or    %l7, %lo(0x3f800000), %l7
stw %l7, [%l5] 
ld [%l5], %f17 

P5107: !DWST [12] (maybe <- 0x850001) (Int) (Loop entry) (Loop exit)
sethi %hi(0x1), %l2
or %l2, %lo(0x1),  %l2
loop_entry_5_0:
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P5108: !NOP (Int)
nop

P5109: !CAS [9] (maybe <- 0x850002) (Int)
add %i1, 512, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5110: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5111: !CASX [3] (maybe <- 0x850003) (Int)
add %i0, 32, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P5112: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5113: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P5114: !LD [7] (Int)
lduw [%i1 + 84], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5115: !MEMBAR (Int)
membar #StoreLoad

P5116: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P5117: !DWLD [0] (Int)
ldx [%i0 + 0], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5118: !ST [3] (maybe <- 0x850004) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P5119: !ST [8] (maybe <- 0x850005) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P5120: !LD [5] (Int)
lduw [%i1 + 76], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5121: !CASX [14] (maybe <- 0x850006) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5122: !CAS [15] (maybe <- 0x850007) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5123: !DWST [1] (maybe <- 0x850008) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P5124: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5125: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5126: !DWLD [10] (Int)
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P5127: !CAS [0] (maybe <- 0x85000a) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P5128: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5129: !ST [2] (maybe <- 0x85000b) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P5130: !DWST [15] (maybe <- 0x489fff80) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 192]

P5131: !ST [9] (maybe <- 0x85000c) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P5132: !DWST [13] (maybe <- 0x489fffa0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 64]

P5133: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P5134: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5135: !DWST [6] (maybe <- 0x85000d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5136: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5137: !MEMBAR (Int)
membar #StoreLoad

P5138: !DWST [0] (maybe <- 0x85000f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P5139: !MEMBAR (Int)
membar #StoreLoad

P5140: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P5141: !CAS [5] (maybe <- 0x850011) (Int)
add %i1, 76, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P5142: !DWST [9] (maybe <- 0x850012) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P5143: !LD [2] (FP)
ld [%i0 + 12], %f0
! 1 addresses covered

P5144: !DWST [15] (maybe <- 0x850013) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5145: !DWST [14] (maybe <- 0x489fffc0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 128]

P5146: !LD [4] (Int)
lduw [%i0 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5147: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P5148: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P5149: !ST [4] (maybe <- 0x489fffe0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

P5150: !CAS [15] (maybe <- 0x850014) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5151: !DWST [12] (maybe <- 0x850015) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P5152: !CAS [7] (maybe <- 0x850016) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5153: !ST [8] (maybe <- 0x850017) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P5154: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5155: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P5156: !MEMBAR (Int)
membar #StoreLoad

P5157: !CASX [1] (maybe <- 0x850018) (Int)
add %i0, 0, %l7
ldx [%l7], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %o1, %l3
sllx %l4, 32, %o2
add  %l4, 1, %l4
or   %l4, %o2, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P5158: !SWAP [9] (maybe <- 0x85001a) (Int)
mov %l4, %o3
swap  [%i1 + 512], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5159: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5160: !DWST [4] (maybe <- 0x85001b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P5161: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P5162: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P5163: !CASX [11] (maybe <- 0x85001c) (Int)
add %i2, 64, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P5164: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P5165: !ST [13] (maybe <- 0x85001d) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5166: !LD [7] (Int)
lduw [%i1 + 84], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5167: !DWST [13] (maybe <- 0x85001e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P5168: !CAS [7] (maybe <- 0x85001f) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5169: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5170: !ST [3] (maybe <- 0x850020) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P5171: !DWST [6] (maybe <- 0x850021) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5172: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5173: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P5174: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P5175: !MEMBAR (Int)
membar #StoreLoad

P5176: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5177: !DWST [0] (maybe <- 0x850023) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P5178: !CASX [14] (maybe <- 0x850025) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5179: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P5180: !CAS [7] (maybe <- 0x850026) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5181: !ST [14] (maybe <- 0x850027) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P5182: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5183: !LD [13] (Int)
lduw [%i3 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5184: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P5185: !SWAP [6] (maybe <- 0x850028) (Int)
mov %l4, %o2
swap  [%i1 + 80], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5186: !ST [13] (maybe <- 0x850029) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5187: !CASX [2] (maybe <- 0x85002a) (Int)
add %i0, 8, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5188: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5189: !CASX [2] (maybe <- 0x85002b) (Int)
add %i0, 8, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P5190: !MEMBAR (Int)
membar #StoreLoad

P5191: !MEMBAR (Int)
membar #StoreLoad

P5192: !MEMBAR (Int)
membar #StoreLoad

P5193: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5194: !CAS [9] (maybe <- 0x85002c) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5195: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P5196: !SWAP [11] (maybe <- 0x85002d) (Int)
mov %l4, %l6
swap  [%i2 + 64], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P5197: !DWLD [5] (Int)
ldx [%i1 + 72], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5198: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5199: !MEMBAR (Int)
membar #StoreLoad

P5200: !ST [9] (maybe <- 0x85002e) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P5201: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P5202: !ST [15] (maybe <- 0x85002f) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P5203: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5204: !CAS [13] (maybe <- 0x850030) (Int)
add %i3, 64, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5205: !ST [5] (maybe <- 0x850031) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P5206: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P5207: !LD [1] (Int)
lduw [%i0 + 4], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5208: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5209: !DWLD [9] (FP)
! case fp 
ldd  [%i1 + 512], %f18
! 1 addresses covered
fmovs %f18, %f1

P5210: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5211: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5212: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5213: !CAS [14] (maybe <- 0x850032) (Int)
add %i3, 128, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P5214: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5215: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5216: !DWLD [8] (Int)
ldx [%i1 + 256], %o2
! move %o2(upper) -> %o2(upper)

P5217: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P5218: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5219: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5220: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P5221: !DWST [10] (maybe <- 0x48a00000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 32]

P5222: !LD [4] (Int)
lduw [%i0 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5223: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P5224: !LD [3] (Int)
lduw [%i0 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5225: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5226: !CASX [4] (maybe <- 0x850033) (Int)
add %i0, 64, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5227: !DWLD [14] (Int)
ldx [%i3 + 128], %o2
! move %o2(upper) -> %o2(upper)

P5228: !SWAP [1] (maybe <- 0x850034) (Int)
mov %l4, %l6
swap  [%i0 + 4], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P5229: !DWLD [2] (Int)
ldx [%i0 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5230: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5231: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5232: !DWST [13] (maybe <- 0x850035) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P5233: !MEMBAR (Int)
membar #StoreLoad

P5234: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P5235: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P5236: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P5237: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P5238: !DWLD [5] (Int)
ldx [%i1 + 72], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5239: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5240: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5241: !CASX [3] (maybe <- 0x850036) (Int)
add %i0, 32, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5242: !ST [2] (maybe <- 0x850037) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P5243: !ST [1] (maybe <- 0x850038) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P5244: !LD [11] (FP)
ld [%i2 + 64], %f2
! 1 addresses covered

P5245: !ST [13] (maybe <- 0x850039) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5246: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P5247: !CAS [2] (maybe <- 0x85003a) (Int)
add %i0, 12, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P5248: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P5249: !DWLD [3] (Int)
ldx [%i0 + 32], %o3
! move %o3(upper) -> %o3(upper)

P5250: !ST [14] (maybe <- 0x85003b) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P5251: !ST [12] (maybe <- 0x85003c) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P5252: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P5253: !NOP (Int)
nop

P5254: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5255: !NOP (Int)
nop

P5256: !MEMBAR (Int)
membar #StoreLoad

P5257: !DWST [5] (maybe <- 0x48a00020) (FP)
! 0 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i1 + 72]

P5258: !ST [1] (maybe <- 0x85003d) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P5259: !DWST [4] (maybe <- 0x85003e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P5260: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P5261: !DWLD [14] (Int)
ldx [%i3 + 128], %o4
! move %o4(upper) -> %o4(upper)

P5262: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5263: !LD [10] (FP)
ld [%i2 + 32], %f3
! 1 addresses covered

P5264: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5265: !CASX [3] (maybe <- 0x85003f) (Int)
add %i0, 32, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5266: !CASX [7] (maybe <- 0x850040) (Int)
add %i1, 80, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P5267: !DWLD [10] (Int)
ldx [%i2 + 32], %o4
! move %o4(upper) -> %o4(upper)

P5268: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5269: !DWST [12] (maybe <- 0x850042) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P5270: !ST [2] (maybe <- 0x850043) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P5271: !CAS [13] (maybe <- 0x850044) (Int)
add %i3, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5272: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5273: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P5274: !DWST [5] (maybe <- 0x850045) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P5275: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5276: !ST [2] (maybe <- 0x850046) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P5277: !LD [5] (Int)
lduw [%i1 + 76], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5278: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5279: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5280: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5281: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P5282: !ST [0] (maybe <- 0x850047) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P5283: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5284: !SWAP [1] (maybe <- 0x850048) (Int)
mov %l4, %l6
swap  [%i0 + 4], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P5285: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5286: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5287: !LD [14] (Int)
lduw [%i3 + 128], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5288: !SWAP [13] (maybe <- 0x850049) (Int)
mov %l4, %l6
swap  [%i3 + 64], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P5289: !CAS [6] (maybe <- 0x85004a) (Int)
add %i1, 80, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5290: !DWLD [6] (FP)
! case fp 
ldd  [%i1 + 80], %f4
! 2 addresses covered

P5291: !LD [9] (Int)
lduw [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5292: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5293: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5294: !CAS [6] (maybe <- 0x85004b) (Int)
add %i1, 80, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5295: !LD [5] (Int)
lduw [%i1 + 76], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5296: !DWST [4] (maybe <- 0x85004c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P5297: !CASX [1] (maybe <- 0x85004d) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5298: !SWAP [2] (maybe <- 0x85004f) (Int)
mov %l4, %l6
swap  [%i0 + 12], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5299: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5300: !LD [9] (Int)
lduw [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5301: !NOP (Int)
nop

P5302: !CAS [9] (maybe <- 0x850050) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5303: !CAS [0] (maybe <- 0x850051) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P5304: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1

P5305: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P5306: !LD [3] (Int)
lduw [%i0 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5307: !CAS [0] (maybe <- 0x850052) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5308: !SWAP [8] (maybe <- 0x850053) (Int)
mov %l4, %l6
swap  [%i1 + 256], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5309: !CAS [8] (maybe <- 0x850054) (Int)
add %i1, 256, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5310: !DWLD [10] (Int)
ldx [%i2 + 32], %o0
! move %o0(upper) -> %o0(upper)

P5311: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5312: !DWST [14] (maybe <- 0x850055) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P5313: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P5314: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5315: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5316: !CASX [4] (maybe <- 0x850056) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5317: !ST [3] (maybe <- 0x850057) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P5318: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5319: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5320: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5321: !ST [3] (maybe <- 0x850058) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P5322: !LD [12] (Int)
lduw [%i3 + 0], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P5323: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5324: !DWST [3] (maybe <- 0x850059) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P5325: !CASX [15] (maybe <- 0x85005a) (Int)
add %i3, 192, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P5326: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5327: !DWST [8] (maybe <- 0x85005b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P5328: !ST [7] (maybe <- 0x85005c) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P5329: !CASX [2] (maybe <- 0x85005d) (Int)
add %i0, 8, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
mov %l4, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P5330: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P5331: !SWAP [9] (maybe <- 0x85005e) (Int)
mov %l4, %o3
swap  [%i1 + 512], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5332: !CASX [3] (maybe <- 0x85005f) (Int)
add %i0, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P5333: !ST [1] (maybe <- 0x850060) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P5334: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5335: !DWST [13] (maybe <- 0x850061) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P5336: !SWAP [7] (maybe <- 0x850062) (Int)
mov %l4, %l6
swap  [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5337: !LD [4] (Int)
lduw [%i0 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5338: !DWST [0] (maybe <- 0x850063) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P5339: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P5340: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P5341: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P5342: !LD [12] (Int)
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5343: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P5344: !DWST [2] (maybe <- 0x850065) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P5345: !LD [13] (Int)
lduw [%i3 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5346: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5347: !CAS [0] (maybe <- 0x850066) (Int)
add %i0, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5348: !DWST [2] (maybe <- 0x850067) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P5349: !CASX [11] (maybe <- 0x850068) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P5350: !ST [4] (maybe <- 0x850069) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5351: !DWST [14] (maybe <- 0x85006a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P5352: !ST [4] (maybe <- 0x85006b) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5353: !CAS [12] (maybe <- 0x85006c) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5354: !CASX [12] (maybe <- 0x85006d) (Int)
add %i3, 0, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5355: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5356: !ST [9] (maybe <- 0x85006e) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P5357: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5358: !DWLD [15] (Int)
ldx [%i3 + 192], %o0
! move %o0(upper) -> %o0(upper)

P5359: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P5360: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5361: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5362: !MEMBAR (Int)
membar #StoreLoad

P5363: !ST [6] (maybe <- 0x85006f) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P5364: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5365: !MEMBAR (Int)
membar #StoreLoad

P5366: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P5367: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P5368: !DWST [6] (maybe <- 0x850070) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5369: !ST [2] (maybe <- 0x850072) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P5370: !DWLD [7] (FP)
! case fp 
ldd  [%i1 + 80], %f6
! 2 addresses covered

P5371: !LD [9] (Int)
lduw [%i1 + 512], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5372: !SWAP [10] (maybe <- 0x850073) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P5373: !DWLD [1] (FP)
! case fp 
ldd  [%i0 + 0], %f8
! 2 addresses covered

P5374: !LD [8] (Int)
lduw [%i1 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5375: !MEMBAR (Int)
membar #StoreLoad

P5376: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5377: !ST [0] (maybe <- 0x850074) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P5378: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5379: !ST [7] (maybe <- 0x850075) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P5380: !ST [13] (maybe <- 0x850076) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5381: !CASX [0] (maybe <- 0x850077) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P5382: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5383: !DWST [5] (maybe <- 0x850079) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P5384: !ST [8] (maybe <- 0x85007a) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P5385: !DWST [5] (maybe <- 0x85007b) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P5386: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5387: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5388: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5389: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5390: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5391: !MEMBAR (Int)
membar #StoreLoad

P5392: !LD [4] (Int)
lduw [%i0 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5393: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5394: !MEMBAR (Int)
membar #StoreLoad

P5395: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5396: !CAS [5] (maybe <- 0x85007c) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5397: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P5398: !CAS [8] (maybe <- 0x85007d) (Int)
add %i1, 256, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5399: !MEMBAR (Int)
membar #StoreLoad

P5400: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P5401: !ST [15] (maybe <- 0x85007e) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P5402: !SWAP [9] (maybe <- 0x85007f) (Int)
mov %l4, %o4
swap  [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5403: !DWST [8] (maybe <- 0x850080) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P5404: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5405: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5406: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5407: !LD [6] (Int)
lduw [%i1 + 80], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5408: !CAS [7] (maybe <- 0x850081) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P5409: !NOP (Int)
nop

P5410: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P5411: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5412: !DWLD [3] (Int)
ldx [%i0 + 32], %o2
! move %o2(upper) -> %o2(upper)

P5413: !ST [4] (maybe <- 0x850082) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5414: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P5415: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P5416: !ST [13] (maybe <- 0x850083) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5417: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P5418: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P5419: !DWLD [2] (Int)
ldx [%i0 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5420: !ST [3] (maybe <- 0x850084) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P5421: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5422: !CASX [0] (maybe <- 0x850085) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P5423: !CAS [15] (maybe <- 0x850087) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P5424: !ST [2] (maybe <- 0x850088) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P5425: !CAS [1] (maybe <- 0x850089) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5426: !ST [6] (maybe <- 0x85008a) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P5427: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P5428: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5429: !CAS [10] (maybe <- 0x85008b) (Int)
add %i2, 32, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5430: !LD [8] (Int)
lduw [%i1 + 256], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5431: !ST [4] (maybe <- 0x85008c) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5432: !CASX [7] (maybe <- 0x85008d) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P5433: !MEMBAR (Int)
membar #StoreLoad

P5434: !MEMBAR (Int)
membar #StoreLoad

P5435: !DWLD [12] (FP)
! case fp 
ldd  [%i3 + 0], %f10
! 1 addresses covered

P5436: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P5437: !DWST [11] (maybe <- 0x85008f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P5438: !DWLD [11] (Int)
ldx [%i2 + 64], %o2
! move %o2(upper) -> %o2(upper)

P5439: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2

P5440: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5441: !DWLD [2] (Int)
ldx [%i0 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5442: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5443: !MEMBAR (Int)
membar #StoreLoad

P5444: !CAS [7] (maybe <- 0x850090) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5445: !ST [10] (maybe <- 0x850091) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P5446: !CASX [14] (maybe <- 0x850092) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5447: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P5448: !MEMBAR (Int)
membar #StoreLoad

P5449: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5450: !ST [0] (maybe <- 0x48a00040) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P5451: !CASX [7] (maybe <- 0x850093) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P5452: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5453: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5454: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P5455: !ST [4] (maybe <- 0x850095) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5456: !MEMBAR (Int)
membar #StoreLoad

P5457: !DWLD [12] (Int)
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)

P5458: !DWST [15] (maybe <- 0x850096) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5459: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P5460: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1

P5461: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P5462: !DWLD [8] (Int)
ldx [%i1 + 256], %o2
! move %o2(upper) -> %o2(upper)

P5463: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P5464: !DWLD [13] (Int)
ldx [%i3 + 64], %o3
! move %o3(upper) -> %o3(upper)

P5465: !SWAP [1] (maybe <- 0x850097) (Int)
mov %l4, %l6
swap  [%i0 + 4], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5466: !SWAP [7] (maybe <- 0x850098) (Int)
mov %l4, %o4
swap  [%i1 + 84], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5467: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5468: !CASX [6] (maybe <- 0x850099) (Int)
add %i1, 80, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5469: !DWST [1] (maybe <- 0x85009b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P5470: !CASX [7] (maybe <- 0x85009d) (Int)
add %i1, 80, %l7
ldx [%l7], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
mov %o2, %l3
sllx %l4, 32, %o3
add  %l4, 1, %l4
or   %l4, %o3, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P5471: !LD [5] (Int)
lduw [%i1 + 76], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5472: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5473: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P5474: !ST [5] (maybe <- 0x85009f) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P5475: !LD [15] (Int)
lduw [%i3 + 192], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5476: !DWST [4] (maybe <- 0x8500a0) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P5477: !DWST [1] (maybe <- 0x48a00060) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 0]

P5478: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5479: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5480: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5481: !LD [13] (Int)
lduw [%i3 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5482: !ST [6] (maybe <- 0x8500a1) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P5483: !ST [3] (maybe <- 0x8500a2) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P5484: !SWAP [10] (maybe <- 0x8500a3) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P5485: !LD [13] (Int)
lduw [%i3 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5486: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5487: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5488: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5489: !ST [6] (maybe <- 0x8500a4) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P5490: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P5491: !DWST [15] (maybe <- 0x8500a5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5492: !DWST [10] (maybe <- 0x8500a6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P5493: !DWLD [14] (Int)
ldx [%i3 + 128], %o4
! move %o4(upper) -> %o4(upper)

P5494: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5495: !SWAP [10] (maybe <- 0x8500a7) (Int)
mov %l4, %o0
swap  [%i2 + 32], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5496: !DWST [8] (maybe <- 0x8500a8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P5497: !CASX [5] (maybe <- 0x8500a9) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5498: !CASX [6] (maybe <- 0x8500aa) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5499: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5500: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5501: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P5502: !DWLD [15] (Int)
ldx [%i3 + 192], %o0
! move %o0(upper) -> %o0(upper)

P5503: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P5504: !CASX [14] (maybe <- 0x8500ac) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5505: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5506: !ST [14] (maybe <- 0x48a000a0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P5507: !MEMBAR (Int)
membar #StoreLoad

P5508: !SWAP [1] (maybe <- 0x8500ad) (Int)
mov %l4, %l6
swap  [%i0 + 4], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5509: !ST [5] (maybe <- 0x8500ae) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P5510: !DWST [14] (maybe <- 0x8500af) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P5511: !ST [1] (maybe <- 0x8500b0) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P5512: !LD [0] (Int)
lduw [%i0 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5513: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5514: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P5515: !ST [7] (maybe <- 0x48a000c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 84 ]

P5516: !MEMBAR (Int)
membar #StoreLoad

P5517: !CASX [12] (maybe <- 0x8500b1) (Int)
add %i3, 0, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5518: !DWLD [7] (Int)
ldx [%i1 + 80], %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P5519: !DWLD [14] (Int)
ldx [%i3 + 128], %o3
! move %o3(upper) -> %o3(upper)

P5520: !DWLD [12] (Int)
ldx [%i3 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l6, 32, %l7
or %l7, %o3, %o3

P5521: !LD [14] (Int)
lduw [%i3 + 128], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5522: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5523: !LD [12] (Int)
lduw [%i3 + 0], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5524: !ST [1] (maybe <- 0x8500b2) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P5525: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P5526: !SWAP [3] (maybe <- 0x8500b3) (Int)
mov %l4, %l6
swap  [%i0 + 32], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5527: !LD [14] (Int)
lduw [%i3 + 128], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5528: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5529: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5530: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5531: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5532: !ST [14] (maybe <- 0x8500b4) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P5533: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5534: !MEMBAR (Int)
membar #StoreLoad

P5535: !CAS [1] (maybe <- 0x8500b5) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5536: !MEMBAR (Int)
membar #StoreLoad

P5537: !SWAP [10] (maybe <- 0x8500b6) (Int)
mov %l4, %l6
swap  [%i2 + 32], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P5538: !CAS [6] (maybe <- 0x8500b7) (Int)
add %i1, 80, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5539: !DWLD [12] (Int)
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)

P5540: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5541: !LD [14] (FP)
ld [%i3 + 128], %f11
! 1 addresses covered

P5542: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5543: !LD [7] (FP)
ld [%i1 + 84], %f12
! 1 addresses covered

P5544: !LD [4] (Int)
lduw [%i0 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5545: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5546: !ST [0] (maybe <- 0x8500b8) (Int)
stw   %l4, [%i0 + 0 ]
add   %l4, 1, %l4

P5547: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5548: !LD [13] (FP)
ld [%i3 + 64], %f13
! 1 addresses covered

P5549: !DWST [15] (maybe <- 0x8500b9) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5550: !CASX [12] (maybe <- 0x8500ba) (Int)
add %i3, 0, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P5551: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P5552: !ST [13] (maybe <- 0x8500bb) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5553: !LD [0] (Int)
lduw [%i0 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5554: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P5555: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5556: !DWLD [2] (FP)
! case fp 
ldd  [%i0 + 8], %f14
! 1 addresses covered
fmovs %f15, %f14

P5557: !CAS [13] (maybe <- 0x8500bc) (Int)
add %i3, 64, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5558: !DWLD [15] (Int)
ldx [%i3 + 192], %o0
! move %o0(upper) -> %o0(upper)

P5559: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P5560: !DWST [3] (maybe <- 0x8500bd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P5561: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P5562: !LD [1] (Int)
lduw [%i0 + 4], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5563: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P5564: !MEMBAR (Int)
membar #StoreLoad

P5565: !LD [13] (Int)
lduw [%i3 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5566: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P5567: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P5568: !LD [5] (Int)
lduw [%i1 + 76], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5569: !SWAP [4] (maybe <- 0x8500be) (Int)
mov %l4, %l6
swap  [%i0 + 64], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5570: !CAS [14] (maybe <- 0x8500bf) (Int)
add %i3, 128, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5571: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5572: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P5573: !NOP (Int)
nop

P5574: !LD [5] (FP)
ld [%i1 + 76], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P5575: !CASX [7] (maybe <- 0x8500c0) (Int)
add %i1, 80, %l7
ldx [%l7], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
mov %o0, %l3
sllx %l4, 32, %o1
add  %l4, 1, %l4
or   %l4, %o1, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5576: !DWST [9] (maybe <- 0x8500c2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P5577: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5578: !LD [11] (Int)
lduw [%i2 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5579: !CASX [14] (maybe <- 0x8500c3) (Int)
add %i3, 128, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5580: !CASX [5] (maybe <- 0x8500c4) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o4(lower)
srlx %l3, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P5581: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P5582: !MEMBAR (Int)
membar #StoreLoad

P5583: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5584: !CASX [9] (maybe <- 0x8500c5) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5585: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5586: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P5587: !DWST [1] (maybe <- 0x8500c6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P5588: !DWST [6] (maybe <- 0x8500c8) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5589: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P5590: !CASX [9] (maybe <- 0x8500ca) (Int)
add %i1, 512, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P5591: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P5592: !ST [1] (maybe <- 0x8500cb) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P5593: !DWST [14] (maybe <- 0x8500cc) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P5594: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P5595: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5596: !DWST [0] (maybe <- 0x8500cd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P5597: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5598: !CAS [14] (maybe <- 0x8500cf) (Int)
add %i3, 128, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P5599: !ST [9] (maybe <- 0x8500d0) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P5600: !MEMBAR (Int)
membar #StoreLoad

P5601: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5602: !LD [3] (Int)
lduw [%i0 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5603: !ST [10] (maybe <- 0x8500d1) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P5604: !MEMBAR (Int)
membar #StoreLoad

P5605: !DWST [5] (maybe <- 0x8500d2) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P5606: !DWST [15] (maybe <- 0x8500d3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5607: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P5608: !LD [11] (Int)
lduw [%i2 + 64], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P5609: !ST [14] (maybe <- 0x8500d4) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P5610: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5611: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5612: !DWST [7] (maybe <- 0x8500d5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5613: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5614: !CAS [3] (maybe <- 0x8500d7) (Int)
add %i0, 32, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5615: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P5616: !DWLD [6] (Int)
ldx [%i1 + 80], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5617: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5618: !ST [12] (maybe <- 0x8500d8) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4
loop_exit_5_0:
sub %l2, 1, %l2
cmp %l2, 0
bg loop_entry_5_0
nop

P5619: !DWLD [12] (Int)
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)

P5620: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P5621: !ST [11] (maybe <- 0x8500d9) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P5622: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P5623: !LD [15] (Int)
lduw [%i3 + 192], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5624: !CAS [1] (maybe <- 0x8500da) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5625: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P5626: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5627: !DWLD [3] (FP)
! case fp 
ldd  [%i0 + 32], %f0
! 1 addresses covered

P5628: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5629: !ST [14] (maybe <- 0x8500db) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P5630: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P5631: !DWST [13] (maybe <- 0x8500dc) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P5632: !DWST [7] (maybe <- 0x8500dd) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5633: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P5634: !CAS [13] (maybe <- 0x8500df) (Int)
add %i3, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5635: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P5636: !DWLD [12] (Int)
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)

P5637: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5638: !ST [4] (maybe <- 0x8500e0) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5639: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P5640: !LD [9] (Int)
lduw [%i1 + 512], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5641: !CASX [12] (maybe <- 0x8500e1) (Int)
add %i3, 0, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5642: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P5643: !ST [1] (maybe <- 0x8500e2) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P5644: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5645: !DWLD [11] (Int)
ldx [%i2 + 64], %o3
! move %o3(upper) -> %o3(upper)

P5646: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
or %l6, %o3, %o3

P5647: !DWST [13] (maybe <- 0x8500e3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P5648: !CAS [1] (maybe <- 0x8500e4) (Int)
add %i0, 4, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5649: !MEMBAR (Int)
membar #StoreLoad

P5650: !SWAP [13] (maybe <- 0x8500e5) (Int)
mov %l4, %o0
swap  [%i3 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5651: !DWST [13] (maybe <- 0x48a000e0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 64]

P5652: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P5653: !ST [4] (maybe <- 0x8500e6) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5654: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P5655: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P5656: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5657: !ST [13] (maybe <- 0x8500e7) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5658: !CASX [13] (maybe <- 0x8500e8) (Int)
add %i3, 64, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P5659: !DWLD [12] (Int)
ldx [%i3 + 0], %o3
! move %o3(upper) -> %o3(upper)

P5660: !MEMBAR (Int)
membar #StoreLoad

P5661: !SWAP [2] (maybe <- 0x8500e9) (Int)
mov %l4, %l6
swap  [%i0 + 12], %l6
! move %l6(lower) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5662: !DWST [0] (maybe <- 0x8500ea) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P5663: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P5664: !SWAP [8] (maybe <- 0x8500ec) (Int)
mov %l4, %o4
swap  [%i1 + 256], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5665: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P5666: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5667: !CASX [5] (maybe <- 0x8500ed) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5668: !DWST [9] (maybe <- 0x48a00100) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 512]

P5669: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P5670: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5671: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P5672: !ST [5] (maybe <- 0x8500ee) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P5673: !SWAP [7] (maybe <- 0x8500ef) (Int)
mov %l4, %o3
swap  [%i1 + 84], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5674: !ST [4] (maybe <- 0x8500f0) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5675: !DWST [7] (maybe <- 0x8500f1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5676: !DWST [13] (maybe <- 0x8500f3) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P5677: !CAS [11] (maybe <- 0x8500f4) (Int)
add %i2, 64, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5678: !DWST [10] (maybe <- 0x8500f5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P5679: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5680: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5681: !LD [4] (Int)
lduw [%i0 + 64], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5682: !ST [13] (maybe <- 0x8500f6) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5683: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P5684: !ST [14] (maybe <- 0x8500f7) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P5685: !CASX [13] (maybe <- 0x8500f8) (Int)
add %i3, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5686: !CASX [11] (maybe <- 0x8500f9) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5687: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P5688: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P5689: !ST [7] (maybe <- 0x8500fa) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P5690: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5691: !MEMBAR (Int)
membar #StoreLoad

P5692: !DWST [8] (maybe <- 0x8500fb) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P5693: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P5694: !SWAP [11] (maybe <- 0x8500fc) (Int)
mov %l4, %l6
swap  [%i2 + 64], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5695: !MEMBAR (Int)
membar #StoreLoad

P5696: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5697: !CAS [4] (maybe <- 0x8500fd) (Int)
add %i0, 64, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P5698: !ST [6] (maybe <- 0x8500fe) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P5699: !DWST [7] (maybe <- 0x8500ff) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5700: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5701: !MEMBAR (Int)
membar #StoreLoad

P5702: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P5703: !ST [15] (maybe <- 0x850101) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P5704: !ST [13] (maybe <- 0x850102) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5705: !CAS [4] (maybe <- 0x850103) (Int)
add %i0, 64, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P5706: !NOP (Int)
nop

P5707: !CASX [6] (maybe <- 0x850104) (Int)
add %i1, 80, %l7
ldx [%l7], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l3
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5708: !NOP (Int)
nop

P5709: !MEMBAR (Int)
membar #StoreLoad

P5710: !ST [2] (maybe <- 0x850106) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P5711: !CAS [13] (maybe <- 0x850107) (Int)
add %i3, 64, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5712: !CAS [9] (maybe <- 0x850108) (Int)
add %i1, 512, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P5713: !DWST [11] (maybe <- 0x850109) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P5714: !CASX [11] (maybe <- 0x85010a) (Int)
add %i2, 64, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P5715: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5716: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P5717: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5718: !DWST [6] (maybe <- 0x85010b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5719: !CAS [14] (maybe <- 0x85010d) (Int)
add %i3, 128, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5720: !CAS [5] (maybe <- 0x85010e) (Int)
add %i1, 76, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5721: !DWST [8] (maybe <- 0x85010f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P5722: !MEMBAR (Int)
membar #StoreLoad

P5723: !DWST [3] (maybe <- 0x850110) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P5724: !SWAP [7] (maybe <- 0x850111) (Int)
mov %l4, %o1
swap  [%i1 + 84], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P5725: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P5726: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5727: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5728: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P5729: !DWST [13] (maybe <- 0x850112) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P5730: !MEMBAR (Int)
membar #StoreLoad

P5731: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P5732: !LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5733: !CASX [2] (maybe <- 0x850113) (Int)
add %i0, 8, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5734: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5735: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5736: !CASX [12] (maybe <- 0x850114) (Int)
add %i3, 0, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5737: !REPLACEMENT [0] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5738: !CASX [12] (maybe <- 0x850115) (Int)
add %i3, 0, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P5739: !ST [3] (maybe <- 0x850116) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P5740: !DWST [14] (maybe <- 0x850117) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P5741: !MEMBAR (Int)
membar #StoreLoad

P5742: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5743: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5744: !DWST [12] (maybe <- 0x850118) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P5745: !DWST [3] (maybe <- 0x850119) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P5746: !DWST [4] (maybe <- 0x48a00120) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i0 + 64]

P5747: !MEMBAR (Int)
membar #StoreLoad

P5748: !MEMBAR (Int)
membar #StoreLoad

P5749: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P5750: !MEMBAR (Int)
membar #StoreLoad

P5751: !DWST [10] (maybe <- 0x85011a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P5752: !LD [4] (FP)
ld [%i0 + 64], %f1
! 1 addresses covered

P5753: !LD [3] (Int)
lduw [%i0 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5754: !DWST [5] (maybe <- 0x85011b) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P5755: !DWST [15] (maybe <- 0x85011c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5756: !NOP (Int)
nop

P5757: !ST [10] (maybe <- 0x85011d) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P5758: !CAS [8] (maybe <- 0x85011e) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5759: !CAS [2] (maybe <- 0x85011f) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P5760: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P5761: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5762: !MEMBAR (Int)
membar #StoreLoad

P5763: !DWLD [11] (Int)
ldx [%i2 + 64], %o2
! move %o2(upper) -> %o2(upper)

P5764: !ST [10] (maybe <- 0x850120) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P5765: !CASX [6] (maybe <- 0x850121) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5766: !SWAP [7] (maybe <- 0x850123) (Int)
mov %l4, %l6
swap  [%i1 + 84], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5767: !LD [14] (Int)
lduw [%i3 + 128], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5768: !DWST [3] (maybe <- 0x850124) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P5769: !ST [3] (maybe <- 0x850125) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P5770: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P5771: !ST [10] (maybe <- 0x850126) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P5772: !CAS [7] (maybe <- 0x850127) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P5773: !DWST [11] (maybe <- 0x850128) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P5774: !CASX [0] (maybe <- 0x850129) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5775: !DWST [10] (maybe <- 0x85012b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P5776: !ST [10] (maybe <- 0x85012c) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P5777: !SWAP [0] (maybe <- 0x85012d) (Int)
mov %l4, %l6
swap  [%i0 + 0], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5778: !SWAP [5] (maybe <- 0x85012e) (Int)
mov %l4, %o4
swap  [%i1 + 76], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5779: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5780: !SWAP [13] (maybe <- 0x85012f) (Int)
mov %l4, %l6
swap  [%i3 + 64], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5781: !NOP (Int)
nop

P5782: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5783: !CASX [12] (maybe <- 0x850130) (Int)
add %i3, 0, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5784: !LD [12] (Int)
lduw [%i3 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5785: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P5786: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5787: !MEMBAR (Int)
membar #StoreLoad

P5788: !NOP (Int)
nop

P5789: !CAS [2] (maybe <- 0x850131) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5790: !ST [4] (maybe <- 0x850132) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5791: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5792: !DWLD [8] (Int)
ldx [%i1 + 256], %o0
! move %o0(upper) -> %o0(upper)

P5793: !CASX [15] (maybe <- 0x850133) (Int)
add %i3, 192, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5794: !CAS [12] (maybe <- 0x850134) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5795: !DWST [15] (maybe <- 0x850135) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5796: !DWLD [8] (Int)
ldx [%i1 + 256], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P5797: !CASX [12] (maybe <- 0x850136) (Int)
add %i3, 0, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
sllx %l4, 32, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P5798: !LD [8] (FP)
ld [%i1 + 256], %f2
! 1 addresses covered

P5799: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P5800: !ST [4] (maybe <- 0x850137) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5801: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P5802: !LD [15] (FP)
ld [%i3 + 192], %f3
! 1 addresses covered

P5803: !CAS [3] (maybe <- 0x850138) (Int)
add %i0, 32, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P5804: !DWLD [2] (Int)
ldx [%i0 + 8], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5805: !CAS [15] (maybe <- 0x850139) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5806: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P5807: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P5808: !CAS [5] (maybe <- 0x85013a) (Int)
add %i1, 76, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5809: !DWST [2] (maybe <- 0x85013b) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P5810: !DWLD [9] (Int)
ldx [%i1 + 512], %o0
! move %o0(upper) -> %o0(upper)

P5811: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P5812: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5813: !DWST [6] (maybe <- 0x85013c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5814: !LD [9] (Int)
lduw [%i1 + 512], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5815: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P5816: !LD [14] (Int)
lduw [%i3 + 128], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5817: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5818: !ST [2] (maybe <- 0x85013e) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P5819: !ST [6] (maybe <- 0x85013f) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P5820: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5821: !DWLD [4] (Int)
ldx [%i0 + 64], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P5822: !SWAP [12] (maybe <- 0x850140) (Int)
mov %l4, %o4
swap  [%i3 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5823: !CAS [6] (maybe <- 0x850141) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5824: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5825: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P5826: !DWLD [3] (Int)
ldx [%i0 + 32], %o1
! move %o1(upper) -> %o1(upper)

P5827: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1

P5828: !LD [5] (Int)
lduw [%i1 + 76], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5829: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P5830: !CAS [3] (maybe <- 0x850142) (Int)
add %i0, 32, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5831: !DWLD [5] (Int)
ldx [%i1 + 72], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P5832: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P5833: !ST [2] (maybe <- 0x850143) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P5834: !DWST [10] (maybe <- 0x850144) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P5835: !MEMBAR (Int)
membar #StoreLoad

P5836: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P5837: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5838: !CAS [2] (maybe <- 0x850145) (Int)
add %i0, 12, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5839: !DWST [14] (maybe <- 0x850146) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P5840: !LD [3] (Int)
lduw [%i0 + 32], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5841: !ST [6] (maybe <- 0x850147) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P5842: !ST [5] (maybe <- 0x48a00140) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 76 ]

P5843: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5844: !CAS [5] (maybe <- 0x850148) (Int)
add %i1, 76, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5845: !DWLD [15] (Int)
ldx [%i3 + 192], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P5846: !ST [8] (maybe <- 0x850149) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P5847: !LD [10] (Int)
lduw [%i2 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5848: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5849: !DWST [2] (maybe <- 0x85014a) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P5850: !CAS [9] (maybe <- 0x85014b) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5851: !DWST [15] (maybe <- 0x85014c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5852: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5853: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5854: !CASX [10] (maybe <- 0x85014d) (Int)
add %i2, 32, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P5855: !DWST [2] (maybe <- 0x85014e) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P5856: !LD [15] (Int)
lduw [%i3 + 192], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5857: !DWST [2] (maybe <- 0x85014f) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P5858: !DWST [2] (maybe <- 0x850150) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P5859: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5860: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5861: !CAS [9] (maybe <- 0x850151) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P5862: !DWST [14] (maybe <- 0x850152) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P5863: !CASX [1] (maybe <- 0x850153) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l3
or %l3, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P5864: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5865: !REPLACEMENT [11] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5866: !CAS [4] (maybe <- 0x850155) (Int)
add %i0, 64, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P5867: !DWLD [12] (Int)
ldx [%i3 + 0], %o2
! move %o2(upper) -> %o2(upper)

P5868: !ST [4] (maybe <- 0x850156) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P5869: !DWST [11] (maybe <- 0x850157) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P5870: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5871: !ST [13] (maybe <- 0x850158) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P5872: !SWAP [15] (maybe <- 0x850159) (Int)
mov %l4, %l6
swap  [%i3 + 192], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P5873: !DWST [9] (maybe <- 0x85015a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P5874: !CAS [11] (maybe <- 0x85015b) (Int)
add %i2, 64, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5875: !DWST [3] (maybe <- 0x85015c) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P5876: !LD [5] (Int)
lduw [%i1 + 76], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5877: !ST [2] (maybe <- 0x48a00160) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 12 ]

P5878: !CASX [6] (maybe <- 0x85015d) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5879: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P5880: !DWLD [13] (Int)
ldx [%i3 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P5881: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5882: !ST [0] (maybe <- 0x48a00180) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P5883: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P5884: !DWST [12] (maybe <- 0x85015f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P5885: !CASX [7] (maybe <- 0x850160) (Int)
add %i1, 80, %l7
ldx [%l7], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l3
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5886: !LD [5] (Int)
lduw [%i1 + 76], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P5887: !DWST [9] (maybe <- 0x850162) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P5888: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5889: !LD [0] (Int)
lduw [%i0 + 0], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P5890: !DWLD [5] (Int)
ldx [%i1 + 72], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5891: !DWST [3] (maybe <- 0x850163) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P5892: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P5893: !DWST [7] (maybe <- 0x850164) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5894: !LD [0] (Int)
lduw [%i0 + 0], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P5895: !LD [8] (FP)
ld [%i1 + 256], %f4
! 1 addresses covered

P5896: !CASX [6] (maybe <- 0x850166) (Int)
add %i1, 80, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l3
or %l3, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5897: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5898: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5899: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5900: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P5901: !SWAP [6] (maybe <- 0x850168) (Int)
mov %l4, %l6
swap  [%i1 + 80], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P5902: !SWAP [6] (maybe <- 0x850169) (Int)
mov %l4, %o0
swap  [%i1 + 80], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5903: !DWST [10] (maybe <- 0x48a001a0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 32]

P5904: !DWST [14] (maybe <- 0x85016a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P5905: !DWST [14] (maybe <- 0x85016b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P5906: !ST [14] (maybe <- 0x85016c) (Int)
stw   %l4, [%i3 + 128 ]
add   %l4, 1, %l4

P5907: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P5908: !ST [15] (maybe <- 0x85016d) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P5909: !DWLD [12] (Int)
ldx [%i3 + 0], %o1
! move %o1(upper) -> %o1(upper)

P5910: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P5911: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l6, 32, %l7
or %l7, %o1, %o1

P5912: !ST [11] (maybe <- 0x85016e) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P5913: !MEMBAR (Int)
membar #StoreLoad

P5914: !DWST [9] (maybe <- 0x85016f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P5915: !ST [12] (maybe <- 0x850170) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P5916: !DWLD [11] (Int)
ldx [%i2 + 64], %o2
! move %o2(upper) -> %o2(upper)

P5917: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P5918: !ST [9] (maybe <- 0x850171) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P5919: !LD [11] (Int)
lduw [%i2 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5920: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5921: !CASX [5] (maybe <- 0x850172) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P5922: !DWLD [14] (FP)
! case fp 
ldd  [%i3 + 128], %f18
! 1 addresses covered
fmovs %f18, %f5

P5923: !CAS [1] (maybe <- 0x850173) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P5924: !ST [11] (maybe <- 0x850174) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P5925: !MEMBAR (Int)
membar #StoreLoad

P5926: !CASX [0] (maybe <- 0x850175) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l3
or %l3, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5927: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P5928: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P5929: !DWST [12] (maybe <- 0x48a001c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P5930: !SWAP [10] (maybe <- 0x850177) (Int)
mov %l4, %o4
swap  [%i2 + 32], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5931: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P5932: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5933: !MEMBAR (Int)
membar #StoreLoad

P5934: !ST [15] (maybe <- 0x850178) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P5935: !DWLD [13] (FP)
! case fp 
ldd  [%i3 + 64], %f6
! 1 addresses covered

P5936: !CAS [9] (maybe <- 0x850179) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5937: !DWLD [5] (FP)
! case fp 
ldd  [%i1 + 72], %f18
! 1 addresses covered
fmovs %f19, %f7

P5938: !DWST [13] (maybe <- 0x85017a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P5939: !ST [10] (maybe <- 0x85017b) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P5940: !SWAP [9] (maybe <- 0x85017c) (Int)
mov %l4, %l6
swap  [%i1 + 512], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P5941: !ST [0] (maybe <- 0x48a001e0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P5942: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5943: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P5944: !DWST [8] (maybe <- 0x48a00200) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i1 + 256]

P5945: !CAS [13] (maybe <- 0x85017d) (Int)
add %i3, 64, %l7
lduw [%l7], %o1
mov %o1, %l3
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P5946: !DWLD [11] (Int)
ldx [%i2 + 64], %o2
! move %o2(upper) -> %o2(upper)

P5947: !DWLD [11] (Int)
ldx [%i2 + 64], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2

P5948: !LD [9] (Int)
lduw [%i1 + 512], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5949: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P5950: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P5951: !MEMBAR (Int)
membar #StoreLoad

P5952: !ST [15] (maybe <- 0x85017e) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P5953: !CASX [5] (maybe <- 0x85017f) (Int)
add %i1, 72, %l7
ldx [%l7], %o4
mov %o4, %l3
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
add  %l4, 1, %l4
casx [%l7], %l3, %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P5954: !REPLACEMENT [10] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5955: !LD [7] (Int)
lduw [%i1 + 84], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5956: !DWST [11] (maybe <- 0x48a00220) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i2 + 64]

P5957: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P5958: !LD [15] (FP)
ld [%i3 + 192], %f8
! 1 addresses covered

P5959: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P5960: !REPLACEMENT [6] (Int)
sethi %hi(0x50), %l6
or %l6, %lo(0x50),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5961: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P5962: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5963: !DWST [15] (maybe <- 0x850180) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5964: !DWST [15] (maybe <- 0x850181) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P5965: !DWST [11] (maybe <- 0x850182) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P5966: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P5967: !ST [3] (maybe <- 0x850183) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P5968: !LD [8] (Int)
lduw [%i1 + 256], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5969: !CASX [11] (maybe <- 0x850184) (Int)
add %i2, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P5970: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5971: !CASX [10] (maybe <- 0x850185) (Int)
add %i2, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P5972: !ST [12] (maybe <- 0x850186) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P5973: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P5974: !ST [12] (maybe <- 0x850187) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P5975: !ST [4] (maybe <- 0x48a00240) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 64 ]

P5976: !DWLD [12] (FP)
! case fp 
ldd  [%i3 + 0], %f18
! 1 addresses covered
fmovs %f18, %f9

P5977: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P5978: !DWST [12] (maybe <- 0x850188) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 0 ] 
add   %l4, 1, %l4

P5979: !DWST [13] (maybe <- 0x850189) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P5980: !CAS [7] (maybe <- 0x85018a) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P5981: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5982: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0

P5983: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P5984: !DWST [7] (maybe <- 0x85018b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P5985: !DWST [0] (maybe <- 0x85018d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P5986: !DWST [3] (maybe <- 0x85018f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P5987: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P5988: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P5989: !LD [7] (Int)
lduw [%i1 + 84], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P5990: !CAS [9] (maybe <- 0x850190) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o1(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o1, %o1
mov %l4, %o2
cas [%l7], %l3, %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2
add   %l4, 1, %l4

P5991: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P5992: !DWLD [2] (Int)
ldx [%i0 + 8], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P5993: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P5994: !LD [10] (Int)
lduw [%i2 + 32], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P5995: !SWAP [12] (maybe <- 0x850191) (Int)
mov %l4, %o4
swap  [%i3 + 0], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P5996: !MEMBAR (Int)
membar #StoreLoad

P5997: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P5998: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P5999: !CASX [3] (maybe <- 0x850192) (Int)
add %i0, 32, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P6000: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6001: !DWST [3] (maybe <- 0x850193) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P6002: !DWST [0] (maybe <- 0x48a00260) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
! 1 th moved, current_fp_src=21 
fmovs  %f16, %f21
fadds  %f16, %f17, %f16
std %f20, [%i0 + 0]

P6003: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P6004: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P6005: !CASX [12] (maybe <- 0x850194) (Int)
add %i3, 0, %l7
ldx [%l7], %o2
mov %o2, %l3
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)
sllx %l4, 32, %o3
add  %l4, 1, %l4
casx [%l7], %l3, %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)

P6006: !SWAP [15] (maybe <- 0x850195) (Int)
mov %l4, %o4
swap  [%i3 + 192], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P6007: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P6008: !ST [12] (maybe <- 0x850196) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P6009: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6010: !DWLD [11] (Int)
ldx [%i2 + 64], %o0
! move %o0(upper) -> %o0(upper)

P6011: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l6, 32, %l7
or %l7, %o0, %o0

P6012: !ST [6] (maybe <- 0x850197) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P6013: !DWLD [10] (Int)
ldx [%i2 + 32], %o1
! move %o1(upper) -> %o1(upper)

P6014: !CASX [10] (maybe <- 0x850198) (Int)
add %i2, 32, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P6015: !ST [13] (maybe <- 0x850199) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P6016: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P6017: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P6018: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P6019: !LD [9] (Int)
lduw [%i1 + 512], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P6020: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P6021: !DWST [8] (maybe <- 0x85019a) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P6022: !SWAP [0] (maybe <- 0x85019b) (Int)
mov %l4, %l6
swap  [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P6023: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P6024: !DWST [5] (maybe <- 0x85019c) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P6025: !DWLD [6] (Int)
ldx [%i1 + 80], %o0
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)

P6026: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6027: !LD [1] (FP)
ld [%i0 + 4], %f10
! 1 addresses covered

P6028: !REPLACEMENT [9] (Int)
sethi %hi(0x200), %l6
or %l6, %lo(0x200),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6029: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6030: !ST [7] (maybe <- 0x85019d) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P6031: !DWST [15] (maybe <- 0x85019e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P6032: !ST [3] (maybe <- 0x85019f) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P6033: !DWLD [14] (Int)
ldx [%i3 + 128], %o1
! move %o1(upper) -> %o1(upper)

P6034: !MEMBAR (Int)
membar #StoreLoad

P6035: !ST [9] (maybe <- 0x8501a0) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P6036: !DWST [5] (maybe <- 0x8501a1) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P6037: !DWST [1] (maybe <- 0x8501a2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P6038: !SWAP [5] (maybe <- 0x8501a4) (Int)
mov %l4, %l6
swap  [%i1 + 76], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P6039: !ST [10] (maybe <- 0x8501a5) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P6040: !CAS [4] (maybe <- 0x8501a6) (Int)
add %i0, 64, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P6041: !ST [11] (maybe <- 0x8501a7) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P6042: !LD [0] (Int)
lduw [%i0 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P6043: !ST [13] (maybe <- 0x8501a8) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P6044: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6045: !LD [3] (Int)
lduw [%i0 + 32], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P6046: !CAS [9] (maybe <- 0x8501a9) (Int)
add %i1, 512, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P6047: !LD [2] (Int)
lduw [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P6048: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P6049: !CASX [4] (maybe <- 0x8501aa) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P6050: !CAS [1] (maybe <- 0x8501ab) (Int)
add %i0, 4, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P6051: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P6052: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P6053: !MEMBAR (Int)
membar #StoreLoad

P6054: !DWLD [2] (Int)
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P6055: !ST [10] (maybe <- 0x8501ac) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P6056: !DWST [6] (maybe <- 0x8501ad) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P6057: !ST [0] (maybe <- 0x48a002a0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P6058: !ST [9] (maybe <- 0x8501af) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P6059: !ST [9] (maybe <- 0x8501b0) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P6060: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P6061: !DWST [8] (maybe <- 0x8501b1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P6062: !DWST [4] (maybe <- 0x8501b2) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P6063: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P6064: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P6065: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P6066: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P6067: !ST [13] (maybe <- 0x8501b3) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P6068: !DWST [5] (maybe <- 0x8501b4) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P6069: !DWST [0] (maybe <- 0x8501b5) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P6070: !SWAP [4] (maybe <- 0x8501b7) (Int)
mov %l4, %o1
swap  [%i0 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P6071: !ST [3] (maybe <- 0x8501b8) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P6072: !LD [9] (Int)
lduw [%i1 + 512], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P6073: !LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P6074: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6075: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P6076: !ST [7] (maybe <- 0x8501b9) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P6077: !DWST [15] (maybe <- 0x8501ba) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 192 ] 
add   %l4, 1, %l4

P6078: !DWST [3] (maybe <- 0x8501bb) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P6079: !ST [10] (maybe <- 0x8501bc) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P6080: !ST [4] (maybe <- 0x8501bd) (Int)
stw   %l4, [%i0 + 64 ]
add   %l4, 1, %l4

P6081: !CAS [8] (maybe <- 0x8501be) (Int)
add %i1, 256, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P6082: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P6083: !REPLACEMENT [5] (Int)
sethi %hi(0x4c), %l6
or %l6, %lo(0x4c),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6084: !DWST [3] (maybe <- 0x8501bf) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P6085: !CAS [15] (maybe <- 0x8501c0) (Int)
add %i3, 192, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P6086: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6087: !NOP (Int)
nop

P6088: !DWST [14] (maybe <- 0x8501c1) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P6089: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P6090: !NOP (Int)
nop

P6091: !SWAP [0] (maybe <- 0x8501c2) (Int)
mov %l4, %l6
swap  [%i0 + 0], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P6092: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P6093: !SWAP [2] (maybe <- 0x8501c3) (Int)
mov %l4, %o0
swap  [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P6094: !DWST [5] (maybe <- 0x8501c4) (Int)
mov %l4, %l6 
stx %l6, [%i1 + 72 ] 
add   %l4, 1, %l4

P6095: !ST [14] (maybe <- 0x48a002c0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i3 + 128 ]

P6096: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P6097: !MEMBAR (Int)
membar #StoreLoad

P6098: !MEMBAR (Int)
membar #StoreLoad

P6099: !ST [3] (maybe <- 0x8501c5) (Int)
stw   %l4, [%i0 + 32 ]
add   %l4, 1, %l4

P6100: !DWST [8] (maybe <- 0x8501c6) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 256 ] 
add   %l4, 1, %l4

P6101: !DWST [3] (maybe <- 0x8501c7) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P6102: !MEMBAR (Int)
membar #StoreLoad

P6103: !CASX [2] (maybe <- 0x8501c8) (Int)
add %i0, 8, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o1(lower)
srlx %l3, 32, %l6
or %l6, %o1, %o1
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P6104: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P6105: !CAS [12] (maybe <- 0x8501c9) (Int)
add %i3, 0, %l7
lduw [%l7], %o4
mov %o4, %l3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P6106: !CAS [9] (maybe <- 0x8501ca) (Int)
add %i1, 512, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P6107: !MEMBAR (Int)
membar #StoreLoad

P6108: !LD [0] (FP)
ld [%i0 + 0], %f11
! 1 addresses covered

P6109: !LD [1] (FP)
ld [%i0 + 4], %f12
! 1 addresses covered

P6110: !LD [2] (FP)
ld [%i0 + 12], %f13
! 1 addresses covered

P6111: !LD [3] (FP)
ld [%i0 + 32], %f14
! 1 addresses covered

P6112: !LD [4] (FP)
ld [%i0 + 64], %f15
! 1 addresses covered
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30
fmovd %f12, %f30
fmovd %f14, %f30

P6113: !LD [5] (FP)
ld [%i1 + 76], %f0
! 1 addresses covered

P6114: !LD [6] (FP)
ld [%i1 + 80], %f1
! 1 addresses covered

P6115: !LD [7] (FP)
ld [%i1 + 84], %f2
! 1 addresses covered

P6116: !LD [8] (FP)
ld [%i1 + 256], %f3
! 1 addresses covered

P6117: !LD [9] (FP)
ld [%i1 + 512], %f4
! 1 addresses covered

P6118: !LD [10] (FP)
ld [%i2 + 32], %f5
! 1 addresses covered

P6119: !LD [11] (FP)
ld [%i2 + 64], %f6
! 1 addresses covered

P6120: !LD [12] (FP)
ld [%i3 + 0], %f7
! 1 addresses covered

P6121: !LD [13] (FP)
ld [%i3 + 64], %f8
! 1 addresses covered

P6122: !LD [14] (FP)
ld [%i3 + 128], %f9
! 1 addresses covered

P6123: !LD [15] (FP)
ld [%i3 + 192], %f10
! 1 addresses covered
!---- flushing int results buffer----
mov %o0, %o5
!---- flushing fp results buffer, offset 0 ----
fmovd %f0, %f30
fmovd %f2, %f30
fmovd %f4, %f30
fmovd %f6, %f30
fmovd %f8, %f30
fmovd %f10, %f30

restore
retl
nop
!-----------------



func6:

! 1000 instruction sequence begins
save   %sp, -192, %sp

! Force %i0-%i3 to be 64-byte aligned
add %i0, 63, %i0
srlx %i0, 6, %i0
sllx %i0, 6, %i0

add %i1, 63, %i1
srlx %i1, 6, %i1
sllx %i1, 6, %i1

add %i2, 63, %i2
srlx %i2, 6, %i2
sllx %i2, 6, %i2

add %i3, 63, %i3
srlx %i3, 6, %i3
sllx %i3, 6, %i3

add %i4, 63, %i4
srlx %i4, 6, %i4
sllx %i4, 6, %i4

add %i5, 63, %i5
srlx %i5, 6, %i5
sllx %i5, 6, %i5

mov   %i4, %l1
add   %i5, 1408, %l5

! Initialize %o7, the pointer to integer load results area
sethi %hi(0x80000), %o7
or    %o7, %lo(0x80000), %o7
addx  %o7, %l1, %o7 

! Initializing %f0-%f62 to 0xdeadbee0deadbee1
sethi %hi(0xdeadbee0), %l7
or    %l7, %lo(0xdeadbee0), %l7
stw   %l7, [%l5]
sethi %hi(0xdeadbee1), %l7
or    %l7, %lo(0xdeadbee1), %l7
stw   %l7, [%l5+4]
ldd [%l5], %f0
ldd [%l5], %f2
ldd [%l5], %f4
ldd [%l5], %f6
ldd [%l5], %f8
ldd [%l5], %f10
ldd [%l5], %f12
ldd [%l5], %f14
ldd [%l5], %f16
ldd [%l5], %f18
ldd [%l5], %f20
ldd [%l5], %f22
ldd [%l5], %f24
ldd [%l5], %f26
ldd [%l5], %f28
ldd [%l5], %f30
ldd [%l5], %f32
ldd [%l5], %f34
ldd [%l5], %f36
ldd [%l5], %f38
ldd [%l5], %f40
ldd [%l5], %f42
ldd [%l5], %f44
ldd [%l5], %f46
ldd [%l5], %f48
ldd [%l5], %f50
ldd [%l5], %f52
ldd [%l5], %f54
ldd [%l5], %f56
ldd [%l5], %f58
ldd [%l5], %f60
ldd [%l5], %f62

! Initializing int results buffer registers: %o0 %o1 %o2 %o3 %o4 
mov %g0, %o0
mov %g0, %o1
mov %g0, %o2
mov %g0, %o3
mov %g0, %o4

! Signature for extract_loads
sethi %hi(0x06deade1), %l7
or    %l7, %lo(0x06deade1), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize integer counter 
sethi %hi(0x860001), %l4
or    %l4, %lo(0x860001), %l4

! Initialize FP counter 
sethi %hi(0x48bfff60), %l7
or    %l7, %lo(0x48bfff60), %l7
stw %l7, [%l5] 
ld [%l5], %f16

! Initialize FP counter increment value 
sethi %hi(0x3f800000), %l7
or    %l7, %lo(0x3f800000), %l7
stw %l7, [%l5] 
ld [%l5], %f17 

P6124: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P6125: !CASX [9] (maybe <- 0x860001) (Int)
add %i1, 512, %l7
ldx [%l7], %o0
mov %o0, %l3
! move %o0(upper) -> %o0(upper)
! move %o0(lower) -> %o0(lower)
sllx %l4, 32, %o1
add  %l4, 1, %l4
casx [%l7], %l3, %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P6126: !DWLD [13] (FP)
! case fp 
ldd  [%i3 + 64], %f0
! 1 addresses covered

P6127: !MEMBAR (Int)
membar #StoreLoad

P6128: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P6129: !ST [8] (maybe <- 0x860002) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P6130: !LD [14] (Int)
lduw [%i3 + 128], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P6131: !ST [2] (maybe <- 0x860003) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P6132: !DWLD [7] (FP)
! case fp 
ldd  [%i1 + 80], %f18
! 2 addresses covered
fmovs %f18, %f1
fmovs %f19, %f2

P6133: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6134: !DWST [12] (maybe <- 0x48bfff60) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 0]

P6135: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P6136: !DWST [11] (maybe <- 0x860004) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P6137: !MEMBAR (Int)
membar #StoreLoad

P6138: !SWAP [3] (maybe <- 0x860005) (Int)
mov %l4, %o3
swap  [%i0 + 32], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P6139: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P6140: !ST [6] (maybe <- 0x860006) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P6141: !CAS [6] (maybe <- 0x860007) (Int)
add %i1, 80, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P6142: !MEMBAR (Int)
membar #StoreLoad

P6143: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P6144: !LD [12] (FP)
ld [%i3 + 0], %f3
! 1 addresses covered

P6145: !NOP (Int)
nop

P6146: !ST [6] (maybe <- 0x860008) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P6147: !CAS [9] (maybe <- 0x860009) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o0(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o0, %o0
mov %l4, %o1
cas [%l7], %l3, %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P6148: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P6149: !CASX [13] (maybe <- 0x86000a) (Int)
add %i3, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o2(lower)
srlx %l3, 32, %l6
or %l6, %o2, %o2
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P6150: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P6151: !ST [13] (maybe <- 0x86000b) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P6152: !REPLACEMENT [1] (Int)
sethi %hi(0x4), %l6
or %l6, %lo(0x4),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6153: !DWLD [14] (Int)
ldx [%i3 + 128], %o0
! move %o0(upper) -> %o0(upper)

P6154: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P6155: !DWLD [5] (Int)
ldx [%i1 + 72], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0

P6156: !PREFETCH [4] (Int)
prefetch [%i0 + 64], 1

P6157: !LD [12] (Int)
lduw [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P6158: !PREFETCH [9] (Int)
prefetch [%i1 + 512], 1

P6159: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P6160: !PREFETCH [6] (Int)
prefetch [%i1 + 80], 1

P6161: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P6162: !ST [2] (maybe <- 0x86000c) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P6163: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6164: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6165: !DWST [11] (maybe <- 0x86000d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P6166: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6167: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P6168: !DWST [4] (maybe <- 0x86000e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 64 ] 
add   %l4, 1, %l4

P6169: !DWST [13] (maybe <- 0x86000f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P6170: !DWLD [15] (Int)
ldx [%i3 + 192], %o2
! move %o2(upper) -> %o2(upper)

P6171: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
srlx %l6, 32, %l7
or %l7, %o2, %o2
! move %l6(lower) -> %o3(upper)
sllx %l6, 32, %o3

P6172: !MEMBAR (Int)
membar #StoreLoad

P6173: !PREFETCH [2] (Int)
prefetch [%i0 + 12], 1

P6174: !ST [5] (maybe <- 0x860010) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P6175: !ST [8] (maybe <- 0x48bfff80) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i1 + 256 ]

P6176: !ST [0] (maybe <- 0x48bfffa0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 0 ]

P6177: !LD [5] (Int)
lduw [%i1 + 76], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P6178: !SWAP [1] (maybe <- 0x860011) (Int)
mov %l4, %o4
swap  [%i0 + 4], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P6179: !PREFETCH [13] (Int)
prefetch [%i3 + 64], 1

P6180: !SWAP [14] (maybe <- 0x860012) (Int)
mov %l4, %l6
swap  [%i3 + 128], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P6181: !ST [5] (maybe <- 0x860013) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P6182: !LD [8] (Int)
lduw [%i1 + 256], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P6183: !CASX [0] (maybe <- 0x860014) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l3
or %l3, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P6184: !DWLD [9] (FP)
! case fp 
ldd  [%i1 + 512], %f4
! 1 addresses covered

P6185: !DWLD [3] (Int)
ldx [%i0 + 32], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P6186: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6187: !CASX [12] (maybe <- 0x860016) (Int)
add %i3, 0, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P6188: !ST [5] (maybe <- 0x860017) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P6189: !DWST [10] (maybe <- 0x860018) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P6190: !DWLD [8] (Int)
ldx [%i1 + 256], %o0
! move %o0(upper) -> %o0(upper)

P6191: !PREFETCH [1] (Int)
prefetch [%i0 + 4], 1

P6192: !ST [8] (maybe <- 0x860019) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P6193: !LD [8] (Int)
lduw [%i1 + 256], %l6
! move %l6(lower) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
or %l6, %o0, %o0

P6194: !ST [8] (maybe <- 0x86001a) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P6195: !NOP (Int)
nop

P6196: !CASX [11] (maybe <- 0x86001b) (Int)
add %i2, 64, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P6197: !CAS [2] (maybe <- 0x86001c) (Int)
add %i0, 12, %l7
lduw [%l7], %o3
mov %o3, %l3
! move %l3(lower) -> %o3(upper)
sllx %l3, 32, %o3
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P6198: !DWST [1] (maybe <- 0x86001d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P6199: !NOP (Int)
nop

P6200: !MEMBAR (Int)
membar #StoreLoad

P6201: !DWLD [5] (Int)
ldx [%i1 + 72], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P6202: !DWST [9] (maybe <- 0x86001f) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P6203: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o4(lower)
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P6204: !SWAP [5] (maybe <- 0x860020) (Int)
mov %l4, %o0
swap  [%i1 + 76], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P6205: !ST [13] (maybe <- 0x860021) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P6206: !DWLD [7] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P6207: !ST [12] (maybe <- 0x860022) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P6208: !SWAP [13] (maybe <- 0x860023) (Int)
mov %l4, %l6
swap  [%i3 + 64], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P6209: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P6210: !LD [11] (Int)
lduw [%i2 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P6211: !SWAP [5] (maybe <- 0x860024) (Int)
mov %l4, %l6
swap  [%i1 + 76], %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P6212: !ST [2] (maybe <- 0x860025) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P6213: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P6214: !LD [6] (Int)
lduw [%i1 + 80], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P6215: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6216: !REPLACEMENT [12] (Int)
sethi %hi(0x0), %l6
or %l6, %lo(0x0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6217: !CAS [3] (maybe <- 0x860026) (Int)
add %i0, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o3(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o3, %o3
mov %l4, %o4
cas [%l7], %l3, %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P6218: !PREFETCH [14] (Int)
prefetch [%i3 + 128], 1

P6219: !CAS [12] (maybe <- 0x860027) (Int)
add %i3, 0, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P6220: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P6221: !LD [14] (FP)
ld [%i3 + 128], %f5
! 1 addresses covered

P6222: !ST [11] (maybe <- 0x860028) (Int)
stw   %l4, [%i2 + 64 ]
add   %l4, 1, %l4

P6223: !CASX [4] (maybe <- 0x860029) (Int)
add %i0, 64, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P6224: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P6225: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P6226: !SWAP [9] (maybe <- 0x86002a) (Int)
mov %l4, %o3
swap  [%i1 + 512], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P6227: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P6228: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6229: !MEMBAR (Int)
membar #StoreLoad

P6230: !DWLD [12] (Int)
ldx [%i3 + 0], %o4
! move %o4(upper) -> %o4(upper)

P6231: !DWLD [4] (FP)
! case fp 
ldd  [%i0 + 64], %f6
! 1 addresses covered

P6232: !DWST [10] (maybe <- 0x86002b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P6233: !REPLACEMENT [15] (Int)
sethi %hi(0xc0), %l6
or %l6, %lo(0xc0),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6234: !CAS [10] (maybe <- 0x86002c) (Int)
add %i2, 32, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
srlx %o4, 32, %o4
sllx %o4, 32, %o4
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P6235: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P6236: !NOP (Int)
nop

P6237: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P6238: !SWAP [14] (maybe <- 0x86002d) (Int)
mov %l4, %l6
swap  [%i3 + 128], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P6239: !REPLACEMENT [4] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6240: !SWAP [6] (maybe <- 0x86002e) (Int)
mov %l4, %o1
swap  [%i1 + 80], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P6241: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1

P6242: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P6243: !DWLD [4] (Int)
ldx [%i0 + 64], %o2
! move %o2(upper) -> %o2(upper)

P6244: !LD [15] (Int)
lduw [%i3 + 192], %l6
! move %l6(lower) -> %o2(lower)
srlx %o2, 32, %o2
sllx %o2, 32, %o2
or %l6, %o2, %o2

P6245: !LD [5] (FP)
ld [%i1 + 76], %f7
! 1 addresses covered

P6246: !MEMBAR (Int)
membar #StoreLoad

P6247: !ST [10] (maybe <- 0x86002f) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P6248: !SWAP [13] (maybe <- 0x860030) (Int)
mov %l4, %o3
swap  [%i3 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P6249: !DWLD [2] (Int)
ldx [%i0 + 8], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3

P6250: !SWAP [6] (maybe <- 0x860031) (Int)
mov %l4, %o4
swap  [%i1 + 80], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4
add   %l4, 1, %l4

P6251: !CAS [9] (maybe <- 0x860032) (Int)
add %i1, 512, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P6252: !DWST [14] (maybe <- 0x860033) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 128 ] 
add   %l4, 1, %l4

P6253: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P6254: !DWLD [7] (Int)
ldx [%i1 + 80], %o1
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)

P6255: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P6256: !LD [4] (Int)
lduw [%i0 + 64], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P6257: !MEMBAR (Int)
membar #StoreLoad

P6258: !DWLD [9] (Int)
ldx [%i1 + 512], %l6
! move %l6(upper) -> %o2(lower)
srlx %l6, 32, %l7
or %l7, %o2, %o2

P6259: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6260: !LD [0] (Int)
lduw [%i0 + 0], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P6261: !SWAP [12] (maybe <- 0x860034) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P6262: !DWST [13] (maybe <- 0x860035) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P6263: !DWST [11] (maybe <- 0x860036) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 64 ] 
add   %l4, 1, %l4

P6264: !DWST [3] (maybe <- 0x860037) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P6265: !DWLD [6] (Int)
ldx [%i1 + 80], %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P6266: !DWST [0] (maybe <- 0x860038) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i0 + 0 ] 
add   %l4, 1, %l4

P6267: !SWAP [2] (maybe <- 0x86003a) (Int)
mov %l4, %o0
swap  [%i0 + 12], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P6268: !SWAP [8] (maybe <- 0x86003b) (Int)
mov %l4, %l6
swap  [%i1 + 256], %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P6269: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P6270: !LD [4] (Int)
lduw [%i0 + 64], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1

P6271: !ST [1] (maybe <- 0x48bfffc0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i0 + 4 ]

P6272: !ST [9] (maybe <- 0x86003c) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P6273: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P6274: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6275: !LD [7] (Int)
lduw [%i1 + 84], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P6276: !DWST [3] (maybe <- 0x86003d) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i0 + 32 ] 
add   %l4, 1, %l4

P6277: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6278: !DWST [9] (maybe <- 0x86003e) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P6279: !CASX [1] (maybe <- 0x86003f) (Int)
add %i0, 0, %l7
ldx [%l7], %o3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
mov %o3, %l3
sllx %l4, 32, %o4
add  %l4, 1, %l4
or   %l4, %o4, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P6280: !CAS [6] (maybe <- 0x860041) (Int)
add %i1, 80, %l7
lduw [%l7], %o0
mov %o0, %l3
! move %l3(lower) -> %o0(upper)
sllx %l3, 32, %o0
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o0(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o0, %o0
add   %l4, 1, %l4

P6281: !CASX [3] (maybe <- 0x860042) (Int)
add %i0, 32, %l7
ldx [%l7], %o1
mov %o1, %l3
! move %o1(upper) -> %o1(upper)
! move %o1(lower) -> %o1(lower)
sllx %l4, 32, %o2
add  %l4, 1, %l4
casx [%l7], %l3, %o2
! move %o2(upper) -> %o2(upper)
! move %o2(lower) -> %o2(lower)

P6282: !SWAP [4] (maybe <- 0x860043) (Int)
mov %l4, %o3
swap  [%i0 + 64], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P6283: !LD [2] (Int)
lduw [%i0 + 12], %l6
! move %l6(lower) -> %o3(lower)
or %l6, %o3, %o3

P6284: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P6285: !LD [5] (Int)
lduw [%i1 + 76], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P6286: !SWAP [8] (maybe <- 0x860044) (Int)
mov %l4, %l6
swap  [%i1 + 256], %l6
! move %l6(lower) -> %o4(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
add   %l4, 1, %l4

P6287: !DWLD [2] (Int)
ldx [%i0 + 8], %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0

P6288: !DWLD [10] (Int)
ldx [%i2 + 32], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0

P6289: !ST [8] (maybe <- 0x860045) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P6290: !DWLD [14] (Int)
ldx [%i3 + 128], %o1
! move %o1(upper) -> %o1(upper)

P6291: !NOP (Int)
nop

P6292: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o1(lower)
srlx %o1, 32, %o1
sllx %o1, 32, %o1
or %l6, %o1, %o1

P6293: !DWST [13] (maybe <- 0x860046) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i3 + 64 ] 
add   %l4, 1, %l4

P6294: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6295: !PREFETCH [8] (Int)
prefetch [%i1 + 256], 1

P6296: !DWST [9] (maybe <- 0x860047) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i1 + 512 ] 
add   %l4, 1, %l4

P6297: !PREFETCH [12] (Int)
prefetch [%i3 + 0], 1

P6298: !ST [11] (maybe <- 0x48bfffe0) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
st   %f20, [%i2 + 64 ]

P6299: !LD [3] (Int)
lduw [%i0 + 32], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P6300: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P6301: !DWST [10] (maybe <- 0x860048) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
stx %l6, [%i2 + 32 ] 
add   %l4, 1, %l4

P6302: !DWLD [14] (Int)
ldx [%i3 + 128], %o3
! move %o3(upper) -> %o3(upper)

P6303: !CASX [5] (maybe <- 0x860049) (Int)
add %i1, 72, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
mov %l4, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P6304: !LD [13] (Int)
lduw [%i3 + 64], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P6305: !SWAP [12] (maybe <- 0x86004a) (Int)
mov %l4, %o1
swap  [%i3 + 0], %o1
! move %o1(lower) -> %o1(upper)
sllx %o1, 32, %o1
add   %l4, 1, %l4

P6306: !DWST [6] (maybe <- 0x86004b) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P6307: !SWAP [9] (maybe <- 0x86004d) (Int)
mov %l4, %l6
swap  [%i1 + 512], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P6308: !ST [8] (maybe <- 0x86004e) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P6309: !MEMBAR (Int)
membar #StoreLoad

P6310: !PREFETCH [10] (Int)
prefetch [%i2 + 32], 1

P6311: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6312: !CAS [12] (maybe <- 0x86004f) (Int)
add %i3, 0, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P6313: !REPLACEMENT [3] (Int)
sethi %hi(0x20), %l6
or %l6, %lo(0x20),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6314: !DWLD [12] (Int)
ldx [%i3 + 0], %o3
! move %o3(upper) -> %o3(upper)

P6315: !CASX [9] (maybe <- 0x860050) (Int)
add %i1, 512, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o3(lower)
srlx %o3, 32, %o3
sllx %o3, 32, %o3
srlx %l3, 32, %l6
or %l6, %o3, %o3
! move %l3(lower) -> %o4(upper)
sllx %l3, 32, %o4
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l7
or %l7, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0

P6316: !DWLD [1] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P6317: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P6318: !PREFETCH [5] (Int)
prefetch [%i1 + 76], 1

P6319: !ST [12] (maybe <- 0x860051) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P6320: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o1(lower)
or %l6, %o1, %o1

P6321: !LD [1] (Int)
lduw [%i0 + 4], %o2
! move %o2(lower) -> %o2(upper)
sllx %o2, 32, %o2

P6322: !ST [5] (maybe <- 0x860052) (Int)
stw   %l4, [%i1 + 76 ]
add   %l4, 1, %l4

P6323: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P6324: !LD [7] (FP)
ld [%i1 + 84], %f8
! 1 addresses covered

P6325: !LD [6] (Int)
lduw [%i1 + 80], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P6326: !SWAP [7] (maybe <- 0x860053) (Int)
mov %l4, %o3
swap  [%i1 + 84], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P6327: !DWLD [14] (Int)
ldx [%i3 + 128], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3

P6328: !ST [2] (maybe <- 0x860054) (Int)
stw   %l4, [%i0 + 12 ]
add   %l4, 1, %l4

P6329: !DWST [15] (maybe <- 0x48c00000) (FP)
! 0 th moved, current_fp_src=20 
fmovs  %f16, %f20
fadds  %f16, %f17, %f16
std %f20, [%i3 + 192]

P6330: !PREFETCH [3] (Int)
prefetch [%i0 + 32], 1

P6331: !PREFETCH [11] (Int)
prefetch [%i2 + 64], 1

P6332: !ST [6] (maybe <- 0x860055) (Int)
stw   %l4, [%i1 + 80 ]
add   %l4, 1, %l4

P6333: !LD [6] (Int)
lduw [%i1 + 80], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P6334: !PREFETCH [7] (Int)
prefetch [%i1 + 84], 1

P6335: !CASX [0] (maybe <- 0x860056) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P6336: !DWLD [6] (Int)
ldx [%i1 + 80], %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P6337: !CAS [2] (maybe <- 0x860058) (Int)
add %i0, 12, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o2(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o2, %o2
mov %l4, %o3
cas [%l7], %l3, %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3
add   %l4, 1, %l4

P6338: !REPLACEMENT [7] (Int)
sethi %hi(0x54), %l6
or %l6, %lo(0x54),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6339: !ST [13] (maybe <- 0x860059) (Int)
stw   %l4, [%i3 + 64 ]
add   %l4, 1, %l4

P6340: !SWAP [12] (maybe <- 0x86005a) (Int)
mov %l4, %l6
swap  [%i3 + 0], %l6
! move %l6(lower) -> %o3(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o3, %o3
add   %l4, 1, %l4

P6341: !MEMBAR (Int)
membar #StoreLoad

P6342: !ST [7] (maybe <- 0x86005b) (Int)
stw   %l4, [%i1 + 84 ]
add   %l4, 1, %l4

P6343: !DWST [2] (maybe <- 0x86005c) (Int)
mov %l4, %l6 
stx %l6, [%i0 + 8 ] 
add   %l4, 1, %l4

P6344: !ST [10] (maybe <- 0x86005d) (Int)
stw   %l4, [%i2 + 32 ]
add   %l4, 1, %l4

P6345: !LD [11] (Int)
lduw [%i2 + 64], %o4
! move %o4(lower) -> %o4(upper)
sllx %o4, 32, %o4

P6346: !CASX [0] (maybe <- 0x86005e) (Int)
add %i0, 0, %l7
ldx [%l7], %l6
! move %l6(upper) -> %o4(lower)
srlx %l6, 32, %l3
or %l3, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
! move %l6(lower) -> %o0(upper)
sllx %l6, 32, %o0
mov %l6, %l3
sllx %l4, 32, %l6
add  %l4, 1, %l4
or   %l4, %l6, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o0(lower)
srlx %l6, 32, %l7
or %l7, %o0, %o0
! move %l6(lower) -> %o1(upper)
sllx %l6, 32, %o1

P6347: !SWAP [4] (maybe <- 0x860060) (Int)
mov %l4, %l6
swap  [%i0 + 64], %l6
! move %l6(lower) -> %o1(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o1, %o1
add   %l4, 1, %l4

P6348: !ST [1] (maybe <- 0x860061) (Int)
stw   %l4, [%i0 + 4 ]
add   %l4, 1, %l4

P6349: !CAS [12] (maybe <- 0x860062) (Int)
add %i3, 0, %l7
lduw [%l7], %o2
mov %o2, %l3
! move %l3(lower) -> %o2(upper)
sllx %l3, 32, %o2
mov %l4, %l6
cas [%l7], %l3, %l6
! move %l6(lower) -> %o2(lower)
sllx %l6, 32, %l7
srlx %l7, 32, %l7
or %l7, %o2, %o2
add   %l4, 1, %l4

P6350: !ST [8] (maybe <- 0x860063) (Int)
stw   %l4, [%i1 + 256 ]
add   %l4, 1, %l4

P6351: !DWST [6] (maybe <- 0x860064) (Int)
mov %l4, %l6 
sllx %l6, 32, %l6 
add   %l4, 1, %l4
mov %l4, %l7 
or %l6, %l7, %l6
stx %l6, [%i1 + 80 ] 
add   %l4, 1, %l4

P6352: !CASX [3] (maybe <- 0x860066) (Int)
add %i0, 32, %l7
ldx [%l7], %o3
mov %o3, %l3
! move %o3(upper) -> %o3(upper)
! move %o3(lower) -> %o3(lower)
sllx %l4, 32, %o4
add  %l4, 1, %l4
casx [%l7], %l3, %o4
! move %o4(upper) -> %o4(upper)
! move %o4(lower) -> %o4(lower)
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5

P6353: !REPLACEMENT [13] (Int)
sethi %hi(0x40), %l6
or %l6, %lo(0x40),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6354: !DWLD [12] (Int)
ldx [%i3 + 0], %o0
! move %o0(upper) -> %o0(upper)

P6355: !ST [15] (maybe <- 0x860067) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P6356: !CASX [15] (maybe <- 0x860068) (Int)
add %i3, 192, %l7
ldx [%l7], %l6
mov %l6, %l3
! move %l3(upper) -> %o0(lower)
srlx %o0, 32, %o0
sllx %o0, 32, %o0
srlx %l3, 32, %l6
or %l6, %o0, %o0
! move %l3(lower) -> %o1(upper)
sllx %l3, 32, %o1
sllx %l4, 32, %l6
add  %l4, 1, %l4
casx [%l7], %l3, %l6
! move %l6(upper) -> %o1(lower)
srlx %l6, 32, %l7
or %l7, %o1, %o1
! move %l6(lower) -> %o2(upper)
sllx %l6, 32, %o2

P6357: !REPLACEMENT [14] (Int)
sethi %hi(0x80), %l6
or %l6, %lo(0x80),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6358: !REPLACEMENT [8] (Int)
sethi %hi(0x100), %l6
or %l6, %lo(0x100),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]

P6359: !PREFETCH [15] (Int)
prefetch [%i3 + 192], 1

P6360: !DWLD [8] (FP)
! case fp 
ldd  [%i1 + 256], %f18
! 1 addresses covered
fmovs %f18, %f9

P6361: !LD [14] (Int)
lduw [%i3 + 128], %l6
! move %l6(lower) -> %o2(lower)
or %l6, %o2, %o2

P6362: !ST [9] (maybe <- 0x860069) (Int)
stw   %l4, [%i1 + 512 ]
add   %l4, 1, %l4

P6363: !ST [15] (maybe <- 0x86006a) (Int)
stw   %l4, [%i3 + 192 ]
add   %l4, 1, %l4

P6364: !LD [15] (Int)
lduw [%i3 + 192], %o3
! move %o3(lower) -> %o3(upper)
sllx %o3, 32, %o3

P6365: !PREFETCH [0] (Int)
prefetch [%i0 + 0], 1

P6366: !ST [12] (maybe <- 0x86006b) (Int)
stw   %l4, [%i3 + 0 ]
add   %l4, 1, %l4

P6367: !DWLD [0] (Int)
ldx [%i0 + 0], %l6
! move %l6(upper) -> %o3(lower)
srlx %l6, 32, %l7
or %l7, %o3, %o3
! move %l6(lower) -> %o4(upper)
sllx %l6, 32, %o4

P6368: !CAS [7] (maybe <- 0x86006c) (Int)
add %i1, 84, %l7
lduw [%l7], %l6
mov %l6, %l3
! move %l3(lower) -> %o4(lower)
sllx %l3, 32, %l6
srlx %l6, 32, %l6
or %l6, %o4, %o4
!---- flushing int results buffer----
mov %o0, %o5
mov %o1, %o5
mov %o2, %o5
mov %o3, %o5
mov %o4, %o5
mov %l4, %o0
cas [%l7], %l3, %o0
! move %o0(lower) -> %o0(upper)
sllx %o0, 32, %o0
add   %l4, 1, %l4

P6369: !DWLD [1] (FP)
! case fp 
ldd  [%i0 + 0], %f10
! 2 addresses covered

P6370: !NOP (Int)
nop

P6371: !LD [1] (Int)
lduw [%i0 + 4], %l6
! move %l6(lower) -> %o0(lower)
or %l6, %o0, %o0

P6372: !REPLACEMENT [2] (Int)
sethi %hi(0xc), %l6
or %l6, %lo(0xc),  %l6
add %i3, %l6, %l3
sethi %hi(0x10000), %l6
or %l6, %lo(0x10000),  %l6
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]
add %l3, %l6, %l3
ld [%l3], %l7
st %l7, [%l3]



