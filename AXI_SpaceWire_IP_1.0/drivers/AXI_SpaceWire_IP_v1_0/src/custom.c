#define AXI_SPACEWIRE_IP_S00_AXI_TX_SLV_BASEADDRESS // TODO
#define AXI_SPACEWIRE_IP_S01_AXI_RX_SLV_BASEADDRESS // TODO
#define AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS // TODO

// initializes AXI_SpaceWire_IP and activates both autostart and linkstart
void AXI_SPACEWIRE_IP_Reg_ActivateDevice(void) {
    AXI_SPACEWIRE_IP_mWriteMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG0_OFFSET,0x00000006);
}

// deactivates AXI_SpaceWire_IP
void AXI_SPACEWIRE_IP_Reg0_DeactivateDevice(void) {
    AXI_SPACEWIRE_IP_mWriteMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG0_OFFSET,0x00000001);
}

// activates linkstart of AXI_SpaceWire_IP
void AXI_SPACEWIRE_IP_Reg0_SetLinkstart(void) {
    AXI_SPACEWIRE_IP_mWriteMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG0_OFFSET,0x00000002);
}

// activates autostart of AXI_SpaceWire_IP
void AXI_SPACEWIRE_IP_Reg0_SetAutostart(void) {
    AXI_SPACEWIRE_IP_mWriteMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG0_OFFSET,0x00000004);
}

// returns value of register 0
unsigned int AXI_SPACEWIRE_IP_GetReg0(void) {
    return AXI_SPACEWIRE_IP_mReadReg(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG0_OFFSET);
}

// set transmitting rate of AXI_SpaceWire_IP transmitter
void AXI_SPACEWIRE_IP_Reg_SetTransmitRate(unsigned char txdivcnt) {
    AXI_SPACEWIRE_IP_mWriteMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG1_OFFSET, txdivctn);
}

// set outgoing time-code counter value (0-63)
void AXI_SPACEWIRE_IP_Reg_SetCounterValue(unsigned char val) {
    AXI_SPACEWIRE_IP_mWriteMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG2_OFFSET, val);
}

// set outgoing time-code control flag
void AXI_SPACEWIRE_IP_Reg_SetControlFlag(unsigned char val) {
    unsigned int temp = AXI_SPACEWIRE_IP_mReadMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG2_OFFSET);
    temp |= ((val & (1 << 0)) << 8); // set 8th bit of temp to value of val's LSB
    temp |= ((val & (1 << 1)) << 9); // set 9th bit of temp to value of val's 1st bit

    AXI_SPACEWIRE_IP_mWriteMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG2_OFFSET);
}

// get incoming time-code counter value (0-63)
unsigned int AXI_SPACEWIRE_IP_Reg_GetCounterValue(void) {
    return AXI_SPACEWIRE_IP_mReadMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG3_OFFSSET) & 0x000000ff;
}

// get incoming time-code control flag
unsigned int AXI_SPACEWIRE_IP_Reg_GetControlFlag(void) {
    return (AXI_SPACEWIRE_IP_mReadMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG3_OFFSET) & 0x0000ff00) >> 8;
}

// get link status
unsigned int AXI_SPACEWIRE_IP_Reg_GetLinkStatus(void) {
    return AXI_SPACEWIRE_IP_mReadMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG4_OFFSET) & 0x000000ff;
}

// get error status
unsigned int AXI_SPACEWIRE_IP_Reg_GetErrorStatus(void) {
    return (AXI_SPACEWIRE_IP_mReadMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG4_OFFSET) & 0x0000ff00) >> 8;
}

// get fifo status
unsigned int AXI_SPACEWIRE_IP_Reg_GetFIFOStatus(void) {
    return (AXI_SPACEWIRE_IP_mReadMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG4_OFFSET) & 0x00ff0000) >> 16;
}

// returns value of register 5
unsigned int AXI_SPACEWIRe_IP_Reg_GetReg5(void) {
    return AXI_SPACEWIRE_IP_mReadMemory(AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDRESS+AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG4_OFFSET);
}