// Modified by Princeton University on June 9th, 2015
/*
* ========== Copyright Header Begin ==========================================
* 
* OpenSPARC T1 Processor File: enable_traps.h
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

#define ENABLE_T0_Instruction_access_exception_0x08
#define ENABLE_T0_Instruction_access_error_0x0a		
#define ENABLE_T0_Illegal_instruction_0x10
#define ENABLE_T0_Privileged_opcode_0x11
#define ENABLE_T0_Unimplemented_LDD_0x12
#define ENABLE_T0_Unimplemented_STD_0x13
#define ENABLE_T0_Fp_disabled_0x20
#define ENABLE_T0_Fp_exception_ieee_754_0x21		
#define ENABLE_T0_Fp_exception_other_0x22		
#define ENABLE_T0_Tag_Overflow_0x23		
#define ENABLE_T0_Clean_Window_0x24
#define ENABLE_T0_Division_By_Zero_0x28		
#define ENABLE_T0_Data_Access_Exception_0x30		
#define ENABLE_T0_Data_access_error_0x32		
#define ENABLE_T0_Mem_Address_Not_Aligned_0x34
#define ENABLE_T0_Lddf_Mem_Address_Not_Aligned_0x35
#define ENABLE_T0_Stdf_Mem_Address_Not_Aligned_0x36
#define ENABLE_T0_Privileged_Action_0x37		
#define ENABLE_T0_Interrupt_Level_1_0x41		
#define ENABLE_T0_Interrupt_Level_2_0x42		
#define ENABLE_T0_Interrupt_Level_3_0x43		
#define ENABLE_T0_Interrupt_Level_4_0x44		
#define ENABLE_T0_Interrupt_Level_5_0x45		
#define ENABLE_T0_Interrupt_Level_6_0x46		
#define ENABLE_T0_Interrupt_Level_7_0x47		
#define ENABLE_T0_Interrupt_Level_8_0x48		
#define ENABLE_T0_Interrupt_Level_9_0x49		
#define ENABLE_T0_Interrupt_Level_10_0x4a		
#define ENABLE_T0_Interrupt_Level_11_0x4b		
#define ENABLE_T0_Interrupt_Level_12_0x4c		
#define ENABLE_T0_Interrupt_Level_13_0x4d		
#define ENABLE_T0_Interrupt_Level_14_0x4e		
#define ENABLE_T0_Interrupt_Level_15_0x4f		
#define ENABLE_T0_Reserved_0x62
#define ENABLE_T0_Corrected_ECC_error_0x63		
#define ENABLE_T0_fast_instr_access_MMU_miss_0x64
#define ENABLE_T0_fast_data_access_MMU_miss_0x68
#define ENABLE_T0_data_access_protection_0x6c		
#define ENABLE_T0_Window_Spill_0_Normal_0x80		
#define ENABLE_T0_Window_Spill_1_Normal_0x84		
#define ENABLE_T0_Window_Spill_2_Normal_0x88		
#define ENABLE_T0_Window_Spill_3_Normal_0x8c		
#define ENABLE_T0_Window_Spill_4_Normal_0x90
#define ENABLE_T0_Window_Spill_5_Normal_0x94
#define ENABLE_T0_Window_Spill_6_Normal_0x98
#define ENABLE_T0_Window_Spill_7_Normal_0x9c
#define ENABLE_T0_Window_Spill_0_Other_0xa0		
#define ENABLE_T0_Window_Spill_1_Other_0xa4		
#define ENABLE_T0_Window_Spill_2_Other_0xa8		
#define ENABLE_T0_Window_Spill_3_Other_0xac
#define ENABLE_T0_Window_Spill_4_Other_0xb0
#define ENABLE_T0_Window_Spill_5_Other_0xb4
#define ENABLE_T0_Window_Spill_6_Other_0xb8
#define ENABLE_T0_Window_Spill_7_Other_0xbc
#define ENABLE_T0_Window_Fill_0_Normal_0xc0
#define ENABLE_T0_Window_Fill_1_Normal_0xc4
#define ENABLE_T0_Window_Fill_2_Normal_0xc8
#define ENABLE_T0_Window_Fill_3_Normal_0xcc
#define ENABLE_T0_Window_Fill_4_Normal_0xd0
#define ENABLE_T0_Window_Fill_5_Normal_0xd4
#define ENABLE_T0_Window_Fill_6_Normal_0xd8
#define ENABLE_T0_Window_Fill_7_Normal_0xdc
#define ENABLE_T0_Window_Fill_0_Other_0xe0
#define ENABLE_T0_Window_Fill_1_Other_0xe4
#define ENABLE_T0_Window_Fill_2_Other_0xe8
#define ENABLE_T0_Window_Fill_3_Other_0xec
#define ENABLE_T0_Window_Fill_4_Other_0xf0
#define ENABLE_T0_Window_Fill_5_Other_0xf4
#define ENABLE_T0_Window_Fill_6_Other_0xf8
#define ENABLE_T0_Window_Fill_7_Other_0xfc

#define ENABLE_T1_Instruction_access_exception_0x08
#define ENABLE_T1_Instruction_access_error_0x0a		
#define ENABLE_T1_Illegal_instruction_0x10
#define ENABLE_T1_Privileged_opcode_0x11
#define ENABLE_T1_Unimplemented_LDD_0x12
#define ENABLE_T1_Unimplemented_STD_0x13
#define ENABLE_T1_Fp_disabled_0x20
#define ENABLE_T1_Fp_exception_ieee_754_0x21		
#define ENABLE_T1_Fp_exception_other_0x22		
#define ENABLE_T1_Tag_Overflow_0x23		
#define ENABLE_T1_Clean_Window_0x24
#define ENABLE_T1_Division_By_Zero_0x28		
#define ENABLE_T1_Data_Access_Exception_0x30		
#define ENABLE_T1_Data_access_error_0x32		
#define ENABLE_T1_Mem_Address_Not_Aligned_0x34
#define ENABLE_T1_Lddf_Mem_Address_Not_Aligned_0x35
#define ENABLE_T1_Stdf_Mem_Address_Not_Aligned_0x36
#define ENABLE_T1_Privileged_Action_0x37		
#define ENABLE_T1_Interrupt_Level_1_0x41		
#define ENABLE_T1_Interrupt_Level_2_0x42		
#define ENABLE_T1_Interrupt_Level_3_0x43		
#define ENABLE_T1_Interrupt_Level_4_0x44		
#define ENABLE_T1_Interrupt_Level_5_0x45		
#define ENABLE_T1_Interrupt_Level_6_0x46		
#define ENABLE_T1_Interrupt_Level_7_0x47		
#define ENABLE_T1_Interrupt_Level_8_0x48		
#define ENABLE_T1_Interrupt_Level_9_0x49		
#define ENABLE_T1_Interrupt_Level_10_0x4a		
#define ENABLE_T1_Interrupt_Level_11_0x4b		
#define ENABLE_T1_Interrupt_Level_12_0x4c		
#define ENABLE_T1_Interrupt_Level_13_0x4d		
#define ENABLE_T1_Interrupt_Level_14_0x4e		
#define ENABLE_T1_Interrupt_Level_15_0x4f		
#define ENABLE_T1_Reserved_0x62
#define ENABLE_T1_Corrected_ECC_error_0x63		
#define ENABLE_T1_fast_instr_access_MMU_miss_0x64
#define ENABLE_T1_fast_data_access_MMU_miss_0x68
#define ENABLE_T1_data_access_protection_0x6c		
#define ENABLE_T1_Window_Spill_0_Normal_0x80		
#define ENABLE_T1_Window_Spill_1_Normal_0x84		
#define ENABLE_T1_Window_Spill_2_Normal_0x88		
#define ENABLE_T1_Window_Spill_3_Normal_0x8c		
#define ENABLE_T1_Window_Spill_4_Normal_0x90
#define ENABLE_T1_Window_Spill_5_Normal_0x94
#define ENABLE_T1_Window_Spill_6_Normal_0x98
#define ENABLE_T1_Window_Spill_7_Normal_0x9c
#define ENABLE_T1_Window_Spill_0_Other_0xa0		
#define ENABLE_T1_Window_Spill_1_Other_0xa4		
#define ENABLE_T1_Window_Spill_2_Other_0xa8		
#define ENABLE_T1_Window_Spill_3_Other_0xac
#define ENABLE_T1_Window_Spill_4_Other_0xb0
#define ENABLE_T1_Window_Spill_5_Other_0xb4
#define ENABLE_T1_Window_Spill_6_Other_0xb8
#define ENABLE_T1_Window_Spill_7_Other_0xbc
#define ENABLE_T1_Window_Fill_0_Normal_0xc0
#define ENABLE_T1_Window_Fill_1_Normal_0xc4
#define ENABLE_T1_Window_Fill_2_Normal_0xc8
#define ENABLE_T1_Window_Fill_3_Normal_0xcc
#define ENABLE_T1_Window_Fill_4_Normal_0xd0
#define ENABLE_T1_Window_Fill_5_Normal_0xd4
#define ENABLE_T1_Window_Fill_6_Normal_0xd8
#define ENABLE_T1_Window_Fill_7_Normal_0xdc
#define ENABLE_T1_Window_Fill_0_Other_0xe0
#define ENABLE_T1_Window_Fill_1_Other_0xe4
#define ENABLE_T1_Window_Fill_2_Other_0xe8
#define ENABLE_T1_Window_Fill_3_Other_0xec
#define ENABLE_T1_Window_Fill_4_Other_0xf0
#define ENABLE_T1_Window_Fill_5_Other_0xf4
#define ENABLE_T1_Window_Fill_6_Other_0xf8
#define ENABLE_T1_Window_Fill_7_Other_0xfc

#define ENABLE_HT0_Instruction_access_exception_0x08
#define ENABLE_HT0_Instruction_access_error_0x0a		
#define ENABLE_HT0_Illegal_instruction_0x10
#define ENABLE_HT0_Privileged_opcode_0x11
#define ENABLE_HT0_Unimplemented_LDD_0x12
#define ENABLE_HT0_Unimplemented_STD_0x13
#define ENABLE_HT0_Fp_disabled_0x20
#define ENABLE_HT0_Fp_exception_ieee_754_0x21		
#define ENABLE_HT0_Fp_exception_other_0x22		
#define ENABLE_HT0_HTag_Overflow_0x23		
#define ENABLE_HT0_Clean_Window_0x24
#define ENABLE_HT0_Division_By_Zero_0x28		
#define ENABLE_HT0_Data_Access_Exception_0x30		
#define ENABLE_HT0_Data_access_error_0x32		
#define ENABLE_HT0_Mem_Address_Not_Aligned_0x34
#define ENABLE_HT0_Lddf_Mem_Address_Not_Aligned_0x35
#define ENABLE_HT0_Stdf_Mem_Address_Not_Aligned_0x36
#define ENABLE_HT0_Privileged_Action_0x37		
#define ENABLE_HT0_Interrupt_Level_1_0x41		
#define ENABLE_HT0_Interrupt_Level_2_0x42		
#define ENABLE_HT0_Interrupt_Level_3_0x43		
#define ENABLE_HT0_Interrupt_Level_4_0x44		
#define ENABLE_HT0_Interrupt_Level_5_0x45		
#define ENABLE_HT0_Interrupt_Level_6_0x46		
#define ENABLE_HT0_Interrupt_Level_7_0x47		
#define ENABLE_HT0_Interrupt_Level_8_0x48		
#define ENABLE_HT0_Interrupt_Level_9_0x49		
#define ENABLE_HT0_Interrupt_Level_10_0x4a		
#define ENABLE_HT0_Interrupt_Level_11_0x4b		
#define ENABLE_HT0_Interrupt_Level_12_0x4c		
#define ENABLE_HT0_Interrupt_Level_13_0x4d		
#define ENABLE_HT0_Interrupt_Level_14_0x4e		
#define ENABLE_HT0_Interrupt_Level_15_0x4f		
#define ENABLE_HT0_Corrected_ECC_error_0x63		
#define ENABLE_HT0_fast_instr_access_MMU_miss_0x64
#define ENABLE_HT0_fast_data_access_MMU_miss_0x68
#define ENABLE_HT0_data_access_protection_0x6c
#define ENABLE_HT0_putchar_0x70	
#define ENABLE_HT0_Window_Spill_0_Normal_0x80		
#define ENABLE_HT0_Window_Spill_1_Normal_0x84		
#define ENABLE_HT0_Window_Spill_2_Normal_0x88		
#define ENABLE_HT0_Window_Spill_3_Normal_0x8c		
#define ENABLE_HT0_Window_Spill_4_Normal_0x90
#define ENABLE_HT0_Window_Spill_5_Normal_0x94
#define ENABLE_HT0_Window_Spill_6_Normal_0x98
#define ENABLE_HT0_Window_Spill_7_Normal_0x9c
#define ENABLE_HT0_Window_Spill_0_Other_0xa0		
#define ENABLE_HT0_Window_Spill_1_Other_0xa4		
#define ENABLE_HT0_Window_Spill_2_Other_0xa8		
#define ENABLE_HT0_Window_Spill_3_Other_0xac
#define ENABLE_HT0_Window_Spill_4_Other_0xb0
#define ENABLE_HT0_Window_Spill_5_Other_0xb4
#define ENABLE_HT0_Window_Spill_6_Other_0xb8
#define ENABLE_HT0_Window_Spill_7_Other_0xbc
#define ENABLE_HT0_Window_Fill_0_Normal_0xc0
#define ENABLE_HT0_Window_Fill_1_Normal_0xc4
#define ENABLE_HT0_Window_Fill_2_Normal_0xc8
#define ENABLE_HT0_Window_Fill_3_Normal_0xcc
#define ENABLE_HT0_Window_Fill_4_Normal_0xd0
#define ENABLE_HT0_Window_Fill_5_Normal_0xd4
#define ENABLE_HT0_Window_Fill_6_Normal_0xd8
#define ENABLE_HT0_Window_Fill_7_Normal_0xdc
#define ENABLE_HT0_Window_Fill_0_Other_0xe0
#define ENABLE_HT0_Window_Fill_1_Other_0xe4
#define ENABLE_HT0_Window_Fill_2_Other_0xe8
#define ENABLE_HT0_Window_Fill_3_Other_0xec
#define ENABLE_HT0_Window_Fill_4_Other_0xf0
#define ENABLE_HT0_Window_Fill_5_Other_0xf4
#define ENABLE_HT0_Window_Fill_6_Other_0xf8
#define ENABLE_HT0_Window_Fill_7_Other_0xfc


#define ENABLE_HT1_Instruction_access_exception_0x08
#define ENABLE_HT1_Instruction_access_error_0x0a		
#define ENABLE_HT1_Illegal_instruction_0x10
#define ENABLE_HT1_Privileged_opcode_0x11
#define ENABLE_HT1_Unimplemented_LDD_0x12
#define ENABLE_HT1_Unimplemented_STD_0x13
#define ENABLE_HT1_Fp_disabled_0x20
#define ENABLE_HT1_Fp_exception_ieee_754_0x21		
#define ENABLE_HT1_Fp_exception_other_0x22		
#define ENABLE_HT1_Tag_Overflow_0x23		
#define ENABLE_HT1_Clean_Window_0x24
#define ENABLE_HT1_Division_By_Zero_0x28		
#define ENABLE_HT1_Data_Access_Exception_0x30		
#define ENABLE_HT1_Data_access_error_0x32		
#define ENABLE_HT1_Mem_Address_Not_Aligned_0x34
#define ENABLE_HT1_Lddf_Mem_Address_Not_Aligned_0x35
#define ENABLE_HT1_Stdf_Mem_Address_Not_Aligned_0x36
#define ENABLE_HT1_Privileged_Action_0x37		
#define ENABLE_HT1_Interrupt_Level_1_0x41		
#define ENABLE_HT1_Interrupt_Level_2_0x42		
#define ENABLE_HT1_Interrupt_Level_3_0x43		
#define ENABLE_HT1_Interrupt_Level_4_0x44		
#define ENABLE_HT1_Interrupt_Level_5_0x45		
#define ENABLE_HT1_Interrupt_Level_6_0x46		
#define ENABLE_HT1_Interrupt_Level_7_0x47		
#define ENABLE_HT1_Interrupt_Level_8_0x48		
#define ENABLE_HT1_Interrupt_Level_9_0x49		
#define ENABLE_HT1_Interrupt_Level_10_0x4a		
#define ENABLE_HT1_Interrupt_Level_11_0x4b		
#define ENABLE_HT1_Interrupt_Level_12_0x4c		
#define ENABLE_HT1_Interrupt_Level_13_0x4d		
#define ENABLE_HT1_Interrupt_Level_14_0x4e		
#define ENABLE_HT1_Interrupt_Level_15_0x4f		
#define ENABLE_HT1_Corrected_ECC_error_0x63		
#define ENABLE_HT1_fast_instr_access_MMU_miss_0x64
#define ENABLE_HT1_fast_data_access_MMU_miss_0x68
#define ENABLE_HT1_data_access_protection_0x6c		
#define ENABLE_HT1_Window_Spill_0_Normal_0x80		
#define ENABLE_HT1_Window_Spill_1_Normal_0x84		
#define ENABLE_HT1_Window_Spill_2_Normal_0x88		
#define ENABLE_HT1_Window_Spill_3_Normal_0x8c		
#define ENABLE_HT1_Window_Spill_4_Normal_0x90
#define ENABLE_HT1_Window_Spill_5_Normal_0x94
#define ENABLE_HT1_Window_Spill_6_Normal_0x98
#define ENABLE_HT1_Window_Spill_7_Normal_0x9c
#define ENABLE_HT1_Window_Spill_0_Other_0xa0		
#define ENABLE_HT1_Window_Spill_1_Other_0xa4		
#define ENABLE_HT1_Window_Spill_2_Other_0xa8		
#define ENABLE_HT1_Window_Spill_3_Other_0xac
#define ENABLE_HT1_Window_Spill_4_Other_0xb0
#define ENABLE_HT1_Window_Spill_5_Other_0xb4
#define ENABLE_HT1_Window_Spill_6_Other_0xb8
#define ENABLE_HT1_Window_Spill_7_Other_0xbc
#define ENABLE_HT1_Window_Fill_0_Normal_0xc0
#define ENABLE_HT1_Window_Fill_1_Normal_0xc4
#define ENABLE_HT1_Window_Fill_2_Normal_0xc8
#define ENABLE_HT1_Window_Fill_3_Normal_0xcc
#define ENABLE_HT1_Window_Fill_4_Normal_0xd0
#define ENABLE_HT1_Window_Fill_5_Normal_0xd4
#define ENABLE_HT1_Window_Fill_6_Normal_0xd8
#define ENABLE_HT1_Window_Fill_7_Normal_0xdc
#define ENABLE_HT1_Window_Fill_0_Other_0xe0
#define ENABLE_HT1_Window_Fill_1_Other_0xe4
#define ENABLE_HT1_Window_Fill_2_Other_0xe8
#define ENABLE_HT1_Window_Fill_3_Other_0xec
#define ENABLE_HT1_Window_Fill_4_Other_0xf0
#define ENABLE_HT1_Window_Fill_5_Other_0xf4
#define ENABLE_HT1_Window_Fill_6_Other_0xf8
#define ENABLE_HT1_Window_Fill_7_Other_0xfc
