

/***************************** Include Files *******************************/
#include "AXI_SpaceWire_IP.h"

/************************** Function Definitions ***************************/

void AXI_SPACEWIRE_IP_REG_initDevice(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    (*ptr) = 0x00000006; // enables linkstart and autostart
}

void AXI_SPACEWIRE_IP_REG_enableAutoStart(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    (*ptr) |= (1 << 2); // set autostart bit (LSB := 0)
}

void AXI_SPACEWIRE_IP_REG_disableAutoStart(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    (*ptr) &= ~(1 << 2); // clear autostart bit (LSB := 0)
}

void AXI_SPACEWIRE_IP_REG_enableLinkStart(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    (*ptr) |= (1 << 1); // set linkstart bit
}

void AXI_SPACEWIRE_IP_REG_disableLinkStart(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    (*ptr) &= ~(1 << 1); // clear linkstart bit
}

void AXI_SPACEWIRE_IP_REG_deactDevice(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    (*ptr) = 0x00000001; // deact device and overwrites whole register
}

void AXI_SPACEWIRE_IP_REG_disableDevice(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    (*ptr) |= (0 << 1); // sets disable bit
}

void AXI_SPACEWIRE_IP_REG_enableDevice(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    (*ptr) &= ~(0 << 1); // clears disable bit
}

void AXI_SPACEWIRE_IP_REG_setTransmitRate(uint32_t* addr_reg_p, uint8_t val)
{
    volatile uint32_t *const ptr = addr_reg_p;
    (*ptr) = (uint32_t)val; // writes val into register
}

void AXI_SPACEWIRE_IP_REG_rstTransmitRate(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    (*ptr) = (uint32_t)0x01; // sets register to default value
}

void AXI_SPACEWIRE_IP_REG_setTC(uint32_t* addr_reg_p, uint8_t flag, uint8_t val)
{
    volatile uint32_t *const ptr = addr_reg_p;
   
    const uint8_t tmp_flag = (flag & 3); // masks control flag (3 == 0b11)
    const uint8_t tmp_val = (val & 63); // masks counter value (63 == 0b111111)

    const uint16_t tmp_tc = tmp_val + (tmp_flag << 8); // conc flag and counter value

    (*ptr) = (uint32_t)tmp_tc; // set registers value
}

void AXI_SPACEWIRE_IP_REG_setCounterValue(uint32_t* addr_reg_p, uint8_t val)
{
    volatile uint32_t *const ptr = addr_reg_p;

    const uint8_t tmp_counterval = (val & 63); // masks counter value (63 == 0b111111)

    (*ptr) =  ((*ptr) & ~63 + tmp_counterval); // clears first six bits and adds val (63 == 0b111111)
    // flag value will be unchanged!
}

void AXI_SPACEWIRE_IP_REG_setControlFlag(uint32_t* addr_reg_p, uint8_t val)
{
    volatile uint32_t *const ptr = addr_reg_p;

    const uint8_t tmp_flag = (val & 3); // masks control flag (3 == 0b11)

    (*ptr) = ((*ptr) & ~ 768) + (tmp_flag << 8); // clears first to bits of 2nd byte and adds control flag (768 = 0b1100000000)
    // counter value will be unchanged!
}

int16_t AXI_SPACEWIRE_IP_REG_getTC(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    return (int16_t)(*ptr); // whole register fits into two byte variable
}

int8_t AXI_SPACEWIRE_IP_REG_getCounterValue(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    return (int8_t)((*ptr) & 63); // masks register to get counter value only (63 == 0b111111)
}

int8_t AXI_SPACEWIRE_IP_REG_getControlFlag(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    return (int8_t)(((*ptr) & 768) >> 8); // masks register to get control flag only and shifts it (768 = 0b1100000000)
}

uint32_t AXI_SPACEWIRE_IP_REG_getStatus(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    return (*ptr);
}

int8_t AXI_SPACEWIRE_IP_REG_getErrorStatus(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    return (int8_t)((*ptr & 3840) >> 8); // masks register to get error state only and shifts is (3840 == 0b111100000000)
}

int8_t AXI_SPACEWIRE_IP_REG_getLinkStatus(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    return (int8_t)((*ptr) & 7); // masks register to get link status only (7 == 0b111)
}

int8_t AXI_SPACEWIRE_IP_REG_getFifoStatus(uint32_t* addr_reg_p)
{
    volatile uint32_t *const ptr = addr_reg_p;
    return (int8_t)((*ptr) & 196608) >> 16; // masks register to get fifo status only and shifts it (196608 == 0x30000)
}

void AXI_SPACEWIRE_IP_TX_writeSingle(uint32_t* addr_tx_p, int8_t flag, uint8_t data)
{
    volatile uint32_t *const ptr = addr_tx_p;

    const int8_t tmp_flag = (flag & 1); // masks flag to get one bit only
    const uint16_t tmp_word = (tmp_flag << 8) + data; // conc flag and data (9 valid bits)

    (*ptr) = tmp_word;
}

uint16_t AXI_SPACEWIRE_IP_TX_getSize(uint32_t* addr_tx_p)
{
    volatile uint32_t *const ptr = addr_tx_p;
    return (uint16_t)(*ptr);
}

int16_t AXI_SPACEWIRE_IP_RX_readSingle(uint32_t* addr_rx_p)
{
    volatile uint32_t *const ptr = addr_rx_p;
    return (int16_t)(*ptr);
}

uint16_t AXI_SPACEWIRE_IP_RX_getElements(uint32_t* addr_rx_p)
{
    volatile uint32_t *const ptr = addr_rx_p;
    return (uint16_t)(*ptr);
}
