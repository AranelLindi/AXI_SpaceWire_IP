

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "AXI_SpaceWire_IP" "NUM_INSTANCES" "DEVICE_ID"  "C_S02_AXI_REG_BASEADDR" "C_S02_AXI_REG_HIGHADDR" "C_S00_AXI_TX_BASEADDR" "C_S00_AXI_TX_HIGHADDR" "C_S01_AXI_RX_BASEADDR" "C_S01_AXI_RX_HIGHADDR"
}
