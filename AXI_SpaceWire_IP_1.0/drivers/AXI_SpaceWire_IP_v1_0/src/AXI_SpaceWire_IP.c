

/***************************** Include Files *******************************/
#include "AXI_SpaceWire_IP.h"

/************************** Function Definitions ***************************/

XStatus AXI_SPACEWIRE_IP_REG_initDevice(void)
{
    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0, 6);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) == 6)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_enableAutoStart(void)
{
    const u32 val = (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) | 1 << 2);

    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0, val);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) == val)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_disableAutoStart(void)
{
    const u32 val = (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) & ~(1 << 2));

    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0, val);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) == val)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_enableLinkStart(void)
{
    const u32 val = (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) | 1 << 1);

    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0, val);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) == 6)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_disableLinkStart(void)
{
    const u32 val = (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) & ~(1 << 1));

    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0, val);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) == val)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_deactDevice(void)
{
    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0, (u32)1);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) == (u32)1)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_disableDevice(void)
{
    const u32 val = (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) & ~(1 << 0));

    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0, val);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) == val)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_enableDevice(void)
{
    const u32 val = (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) | 1 << 0);

    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0, val);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 0) == 6)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_setTransmitRate(u8 rate)
{
    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 4, (u32)rate);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 4) == (u32)rate)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_rstTransmitRate(void)
{
    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 4, (u32)1);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 4) == (u32)1)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_setTC(u8 flag, u8 value)
{
    const u8 tmp_flag = (flag & 3);
    const u8 tmp_countval = (value & 63);

    const u16 tmp_tc = tmp_countval + (tmp_flag << 8);

    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 8, (u32)tmp_tc);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 8) == (u32)tmp_tc)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_setCounterValue(u8 value)
{
    const u8 tmp_countval = (value & 63);

    const u32 tmp_val = (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 8) & 0b1100000000) + tmp_countval;

    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 8, tmp_val);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 8) == tmp_val)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_REG_setControlFlag(u8 flag)
{
    const u8 tmp_flag = (flag & 3);

    const u32 tmp_val = (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 8) & 63) + (tmp_flag << 8);

    AXI_SPACEWIRE_IP_mWriteReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 8, tmp_val);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 8) == tmp_val)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

u16 AXI_SPACEWIRE_IP_REG_getTC(void)
{
    return AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 12);
}

u8 AXI_SPACEWIRE_IP_REG_getCounterValue(void)
{
    return (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 12) & 63);
}

u8 AXI_SPACEWIRE_IP_REG_getControlFlag(void)
{
    return ((AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 12) & 0b1100000000) >> 8);
}

u32 AXI_SPACEWIRE_IP_REG_getStatus(void)
{
    return AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 16);
}

u8 AXI_SPACEWIRE_IP_REG_getErrorStatus(void)
{
    return ((AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 12) & 0b111100000000) >> 8);
}

u8 AXI_SPACEWIRE_IP_REG_getLinkStatus(void)
{
    return (AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 12) & 0b111);
}

u8 AXI_SPACEWIRE_IP_REG_getFifoStatus(void)
{
    return ((AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR, 12) & 0b110000000000000000) >> 16);
}

XStatus AXI_SPACEWIRE_IP_TX_writeSingle(u8 flag, u8 byte)
{
    const u8 tmp_flag = (flag & 1);
    const u16 tmp_word = (tmp_flag << 8) + byte;

    AXI_SPACEWIRE_IP_mWriteMemory16(XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_BASEADDR, tmp_word);

#ifndef TransferCheck
    return XST_SUCCESS;
#else
    if (AXI_SPACEWIRE_IP_mReadMemory16(XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_BASEADDR) == tmp_word)
        return XST_SUCCESS;
    else
        return XST_FAILURE;
#endif
}

XStatus AXI_SPACEWIRE_IP_TX_writeMulti(u16 *arr, u8 count);

u32 AXI_SPACEWIRE_IP_TX_getSize(void)
{
    return AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_BASEADDR, 4);
}

u16 AXI_SPACEWIRE_IP_RX_readSingle(void)
{
    return AXI_SPACEWIRE_IP_mReadMemory16(XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_BASEADDR);
}

XStatus AXI_SPACEWIRE_IP_RX_readMulti(u16 *arr, u8 count);

u32 AXI_SPACEWIRE_IP_RX_getElements(void)
{
    return AXI_SPACEWIRE_IP_mReadReg32(XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_BASEADDR, 4);
}

