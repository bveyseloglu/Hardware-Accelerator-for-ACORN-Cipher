// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef XACORN128_ENC_ONEBYTE_H
#define XACORN128_ENC_ONEBYTE_H

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
#include "xacorn128_enc_onebyte_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XAcorn128_enc_onebyte_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XAcorn128_enc_onebyte;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAcorn128_enc_onebyte_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAcorn128_enc_onebyte_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAcorn128_enc_onebyte_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAcorn128_enc_onebyte_ReadReg(BaseAddress, RegOffset) \
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
int XAcorn128_enc_onebyte_Initialize(XAcorn128_enc_onebyte *InstancePtr, u16 DeviceId);
XAcorn128_enc_onebyte_Config* XAcorn128_enc_onebyte_LookupConfig(u16 DeviceId);
int XAcorn128_enc_onebyte_CfgInitialize(XAcorn128_enc_onebyte *InstancePtr, XAcorn128_enc_onebyte_Config *ConfigPtr);
#else
int XAcorn128_enc_onebyte_Initialize(XAcorn128_enc_onebyte *InstancePtr, const char* InstanceName);
int XAcorn128_enc_onebyte_Release(XAcorn128_enc_onebyte *InstancePtr);
#endif

void XAcorn128_enc_onebyte_Start(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_IsDone(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_IsIdle(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_IsReady(XAcorn128_enc_onebyte *InstancePtr);
void XAcorn128_enc_onebyte_EnableAutoRestart(XAcorn128_enc_onebyte *InstancePtr);
void XAcorn128_enc_onebyte_DisableAutoRestart(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_Get_return(XAcorn128_enc_onebyte *InstancePtr);

void XAcorn128_enc_onebyte_Set_plaintextbyte(XAcorn128_enc_onebyte *InstancePtr, u32 Data);
u32 XAcorn128_enc_onebyte_Get_plaintextbyte(XAcorn128_enc_onebyte *InstancePtr);
void XAcorn128_enc_onebyte_Set_ciphertextbyte(XAcorn128_enc_onebyte *InstancePtr, u32 Data);
u32 XAcorn128_enc_onebyte_Get_ciphertextbyte(XAcorn128_enc_onebyte *InstancePtr);
void XAcorn128_enc_onebyte_Set_ksbyte(XAcorn128_enc_onebyte *InstancePtr, u32 Data);
u32 XAcorn128_enc_onebyte_Get_ksbyte(XAcorn128_enc_onebyte *InstancePtr);
void XAcorn128_enc_onebyte_Set_cabyte(XAcorn128_enc_onebyte *InstancePtr, u32 Data);
u32 XAcorn128_enc_onebyte_Get_cabyte(XAcorn128_enc_onebyte *InstancePtr);
void XAcorn128_enc_onebyte_Set_cbbyte(XAcorn128_enc_onebyte *InstancePtr, u32 Data);
u32 XAcorn128_enc_onebyte_Get_cbbyte(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_Get_state_BaseAddress(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_Get_state_HighAddress(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_Get_state_TotalBytes(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_Get_state_BitWidth(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_Get_state_Depth(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_Write_state_Words(XAcorn128_enc_onebyte *InstancePtr, int offset, int *data, int length);
u32 XAcorn128_enc_onebyte_Read_state_Words(XAcorn128_enc_onebyte *InstancePtr, int offset, int *data, int length);
u32 XAcorn128_enc_onebyte_Write_state_Bytes(XAcorn128_enc_onebyte *InstancePtr, int offset, char *data, int length);
u32 XAcorn128_enc_onebyte_Read_state_Bytes(XAcorn128_enc_onebyte *InstancePtr, int offset, char *data, int length);

void XAcorn128_enc_onebyte_InterruptGlobalEnable(XAcorn128_enc_onebyte *InstancePtr);
void XAcorn128_enc_onebyte_InterruptGlobalDisable(XAcorn128_enc_onebyte *InstancePtr);
void XAcorn128_enc_onebyte_InterruptEnable(XAcorn128_enc_onebyte *InstancePtr, u32 Mask);
void XAcorn128_enc_onebyte_InterruptDisable(XAcorn128_enc_onebyte *InstancePtr, u32 Mask);
void XAcorn128_enc_onebyte_InterruptClear(XAcorn128_enc_onebyte *InstancePtr, u32 Mask);
u32 XAcorn128_enc_onebyte_InterruptGetEnabled(XAcorn128_enc_onebyte *InstancePtr);
u32 XAcorn128_enc_onebyte_InterruptGetStatus(XAcorn128_enc_onebyte *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
