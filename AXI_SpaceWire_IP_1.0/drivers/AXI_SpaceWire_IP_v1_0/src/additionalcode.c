/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h> // seems not to be needed
//#include "xil_printf.h"
#include "platform.h"
//#include "xil_io.h"
//#include "xil_types.h"
#include "xparameters.h" // Contains processors address space and device ids
#include "xscugic.h" // Holds driver for configuration and use of GIC (Generic Interrupt Controller)
#include "xil_exception.h" // Contains exception functions for Cortex-A9
#include "xgpio.h" // AXI_GPIO handling

// Register
#define XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_CONFIGURATION 0x00000000
#define XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_TRANSMITRATE 0x00000004
#define XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_TIMECODEOUT 0x00000008
#define XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_TIMECODEIN 0x0000000C
#define XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_LINKSTATUS 0x00000010
// TX
#define XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_FIFO 0x00000000
#define XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_COUNTER 0x00000004
// RX
#define XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_FIFO 0x00000000
#define XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_COUNTER 0x00000004


// Global Variables
// GPIO (outgoing Time-Codes)
static XGpio_Config *cfg_ptr;
static XGpio tc_out;

// Reset Link Interface Logic (PL)
static XGpio_Config *cfg_ptr_rst;
static XGpio rst_logic;

// Interrupt (incoming Time-Codes)
static XScuGic Intc; // Interrupt Controller Driver
//static XGpio Gio; // GPIO device



// Initiates AXI_SpaceWire-Link-Interface (returns true if operation was successful otherwise false)
u32 initDevice(void) {
	Xil_Out32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_CONFIGURATION, 0x00000006);

	const u32 val = Xil_In32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_CONFIGURATION);

	if (val == 0x00000006) {
		return 1;
	}
	else {
		return 0;
	}
}

// Deactivates AXI_SpaceWire-Link_Interface (returns true if operation was successful otherwise false)
u32 deactDevice(void) {
	const u32 svalue = 0x00000001;

	Xil_Out32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_CONFIGURATION, svalue);

	const u32 val = Xil_In32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_CONFIGURATION);

	if (val == svalue) {
		return 1;
	}
	else {
		return 0;
	}
}

// Set Transmissionrate (Standard value: 0x01) (returns true if operation was successful otherwise false)
u32 setTransmitRate(u8 rate) {
	Xil_Out32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_TRANSMITRATE, rate);

	const u32 val = Xil_In32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_TRANSMITRATE);

	if (val == rate) {
		return 1;
	}
	else {
		return 0;
	}
}

// Writes single data word into transmit fifo (returns true if operation was successful otherwise false)
u32 write(u8 flag, u8 byte) {
	u16 tmp = byte;
	tmp |= (flag << 8);

	Xil_Out16(XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_FIFO, tmp);

	const u32 val = Xil_In32(XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_FIFO);

	// DEBUG
	//printf("Aus dem TX fifo gelesen: %lu\n", val);
	// DEBUG END

	if (val == tmp) {
		return 1;
	}
	else {
		return 0;
	}
}

// Writes several data words into transmit fifo (returns true if operation was successful otherwise false)
static u32 writeburst(u16* arr, u8 count) {
	const u32* dest = (const u32*)(XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_FIFO);
	void* ptr = memccpy(dest, arr, 0, count); // might causes problems... if so comment it out by far

	if (ptr != NULL) {
		return 1;
	}
	else {
		return 0;
	}
}

// Returns available size in transmit fifo
u32 getSize(void) {
	return Xil_In32(XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_COUNTER);
}

// Reads single data word from receive fifo
u32 read(void) {
	return Xil_In32(XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_FIFO);
}

// Reads several data words from receive fifo (returns true if operation was successful otherwise false)
u16* readburst(u16* arr, u8 count) {
	const u32* src = (const u32*)(XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_FIFO);

	void* ptr = memccpy(arr, src, 0, count);

	if (ptr != NULL) {
		return (u16)1;
	}
	else {
		return (u16)0;
	}
}

// Returns number of elements in receive fifo (returns true if operation was successful otherwise false)
u32 getElements(void) {
	return Xil_In32(XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_COUNTER);
}

// Set outgoing Time Code flag and counter value
static u32 setTC(u8 flag, u8 val) {
	u16 tmp_flag = 0;
	tmp_flag &= (flag & 0x3); // Flag value is two bites wide (Standard 0b10)

	u16 tmp_val = 0;
	tmp_val &= (val & 0x3F); // Counter value is five bits wide ( 0 - 63 )

	u16 tmp = 0;
	tmp = tmp_flag;
	tmp = (tmp << 8);
	tmp += tmp_val; // Combine values to meet register specifications

	Xil_Out16(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_TIMECODEOUT, tmp);

	const u16 cmp = Xil_In16(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_TIMECODEOUT);

	if (cmp == tmp) {
		return 1;
	}
	else {
		return 0;
	}
}

