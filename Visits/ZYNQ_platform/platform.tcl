# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct F:\GitKraken\XILINX_PYNQ_Z2\Visits\ZYNQ_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source F:\GitKraken\XILINX_PYNQ_Z2\Visits\ZYNQ_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {ZYNQ_platform}\
-hw {F:\GitKraken\XILINX_PYNQ_Z2\HDL\ZYNQ_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {F:/GitKraken/XILINX_PYNQ_Z2/Visits}

platform write
platform generate -domains 
platform active {ZYNQ_platform}
platform generate
