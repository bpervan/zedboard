// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.4
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef XZBROJI_H
#define XZBROJI_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xzbroji_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Hls_zbroji_periph_bus_BaseAddress;
} XZbroji_Config;
#endif

typedef struct {
    u32 Hls_zbroji_periph_bus_BaseAddress;
    u32 IsReady;
} XZbroji;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XZbroji_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XZbroji_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XZbroji_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XZbroji_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XZbroji_Initialize(XZbroji *InstancePtr, u16 DeviceId);
XZbroji_Config* XZbroji_LookupConfig(u16 DeviceId);
int XZbroji_CfgInitialize(XZbroji *InstancePtr, XZbroji_Config *ConfigPtr);
#else
int XZbroji_Initialize(XZbroji *InstancePtr, const char* InstanceName);
int XZbroji_Release(XZbroji *InstancePtr);
#endif

void XZbroji_Start(XZbroji *InstancePtr);
u32 XZbroji_IsDone(XZbroji *InstancePtr);
u32 XZbroji_IsIdle(XZbroji *InstancePtr);
u32 XZbroji_IsReady(XZbroji *InstancePtr);
void XZbroji_EnableAutoRestart(XZbroji *InstancePtr);
void XZbroji_DisableAutoRestart(XZbroji *InstancePtr);
u32 XZbroji_GetReturn(XZbroji *InstancePtr);

void XZbroji_SetA(XZbroji *InstancePtr, u32 Data);
u32 XZbroji_GetA(XZbroji *InstancePtr);
void XZbroji_SetB(XZbroji *InstancePtr, u32 Data);
u32 XZbroji_GetB(XZbroji *InstancePtr);

void XZbroji_InterruptGlobalEnable(XZbroji *InstancePtr);
void XZbroji_InterruptGlobalDisable(XZbroji *InstancePtr);
void XZbroji_InterruptEnable(XZbroji *InstancePtr, u32 Mask);
void XZbroji_InterruptDisable(XZbroji *InstancePtr, u32 Mask);
void XZbroji_InterruptClear(XZbroji *InstancePtr, u32 Mask);
u32 XZbroji_InterruptGetEnabled(XZbroji *InstancePtr);
u32 XZbroji_InterruptGetStatus(XZbroji *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
