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
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* XILINX CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
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

#include <stdio.h>
#include "platform.h"
#include <string.h>
//#include <time.h>
#include "xil_printf.h"
#include "xparameters.h"

#include "xacorn128_dec_onebyte_hw.h"
#include "xacorn128_dec_onebyte.h"
#include "xacorn128_enc_onebyte_hw.h"
#include "xacorn128_enc_onebyte.h"

XAcorn128_dec_onebyte decInst;
XAcorn128_enc_onebyte encInst;


// CALL HW TO encrypt one byte
void acorn128_enc_onebyte(unsigned char *state, unsigned char plaintextbyte,
       unsigned char *ciphertextbyte, unsigned char *ksbyte, unsigned char cabyte, unsigned char cbbyte)
{

	// initialize ip
	XAcorn128_enc_onebyte_Initialize(&encInst, XPAR_ACORN128_ENC_ONEBYTE_0_DEVICE_ID);

	// wait for initialization completes
	while (!XAcorn128_enc_onebyte_IsReady(&encInst));
	//xil_printf("\r\nenc ready: %d",XAcorn128_enc_onebyte_IsReady(&encInst));


	// send inputs to the ip
	XAcorn128_enc_onebyte_Write_state_Bytes(&encInst, 0, state, 239);
	XAcorn128_enc_onebyte_Set_plaintextbyte(&encInst, plaintextbyte);
	XAcorn128_enc_onebyte_Set_ciphertextbyte(&encInst, *ciphertextbyte);
	XAcorn128_enc_onebyte_Set_ksbyte(&encInst, *ksbyte);
	XAcorn128_enc_onebyte_Set_cabyte(&encInst, cabyte);
	XAcorn128_enc_onebyte_Set_cbbyte(&encInst, cbbyte);

	// start operation
	XAcorn128_enc_onebyte_Start(&encInst);

	// wait till operation ends
	while (XAcorn128_enc_onebyte_IsDone(&encInst) == 0);

	// update output variables
	XAcorn128_enc_onebyte_Read_state_Bytes(&encInst, 0, state, 239);
	*ciphertextbyte = (unsigned char)XAcorn128_enc_onebyte_Get_ciphertextbyte(&encInst);
	*ksbyte = (unsigned char)XAcorn128_enc_onebyte_Get_ksbyte(&encInst);
}

// CALL HW TO decrypt one byte
void acorn128_dec_onebyte(unsigned char *state, unsigned char *plaintextbyte,
       unsigned char ciphertextbyte, unsigned char *ksbyte, unsigned char cabyte, unsigned char cbbyte)
{

	// initialize ip
	XAcorn128_dec_onebyte_Initialize(&decInst, XPAR_ACORN128_DEC_ONEBYTE_0_DEVICE_ID);

	// wait for initialization completes
	while (!XAcorn128_dec_onebyte_IsReady(&decInst));
	//xil_printf("\r\ndec ready: %d",XAcorn128_dec_onebyte_IsReady(&decInst));


	// send inputs to the ip
	XAcorn128_dec_onebyte_Write_state_Bytes(&decInst, 0, state, 239);
	XAcorn128_dec_onebyte_Set_plaintextbyte(&decInst, *plaintextbyte);
	XAcorn128_dec_onebyte_Set_ciphertextbyte(&decInst, ciphertextbyte);
	XAcorn128_dec_onebyte_Set_ksbyte(&decInst, *ksbyte);
	XAcorn128_dec_onebyte_Set_cabyte(&decInst, cabyte);
	XAcorn128_dec_onebyte_Set_cbbyte(&decInst, cbbyte);

	// start operation
	XAcorn128_dec_onebyte_Start(&decInst);

	// wait till operation ends
	while (XAcorn128_dec_onebyte_IsDone(&decInst) == 0);

	// update output variables
	XAcorn128_dec_onebyte_Read_state_Bytes(&decInst, 0, state, 239);
	*plaintextbyte = (unsigned char)XAcorn128_dec_onebyte_Get_plaintextbyte(&decInst);
	*ksbyte = (unsigned char)XAcorn128_dec_onebyte_Get_ksbyte(&decInst);

}


