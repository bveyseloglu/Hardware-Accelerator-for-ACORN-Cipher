// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xacorn128_dec_onebyte.h"

extern XAcorn128_dec_onebyte_Config XAcorn128_dec_onebyte_ConfigTable[];

XAcorn128_dec_onebyte_Config *XAcorn128_dec_onebyte_LookupConfig(u16 DeviceId) {
	XAcorn128_dec_onebyte_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XACORN128_DEC_ONEBYTE_NUM_INSTANCES; Index++) {
		if (XAcorn128_dec_onebyte_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAcorn128_dec_onebyte_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAcorn128_dec_onebyte_Initialize(XAcorn128_dec_onebyte *InstancePtr, u16 DeviceId) {
	XAcorn128_dec_onebyte_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAcorn128_dec_onebyte_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAcorn128_dec_onebyte_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

