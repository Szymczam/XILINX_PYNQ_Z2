# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: F:\GitKraken\XILINX_PYNQ_Z2\Visits\ZYNQ_system\_ide\scripts\debugger_zynq-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source F:\GitKraken\XILINX_PYNQ_Z2\Visits\ZYNQ_system\_ide\scripts\debugger_zynq-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw F:/GitKraken/XILINX_PYNQ_Z2/Visits/ZYNQ_platform/export/ZYNQ_platform/hw/ZYNQ_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source F:/GitKraken/XILINX_PYNQ_Z2/Visits/ZYNQ/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow F:/GitKraken/XILINX_PYNQ_Z2/Visits/ZYNQ/Debug/ZYNQ.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
