
#ifndef AXI_SPACEWIRE_IP_H
#define AXI_SPACEWIRE_IP_H


/****************** Include Files ********************/
#include "stdint.h" // int-Types

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
 *    - 0   if all self-test code passed
 *    - 1   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
int32_t AXI_SPACEWIRE_IP_REG_SelfTest(uint32_t* baseaddr_p);

/**
 *
 * Initializes the device. If the interface is physically connected to a corresponding
 * SpaceWire node, the connection is established and normal operation is possible after
 * establishment.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 */
void AXI_SPACEWIRE_IP_REG_initDevice(uint32_t* baseaddr_reg_p);

/**
 *
 * Activates autostart. If the device is in an unconnected state and receives valid SpaceWire
 * signals, it will automatically connect.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 */
void AXI_SPACEWIRE_IP_REG_enableAutoStart(uint32_t* baseaddr_reg_p);

/**
 *
 * Deactivates autostart. An unconnected device no longer responds to an external connection attempt.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 */
void AXI_SPACEWIRE_IP_REG_disableAutoStart(uint32_t* baseaddr_reg_p);

/**
 *
 * Enables linkstart. An unconnected device will periodically attempt to connect.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 */
void AXI_SPACEWIRE_IP_REG_enableLinkStart(uint32_t* baseaddr_reg_p);

/**
 *
 * Disables linkstart. An unconnected device will not periodically attempt to connect.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 */
void AXI_SPACEWIRE_IP_REG_disableLinkStart(uint32_t* baseaddr_reg_p);

/**
 *
 * Deactivates device. The existing connection is closed and communication via TX and RX is no
 * longer possible. Overwrites configuration.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 */
void AXI_SPACEWIRE_IP_REG_deactDevice(uint32_t* baseaddr_reg_p);

/**
 *
 * Disables device. Sets the disable bit in register, but does not change the other register values.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 */
void AXI_SPACEWIRE_IP_REG_disableDevice(uint32_t* baseaddr_reg_p);

/**
 *
 * Enables device. Resets the disable bit and leaves remaining values in the register unchanged.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 */
void AXI_SPACEWIRE_IP_REG_enableDevice(uint32_t* baseaddr_reg_p);

/**
 *
 * Set transmission rate. Transmission frequency is divided by this value.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 * @param   val is the transmit rate.
 *
 */
void AXI_SPACEWIRE_IP_REG_setTransmitRate(uint32_t* baseaddr_reg_p, uint8_t val);

/**
 *
 * Resets transmission rate to default value. (0x01)
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 */
void AXI_SPACEWIRE_IP_REG_rstTransmitRate(uint32_t* baseaddr_reg_p);

/**
 *
 * Sets Time-Code values (flag and counter value).
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 * @param   flag is the Time-Code control flag to set (0-3).
 * @param   val is the Time-Code counter value to set (0-63).
 *
 */
void AXI_SPACEWIRE_IP_REG_setTC(uint32_t* baseaddr_reg_p, uint8_t flag, uint8_t val);

/**
 *
 * Sets Time-Code counter value. Does not change current flag value.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 * @param   val is the Time-Code counter value to set (0-63).
 *
 */
void AXI_SPACEWIRE_IP_REG_setCounterValue(uint32_t* baseaddr_reg_p, uint8_t val);

/**
 *
 * Sets Time-Code flag. Does not change current counter value.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 * @param   flag is the Time-Code control flat to set (0-3).
 *
 */
void AXI_SPACEWIRE_IP_REG_setControlFlag(uint32_t* baseaddr_reg_p, uint8_t val);

/**
 *
 * Returns the last received (if none has been received yet 0x00) Time-Code. The first byte
 * contains the flag value, the second byte the counter value.
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 * @return  last received Time-Code
 *
 */
int16_t AXI_SPACEWIRE_IP_REG_getTC(uint32_t* baseaddr_reg_p);

/**
 *
 * Returns last received Time-Code counter value (if none has been received yet 0x00).
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 * @return last received Time-Code conter value
 *
 */
int8_t AXI_SPACEWIRE_IP_REG_getCounterValue(uint32_t* baseaddr_reg_p);

/**
 *
 * Returns last received Time-Code control flag (if none has been received yet 0b00).
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 * @return last received Time-Code control flag
 *
 */
int8_t AXI_SPACEWIRE_IP_REG_getControlFlag(uint32_t* baseaddr_reg_p);

/**
 *
 * Returns the status of the SpaceWire port of the interface (see manual p. 5-6).
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 * @return SpaceWire port status
 *
 */
uint32_t AXI_SPACEWIRE_IP_REG_getStatus(uint32_t* baseaddr_reg_p);

/**
 *
 * Returns the error status of the SpaceWire port of the interface (see manual p. 5-6).
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 * @return SpaceWire port error status
 *
 */
int8_t AXI_SPACEWIRE_IP_REG_getErrorStatus(uint32_t* baseaddr_reg_p);

/**
 *
 * Returns the link status of the Spacewire port of the interface (see manual p. 5-6).
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 * @return SpaceWire port link status
 *
 */
int8_t AXI_SPACEWIRE_IP_REG_getLinkStatus(uint32_t* baseaddr_reg_p);

/**
 *
 * Returns the fifo status of the SpaceWire port of the interface (see manual p. 5-6).
 *
 * @param   baseaddr_reg_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 * @return SpaceWire port fifo status
 *
 */
int8_t AXI_SPACEWIRE_IP_REG_getFifoStatus(uint32_t* baseaddr_reg_p);

/**
 *
 * Writes a single word into transmitting fifo of the interface (see manual p. 2).
 *
 * @param   baseaddr_tx_p is the base address of the AXI_SPACEWIRE_IP_TX instance to be worked on.
 * @param   flag marks the data as special byte or normal n-char.
 * @param   byte is the data to transmit.
 *
 */
void AXI_SPACEWIRE_IP_TX_writeSingle(uint32_t* baseaddr_tx_p, int8_t flag, uint8_t data);

/**
 *
 * Returns a value indicating how many records still fit into the fifo.
 *
 * @param   baseaddr_tx_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 * @return Tx fifo free space
 *
 */
uint16_t AXI_SPACEWIRE_IP_TX_getSize(uint32_t* baseaddr_tx_p);

/**
 *
 * Reads and returns a single word from the receive fifo of the interface (see manual p. 3).
 *
 * @param   baseaddr_rx_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 * @return word (see manual p. 3)
 *
 */
int16_t AXI_SPACEWIRE_IP_RX_readSingle(uint32_t* baseaddr_rx_p);

/**
 *
 * Returns number of records in Rx fifo.
 *
 * @param   baseaddr_rx_p is the base address of the AXI_SPACEWIRE_IP_REG instance to be worked on.
 *
 * @return Rx fifo elements
 *
 */
uint16_t AXI_SPACEWIRE_IP_RX_getElements(uint32_t* baseaddr_rx_p);

#endif // AXI_SPACEWIRE_IP_H