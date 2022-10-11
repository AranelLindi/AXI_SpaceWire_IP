
#ifndef AXI_SPACEWIRE_IP_H
#define AXI_SPACEWIRE_IP_H


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"

/*************************** Macro Definitions ****************************/
// S00_AXI_TX-Interface (AXI4-Full)
#define AXI_SPACEWIRE_IP_S00_AXI_TX_SLV_BASEADDR 0 // TODO!
#define AXI_SPACEWIRE_IP_S00_AXI_TX_SLV_FIFO_OFFSET 0
#define AXI_SPACEWIRE_IP_S00_AXI_TX_SLV_SIZE_OFFSET 4
// S01_AXI_RX-Interface (AXI4-Full)
#define AXI_SPACEWIRE_IP_S01_AXI_RX_SLV_BASEADDR 0 // TODO!
#define AXI_SPACEWIRE_IP_S01_AXI_RX_SLV_FIFO_OFFSET 0
#define AXI_SPACEWIRE_IP_S01_AXI_RX_SLV_ELEM_OFFSET 4
// S02_AXI_REG-Interface (AXI4-Lite)
#define AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_BASEADDR 0 // TODO!
#define AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG0_OFFSET 0 // Link-Configuration
#define AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG1_OFFSET 4 // Transmit-Rate
#define AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG2_OFFSET 8 // Time-Codes (out)
#define AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG3_OFFSET 12 // Time-Codes (in)
#define AXI_SPACEWIRE_IP_S02_AXI_REG_SLV_REG4_OFFSET 16 // Link-Status


/**************************** Type Definitions *****************************/
/**
 *
 * Write/Read 32 bit value to/from AXI_SPACEWIRE_IP user logic memory (BRAM).
 *
 * @param   Address is the memory address of the AXI_SPACEWIRE_IP device.
 * @param   Data is the value written to user logic memory.
 *
 * @return  The data from the user logic memory.
 *
 * @note
 * C-style signature:
 * 	void AXI_SPACEWIRE_IP_mWriteMemory(u32 Address, u32 Data)
 * 	u32 AXI_SPACEWIRE_IP_mReadMemory(u32 Address)
 *
 */
#define AXI_SPACEWIRE_IP_mWriteMemory(Address, Data) \
    Xil_Out32(Address, (u32)(Data))
#define AXI_SPACEWIRE_IP_mReadMemory(Address) \
    Xil_In32(Address)

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
#define AXI_SPACEWIRE_IP_mWriteReg(BaseAddress, RegOffset, Data) \
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
#define AXI_SPACEWIRE_IP_mReadReg(BaseAddress, RegOffset) \
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

XStatus AXI_SPACEWIRE_IP_REG_deactDevice(void);

XStatus AXI_SPACEWIRE_IP_REG_setTransRate(u8 rate);

XStatus AXI_SPACEWIRE_IP_TX_writeSingle(u8 flag, u8 byte);

XStatus AXI_SPACEWIRE_IP_TX_writeMulti(u16* arr, u8 count);

u32 AXI_SPACEWIRE_IP_TX_getSize(void);

u16 AXI_SPACEWIRE_IP_RX_readSingle(void);

XStatus AXI_SPACEWIRE_IP_RX_readMulti(u16* arr, u8 count);

u32 AXI_SPACEWIRE_IP_RX_getElements(void);

XStatus AXI_SPACEWIRE_IP_REG_setTC(u8 flag, u8 value);

u8 AXI_SPACEWIRE_IP_REG_getTC(void);

u32 AXI_SPACEWIRE_IP_REG_getStatus(void);


#endif // AXI_SPACEWIRE_IP_H