// Instructs link interface to send a Time-Code (returns true if operation was successful otherwise false)
u32 sendTC(void) {
	XGpio_DiscreteWrite(&tc_out, XPAR_XGPIO_NUM_INSTANCES, 0xffffffff);

	//const u32 tmp = XGpio_DiscreteRead(&tc_out, 1);

	//if (tmp == 0x00000001) {
	//	return 1;
	//}
	//else {
		return 0;
	//}
}

// Reset GPIO Register (Important because Link Interface reacts only on rising edge of signal so reset after transmission is essential !) (returns true if operation was successful otherwise false)
u32 ClearTCGPio(void) {
	XGpio_DiscreteWrite(&tc_out, XPAR_XGPIO_NUM_INSTANCES, 0x00000000);

	//const u32 tmp = XGpio_DiscreteRead(&tc_out, 1);

	//if (tmp == 0x00000000) {
	//	return 1;
	//}
	//else {
		return 0;
	//}
}

// Get only counter value of incoming Time Codes (flag isn't as important as counter value is)
static inline u32 getTC(void) {
	return Xil_In16(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_TIMECODEIN);
}

// Get Link Status
u32 getStatus(void) {
	return Xil_In32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_LINKSTATUS);
}

static inline void LinkReset(u32 val) {
	XGpio_DiscreteWrite(&rst_logic, XPAR_XGPIO_NUM_INSTANCES, val);

	u32 l = 6/(1+2);
	//asm volatile( "0: " "SUBS %[count], 1;" "BNE 0b;" :[count]"+r"(l) );
}

// ISR: Is called every time a Time-Code was received
void PLIntrHandler(void* intc_instance_ptr) {
	const u32 tmp = getTC();
	xil_printf("Interrupt!\n");
	printf("Interrupt: Incoming Time-Code: %lu\n", tmp);
}


int main()
{
    init_platform();

    sleep(1);

    // ******************************************************************************************
    // 1. Initialize GPIO for outgoing Time-Code functionality and logic reset
    cfg_ptr = XGpio_LookupConfig(XPAR_AXI_GPIO_0_DEVICE_ID);
    u32 tmp = XGpio_CfgInitialize(&tc_out, cfg_ptr, cfg_ptr->BaseAddress);
    XGpio_SetDataDirection(&tc_out, 1, ~(0x00000001));

    printf("Initialization GPIO tc_out: %lu\n", tmp);

    //cfg_ptr_rst = XGpio_LookupConfig(XPAR_AXI_GPIO_1_DEVICE_ID);
    //tmp = XGpio_CfgInitialize(&rst_logic, cfg_ptr_rst, cfg_ptr_rst->BaseAddress);
    //XGpio_SetDataDirection(&rst_logic, 1, 0x00000001);

    //printf("Initialization GPIO rst_logic: %lu\n", tmp);
    // ******************************************************************************************
    // 2. Initialize GIC for incoming Time-Code functionality
    u32 intrstat = 0;

    XScuGic *intc_instance_ptr = &Intc;
    XScuGic_Config *IntcConfig;


    IntcConfig = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);

    if (IntcConfig == NULL) {
    	printf("LookupConfig Initialization failed!\n");
    }

    intrstat = XScuGic_CfgInitialize(intc_instance_ptr, IntcConfig, IntcConfig->CpuBaseAddress);

    if (intrstat != XST_SUCCESS) {
    	printf("Interrupt Initialization failed!\n");
    }

    // ************************* Step for every interrupt necessary ! ********************
    // Set Priority for IRQ_F2P[0:0]
//    XScuGic_SetPriorityTriggerType(intc_instance_ptr,
//    							   61U /* 61 == IRQ_F2P[0:0] */,
//    							   0xF8 /* Priority: 0xf8 highest, 0x00 lowest */,
//								   0b11 /* 0b11 == Rising Edge Sensitive; 0b01 == High Level Sensitive */);

    // Connect IRQ ISR handler to hardware
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, intc_instance_ptr);

    // Enable IRQ exception in the CPU
    Xil_ExceptionEnable();


    // connect interrupt service routine to interrupt controller
    intrstat = XScuGic_Connect(intc_instance_ptr, 61U, (Xil_ExceptionHandler)PLIntrHandler, (void*)NULL);

    if (intrstat != XST_SUCCESS)  {
    	printf("Interrupt connection failed!\n");
    }

    // enable interrupts for IRQ_F2P[0:0]
    XScuGic_Enable(&Intc, 61U);
    // *************************************************************************************

    Xil_ExceptionInit(); // (empty function leftover for backwards compatibility!)