//The initialization state of ACORN
/*The input to initialization is the 128-bit key; 128-bit IV;*/
void acorn128_initialization(const unsigned char *key, const unsigned char *iv, unsigned char *state)
{
        int i,j;
        unsigned char m[293], ks, tem;

        //initialize the state to 0
        for (j = 0; j <= 292; j++) state[j] = 0;

        //set the value of m
        for (j = 0; j <=  15;   j++)   m[j] = key[j];
        for (j = 16; j <= 31;   j++)   m[j] = iv[j - 16];
        for (j = 32; j <= 223;  j++)   m[j] = key[j & 0xf];
        m[32] ^= 1;

        //run the cipher for 1792 steps
        for (i = 0; i < 224; i++)
        {
             acorn128_enc_onebyte(state, m[i], &tem, &ks, 0xff, 0xff);
        }
}

//the finalization state of acorn
void acorn128_tag_generation(unsigned long long msglen, unsigned long long adlen, unsigned char maclen, unsigned char *mac, unsigned char *state)
{
    int i;
    unsigned char plaintextbyte  = 0;
    unsigned char ciphertextbyte = 0;
    unsigned char ksbyte = 0;

    for (i = 0; i < 768/8; i++)
    {
        acorn128_enc_onebyte(state, plaintextbyte, &ciphertextbyte, &ksbyte, 0xff, 0xff);
        if ( i >= (768/8 - 16) ) {mac[i-(768/8-16)] = ksbyte; }
    }
}

//encrypt a message.
int crypto_aead_encrypt(
	unsigned char *c,unsigned long long *clen,
	const unsigned char *m,unsigned long long mlen,
	const unsigned char *ad,unsigned long long adlen,
	const unsigned char *nsec,
	const unsigned char *npub,
	const unsigned char *k
	)
{
    unsigned long long i;
    unsigned char plaintextbyte, ciphertextbyte, ksbyte, mac[16];
    unsigned char state[293];
    unsigned char ca, cb;


    //initialization stage
    acorn128_initialization(k, npub, state);

    //process the associated data
    for (i = 0; i < adlen; i++)
    {
    	//xil_printf("%d ", ciphertextbyte);
        acorn128_enc_onebyte(state, ad[i], &ciphertextbyte, &ksbyte, 0xff, 0xff);
        //xil_printf("%d - ", ciphertextbyte);
    }

    for (i = 0; i < 256/8; i++)
    {
        if ( i == 0 ) plaintextbyte = 0x1;
        else plaintextbyte = 0;

        if ( i < 128/8)   ca = 0xff;
        else ca = 0;

        cb = 0xff;

        acorn128_enc_onebyte(state, plaintextbyte, &ciphertextbyte, &ksbyte, ca, cb);
    }


	//xil_printf("m1: \r\n");
    //for (i = 0; i < 1000; i++) xil_printf("%d ", c[i]);
    //xil_printf("\r\n\r\n");

    //process the plaintext !!!!!!!!!
    for (i = 0; i < mlen; i++)
    {
    	//xil_printf("i:%d m:%d",i,mlen);
    	acorn128_enc_onebyte(state, m[i], &(c[i]), &ksbyte, 0xff, 0 );
    }

	//xil_printf("m2: \r\n");
    //for (i = 0; i < 1000; i++) xil_printf("%d ", c[i]);
    //xil_printf("\r\n\r\n");

    for (i = 0; i < 256/8; i++)
    {
        if (i == 0) plaintextbyte = 0x1;
        else plaintextbyte = 0;

        if ( i < 128/8)   ca = 0xff;
        else ca = 0;

        cb = 0;

        acorn128_enc_onebyte(state, plaintextbyte, &ciphertextbyte, &ksbyte, ca, cb);
    }

    //finalization stage, we assume that the tag length is a multiple of bytes
    acorn128_tag_generation(mlen, adlen, 16, mac, state);

    *clen = mlen + 16;
    memcpy(c+mlen, mac, 16);

    return 0;
}


