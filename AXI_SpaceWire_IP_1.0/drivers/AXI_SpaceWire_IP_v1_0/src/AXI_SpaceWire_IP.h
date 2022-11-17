
#ifndef AXI_SPACEWIRE_IP_H
#define AXI_SPACEWIRE_IP_H


/****************** Include Files ********************/
#include "xil_types.h" // Xilinx function return type
#include "xstatus.h" // XStatus
#include "xparameters.h" // Contains platform specific macros
#include "xil_io.h"

/*************************** Macro Definitions ****************************/
//#define TransferCheck

/**************************** Type Definitions *****************************/
/**
 *
 * Write/Read 16 bit value to/from AXI_SPACEWIRE_IP user logic memory (BRAM).
 *
 * @param   Address is the memory address of the AXI_SPACEWIRE_IP device.
 * @param   Data is the value written to user logic memory.
 *
 * @return  The data from the user logic memory.
 *
 * @note
 * C-style signature:
 * 	void AXI_SPACEWIRE_IP_mWriteMemory16(u32 Address, u16 Data)
 * 	u32 AXI_SPACEWIRE_IP_mReadMemory16(u32 Address)
 *
 */
#define AXI_SPACEWIRE_IP_mWriteMemory16(Address, Data) \
    Xil_Out16(Address, (u32)(Data))
#define AXI_SPACEWIRE_IP_mReadMemory16(Address) \
    Xil_In16(Address)
/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the AXI_SPACEWIRE_IP instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus AXI_SPACEWIRE_IP_Mem_SelfTest(void * baseaddr_p);

/**
 *
 * Write a value to a AXI_SPACEWIRE_IP register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the AXI_SPACEWIRE_IP device.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void AXI_SPACEWIRE_IP_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define AXI_SPACEWIRE_IP_mWriteReg32(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a AXI_SPACEWIRE_IP register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the AXI_SPACEWIRE_IP device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 AXI_SPACEWIRE_IP_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define AXI_SPACEWIRE_IP_mReadReg32(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the AXI_SPACEWIRE_IP instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus AXI_SPACEWIRE_IP_REG_SelfTest(void * baseaddr_p);

XStatus AXI_SPACEWIRE_IP_REG_initDevice(void);

XStatus AXI_SPACEWIRE_IP_REG_enableAutoStart(void);

XStatus AXI_SPACEWIRE_IP_REG_disableAutoStart(void);

XStatus AXI_SPACEWIRE_IP_REG_enableLinkStart(void);

XStatus AXI_SPACEWIRE_IP_REG_disableLinkStart(void);

XStatus AXI_SPACEWIRE_IP_REG_deactDevice(void);

XStatus AXI_SPACEWIRE_IP_REG_disableDevice(void);

XStatus AXI_SPACEWIRE_IP_REG_enableDevice(void);

XStatus AXI_SPACEWIRE_IP_REG_setTransmitRate(u8 rate);

XStatus AXI_SPACEWIRE_IP_REG_rstTransmitRate(void);

XStatus AXI_SPACEWIRE_IP_REG_setTC(u8 flag, u8 value);

XStatus AXI_SPACEWIRE_IP_REG_setCounterValue(u8 value);

XStatus AXI_SPACEWIRE_IP_REG_setControlFlag(u8 flag);

u16 AXI_SPACEWIRE_IP_REG_getTC(void);

u8 AXI_SPACEWIRE_IP_REG_getCounterValue(void);

u8 AXI_SPACEWIRE_IP_REG_getControlFlag(void);

u32 AXI_SPACEWIRE_IP_REG_getStatus(void);

u8 AXI_SPACEWIRE_IP_REG_getErrorStatus(void);

u8 AXI_SPACEWIRE_IP_REG_getLinkStatus(void);

u8 AXI_SPACEWIRE_IP_REG_getFifoStatus(void);

XStatus AXI_SPACEWIRE_IP_TX_writeSingle(u8 flag, u8 byte);

XStatus AXI_SPACEWIRE_IP_TX_writeMulti(u16* arr, u8 count);

u32 AXI_SPACEWIRE_IP_TX_getSize(void);

u16 AXI_SPACEWIRE_IP_RX_readSingle(void);

XStatus AXI_SPACEWIRE_IP_RX_readMulti(u16* arr, u8 count);

u32 AXI_SPACEWIRE_IP_RX_getElements(void);

#endif // AXI_SPACEWIRE_IP_H

