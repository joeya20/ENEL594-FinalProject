##################################################################
### File Name: jg_spv.tcl
### File for security path verification of a design 
##
##     Developed by 
##
##     Nusrat Farzna Dipu
##     Graduate Research Assistant
##     University of Florida
##     Email: ndipu@ufl.edu
##
###################################################################
set ROOT_PATH [pwd]
set RTL_PATH ${ROOT_PATH}/src
analyze -v2k \
	${RTL_PATH}/openMSP430_defines.v \
	${RTL_PATH}/omsp_alu.v \
	${RTL_PATH}/omsp_and_gate.v \
	${RTL_PATH}/omsp_clock_gate.v \
	${RTL_PATH}/omsp_clock_mux.v \
	${RTL_PATH}/omsp_dbg_hwbrk.v \
	${RTL_PATH}/omsp_dbg_i2c.v \
	${RTL_PATH}/omsp_dbg_uart.v \
	${RTL_PATH}/omsp_dbg.v \
	${RTL_PATH}/omsp_execution_unit.v \
	${RTL_PATH}/omsp_frontend.v \
	${RTL_PATH}/omsp_mem_backbone.v \
	${RTL_PATH}/omsp_multiplier.v \
	${RTL_PATH}/omsp_register_file.v \
	${RTL_PATH}/omsp_scan_mux.v \
	${RTL_PATH}/omsp_sfr.v \
	${RTL_PATH}/omsp_sync_cell.v \
	${RTL_PATH}/omsp_sync_reset.v \
	${RTL_PATH}/omsp_wakeup_cell.v \
	${RTL_PATH}/omsp_watchdog.v \
	${RTL_PATH}/openMSP430.v

check_spv -init
elaborate -top {openMSP430}


clock cpu_mclk
clock dbg_clk
clock aclk
clock dma_mclk
clock smclk
reset reset_n


check_spv -create -from {frontend_0.pc} -from_precond {dbg_0.dbg_en_s==1'b0} -to {dbg_uart_txd} -name "pc_to_trans" 

check_spv -prove