int crypto_aead_decrypt(
	unsigned char *m,unsigned long long *mlen,
	unsigned char *nsec,
	const unsigned char *c,unsigned long long clen,
	const unsigned char *ad,unsigned long long adlen,
	const unsigned char *npub,
	const unsigned char *k
	)
{

    unsigned long long i;
    unsigned char plaintextbyte, ciphertextbyte, ksbyte;
    unsigned char state[293];
    unsigned char tag[16];
    unsigned char check = 0;
    unsigned char ca, cb;


    if (clen < 16) return -1;

    //initialization stage
    acorn128_initialization(k, npub, state);

    //process the associated data
    for (i = 0; i < adlen; i++)
    {
        acorn128_enc_onebyte(state, ad[i], &ciphertextbyte, &ksbyte, 0xff, 0xff);
    }

    for (i = 0; i < 256/8; i++)
    {
        if ( i == 0 ) plaintextbyte = 0x1;
        else plaintextbyte = 0;

        if ( i < 128/8)   ca = 0xff;
        else ca = 0;

        cb = 0xff;

        acorn128_enc_onebyte(state, plaintextbyte, &ciphertextbyte, &ksbyte, ca, cb);
    }

    //process the ciphertext
    *mlen = clen - 16;

    for (i = 0; i < *mlen; i++)
    {
        acorn128_dec_onebyte(state, &m[i], c[i], &ksbyte, 0xff, 0);
    }

    for (i = 0; i < 256/8; i++)
    {
        if ( i == 0 ) plaintextbyte = 0x1;
        else plaintextbyte = 0;

        if ( i < 128/8)   ca = 0xff;
        else ca = 0;

        cb = 0;

        acorn128_enc_onebyte(state, plaintextbyte, &ciphertextbyte, &ksbyte, ca, cb);
    }

    //finalization stage, we assume that the tag length is a multiple of bytes
    acorn128_tag_generation(*mlen, adlen, 16, tag, state);

    for (i = 0; i  < 16; i++) check |= (tag[i] ^ c[clen - 16 + i]);
    if (check == 0) return 0;
    else return -1;
}


int main()
{
    init_platform();

    xil_printf("== Entering Main ==\r\n\r\n");

/*
	// initialize ip
	XAcorn128_dec_onebyte_Initialize(&decInst, XPAR_ACORN128_DEC_ONEBYTE_0_DEVICE_ID);
	// wait for initialization completes
	while (!XAcorn128_dec_onebyte_IsReady(&decInst));
	xil_printf("dec ready: %d\r\n",XAcorn128_dec_onebyte_IsReady(&decInst));

	// initialize ip
	XAcorn128_enc_onebyte_Initialize(&encInst, XPAR_ACORN128_ENC_ONEBYTE_0_DEVICE_ID);
	// wait for initialization completes
	while (!XAcorn128_enc_onebyte_IsReady(&encInst));
	xil_printf("enc ready: %d\r\n\r\n",XAcorn128_enc_onebyte_IsReady(&encInst));

*/



    unsigned char t,state[500];
    unsigned long long s[500];
    int i,j ;

    unsigned char plaintext[4096];
    unsigned char ad[4096];
    unsigned char ciphertext[4096];
    unsigned char key[16];
    unsigned char iv[16];
    unsigned char mac[16];
    unsigned long long  msglen, adlen, clen;    // msg, adlen, clen in bytes.
    unsigned char maclen = 16;
    unsigned int  success;

    msglen = 1003;
    adlen = 1003;

    for (i = 0; i < 16; i++) key[i] = 0;
    for (i = 0; i < 16; i++) iv[i] = 0;
    key[0] = 1;

    for (i = 0; i < 4096; i++) plaintext[i]  = i%256;
    for (i = 0; i < 4096; i++) ciphertext[i] = 0;
    for (i = 0; i < 4096; i++) ad[i] = i%7;

    xil_printf("== Encrypting Phase ==\r\n\r\n");
    crypto_aead_encrypt(ciphertext,&clen,plaintext,msglen,ad,adlen,0,iv,key);

    xil_printf("== Decrypting Phase ==\r\n\r\n");
    for( i = 0; i < msglen; i++) plaintext[i] = 0;
    t = crypto_aead_decrypt(plaintext,&msglen,0,ciphertext,clen,ad,adlen,iv,key);

    for( i = 0; i < msglen; i++) xil_printf("%2x ", plaintext[i]);


    xil_printf("\n\r\n\rt: %d", t);

    xil_printf("\n\r\n\rThe tag is: ");
    for( i = 0; i < 16; i++) {
    	int sonuc = ciphertext[msglen+i];
    	xil_printf("%2x ", ciphertext[msglen+i]);
    }

    cleanup_platform();

    return 0;
}