//    // Connect IRQ ISR handler to hardware
//    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, intc_instance_ptr);
//
//    // Enable IRQ exception in the CPU
//    Xil_ExceptionEnable();

    // Enable the IRQ_F2P
    //XScuGic_Enable(&Intc, XPS_FPGA0_INT_ID);
    // ******************************************************************************************
    // 3. Initialize Link Interface


    u8 tc_out_val = 0;

    // Reset Logic
    //LinkReset(0x1);
    //printf("Link Reset: 1\n", tmp);

    //sleep(1);

    //LinkReset(0x0);
    //printf("Link Reset: 0\n", tmp);

    printf("Sleep 3 seconds for logic reset\n");
    sleep(3);



    printf("Set transmit rate: %lu\n", setTransmitRate(0x01));

    while(1) {
    	// deactivate device
    	printf("Deactivate device: %lu\n", deactDevice());


    	printf("Size of tx fifo: %lu\n", getSize()); // should be 0

    	const u32 c_size = getSize();

    	for(int i = 0; i < c_size; i++) {
//    		write(0, 1);
    		Xil_Out16(XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_FIFO, 0b0000000000000001);

    		if (i % 100 == 0) {
    			printf("Size of tx fifo at iteration %lu is: %lu\n", i, getSize());
    			sleep(1);
    		}
    	}

    	printf("Writing of 2000 values into tx fifo was successful!\n");

    	for(int i = 0; i < 60; i++) {
//    		write(0, i);
    		Xil_Out16(XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S00_AXI_TX_FIFO, (u16)i);

    		printf("Writes into tx fifo: %lu (Current size of tx fifo: %lu)\n", i, getSize());
    	}

    	printf("Size of tx fifo after writing: %lu\n", getSize());

    	sleep(1);

    	// activate device
    	printf("Activate device: %lu\n", initDevice());

    	printf("Link-Status: %lu\n", getStatus());

    	printf("Get Elements in rx fifo I: %lu\n", getElements());

    	sleep(3);

    	printf("Get Link-Status: %lu\n", getStatus());
    	printf("Get Elements in rx fifo II: %lu\n", getElements());

    	// Now read at first 2000 1s out of rx fifo and control the sum
    	u32 sum = 0;
//    	u32 status = 0;
//    	for(int i = 0; i < 2060; i++) {
//    		int val = Xil_In16(XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_FIFO);//read();
//    		sum += val;
//
//    		status = getStatus();
//
//    		//if (i % 100 == 0) {
//    		printf("Received For-Loop: %lu\n", val);
//    		//printf("Link-Status: %lu\n", status);
//    		//	sleep(1);
//    		//}
//    	}
//
//    	sum -= 256;

    	//printf("Sum of the first 2000 elements: %lu\n", sum);
    	//printf("Elements still in rx fifo: %lu\n", getElements());

    	// From now print every element of the last "60" to be able to calculate exact fifo size:
    	//for(int i = 0; i < 60; i++) {
    	//	printf("Received: %lu\n", read());
    	//}
    	while (getElements() > 0) {
    		const u16 i = read();//Xil_In16(XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_BASEADDR + XPAR_AXI_SPACEWIRE_IP_0_S01_AXI_RX_FIFO);
    		sum += i;

    		printf("Received: %lu\n", i);
    	}

    	printf("Elements in rx fifo after reading: %lu\n", getElements());
    	printf("Sum of all elements: %lu\n", sum);

    	sleep(1);

    	printf("Send Time-Code with value: %lu\n", (u32)0xC);
    	Xil_Out32(XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_BASEADDR+XPAR_AXI_SPACEWIRE_IP_0_S02_AXI_REG_TIMECODEOUT, 0x0000000C);


    	// das hat wohl so funktioniert !!!
    	XGpio_DiscreteWrite(&tc_out, 1, 0x00000001);
    	//for(int del = 0; del < 5; del++);
    	XGpio_DiscreteClear(&tc_out, 1, 0x00000001);

    	sleep(1);

    	// Read TC_inc register
    	printf("Incoming TC Value: %lu\n", getTC());

    	//sleep(1);

    	//setTC(0, 16);
    	//sendTC();
    	//sleep(1);
    	//ClearTCGPio();

    	//printf("Incoming TC Value II: %lu\n", getTC());


    	printf("FINISHED!\n");

    	sleep(2);
    }





    cleanup_platform();
    return 0;
}
