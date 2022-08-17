# Runtime Tcl commands to interact with - AXI_SpaceWire_IP_v1_0

# Sourcing design address info tcl
set bd_path [get_property DIRECTORY [current_project]]/[current_project].srcs/[current_fileset]/bd
source ${bd_path}/AXI_SpaceWire_IP_v1_0_include.tcl

# jtag axi master interface hardware name, change as per your design.
set jtag_axi_master hw_axi_1
set ec 0

# hw test script
# Delete all previous axis transactions
if { [llength [get_hw_axi_txns -quiet]] } {
	delete_hw_axi_txn [get_hw_axi_txns -quiet]
}


# Test all lite slaves.
set wdata_1 abcd1234

# Test: S02_AXI_REG
# Create a write transaction at s02_axi_reg_addr address
create_hw_axi_txn w_s02_axi_reg_addr [get_hw_axis $jtag_axi_master] -type write -address $s02_axi_reg_addr -data $wdata_1
# Create a read transaction at s02_axi_reg_addr address
create_hw_axi_txn r_s02_axi_reg_addr [get_hw_axis $jtag_axi_master] -type read -address $s02_axi_reg_addr
# Initiate transactions
run_hw_axi r_s02_axi_reg_addr
run_hw_axi w_s02_axi_reg_addr
run_hw_axi r_s02_axi_reg_addr
set rdata_tmp [get_property DATA [get_hw_axi_txn r_s02_axi_reg_addr]]
# Compare read data
if { $rdata_tmp == $wdata_1 } {
	puts "Data comparison test pass for - S02_AXI_REG"
} else {
	puts "Data comparison test fail for - S02_AXI_REG, expected-$wdata_1 actual-$rdata_tmp"
	inc ec
}


# Test all full slaves.
set wdata_2 04040404030303030202020201010101

# Test: S00_AXI_TX
# Create a burst write transaction at s00_axi_tx_addr address
create_hw_axi_txn w_s00_axi_tx_addr [get_hw_axis $jtag_axi_master] -type write -address $s00_axi_tx_addr -len 4 -data $wdata_2 -burst INCR
# Create a burst read transaction at s00_axi_tx_addr address
create_hw_axi_txn r_s00_axi_tx_addr [get_hw_axis $jtag_axi_master] -type read -address $s00_axi_tx_addr -len 4 -burst INCR
# Initiate transactions
run_hw_axi r_s00_axi_tx_addr
run_hw_axi w_s00_axi_tx_addr
run_hw_axi r_s00_axi_tx_addr
set rdata_tmp [get_property DATA [get_hw_axi_txn r_s00_axi_tx_addr]]
# Compare read data
if { $rdata_tmp == $wdata_2 } {
	puts "Data comparison test pass for - S00_AXI_TX"
} else {
	puts "Data comparison test fail for - S00_AXI_TX, expected-$wdata_2 actual-$rdata_tmp"
	inc ec
}

# Test: S01_AXI_RX
# Create a burst write transaction at s01_axi_rx_addr address
create_hw_axi_txn w_s01_axi_rx_addr [get_hw_axis $jtag_axi_master] -type write -address $s01_axi_rx_addr -len 4 -data $wdata_2 -burst INCR
# Create a burst read transaction at s01_axi_rx_addr address
create_hw_axi_txn r_s01_axi_rx_addr [get_hw_axis $jtag_axi_master] -type read -address $s01_axi_rx_addr -len 4 -burst INCR
# Initiate transactions
run_hw_axi r_s01_axi_rx_addr
run_hw_axi w_s01_axi_rx_addr
run_hw_axi r_s01_axi_rx_addr
set rdata_tmp [get_property DATA [get_hw_axi_txn r_s01_axi_rx_addr]]
# Compare read data
if { $rdata_tmp == $wdata_2 } {
	puts "Data comparison test pass for - S01_AXI_RX"
} else {
	puts "Data comparison test fail for - S01_AXI_RX, expected-$wdata_2 actual-$rdata_tmp"
	inc ec
}

# Check error flag
if { $ec == 0 } {
	 puts "PTGEN_TEST: PASSED!" 
} else {
	 puts "PTGEN_TEST: FAILED!" 
}

