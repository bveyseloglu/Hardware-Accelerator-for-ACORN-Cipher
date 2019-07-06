


/*
#define maj(x,y,z)     (  ((x) & (y)) ^ ((x) & (z)) ^ ((y) & (z))  )
#define ch(x,y,z)      (  ((x) & (y)) ^ ( ((x) ^ 1) & (z))  )
*/

unsigned char maj(unsigned char x,unsigned char y,unsigned char z)
{
	return ((x) & (y)) ^ ((x) & (z)) ^ ((y) & (z));
}

unsigned char ch(unsigned char x,unsigned char y,unsigned char z)
{
	return ((x) & (y)) ^ ( ((x) ^ 1) & (z));
}

unsigned char KSG128(unsigned char *state)
{
    return ( state[12] ^ state[154] ^ maj(state[235], state[61], state[193]) ^ ch(state[230], state[111], state[66]) );
}

unsigned char FBK128(unsigned char *state, unsigned char *ks, unsigned char ca, unsigned char cb)
{
    unsigned char f;
    *ks = KSG128(state);
    f  = state[0] ^ (state[107] ^ 1) ^ maj(state[244], state[23], state[160]) ^ (ca & state[196]) ^ (cb & (*ks));
    return f;
}

//encrypt one bit
void Encrypt_StateUpdate128_1bit(unsigned char *state, unsigned char plaintextbit, unsigned char *ciphertextbit, unsigned char *ks, unsigned char ca, unsigned char cb)
{
    unsigned int  j;
    unsigned char f;

	/*step 1. update using six LFSRs */
    state[289] ^= state[235] ^ state[230];
    state[230] ^= state[196] ^ state[193];
    state[193] ^= state[160] ^ state[154];
    state[154] ^= state[111] ^ state[107];
    state[107] ^= state[66]  ^ state[61];
    state[61]  ^= state[23]  ^ state[0];

	/*step 2. generate keystream bit */
    f  = FBK128(state, ks, ca, cb);

	/*step 3. generate the nonlinear feedback bit */
    for (j = 0; j <= 291; j++) state[j] = state[j+1];

	/*step 4. shift the 293-bit register with the feedback bit fi */
    state[292] = f ^ plaintextbit;
    *ciphertextbit = *ks ^ plaintextbit;
}


// encrypt one byte
int acorn128_enc_onebyte(unsigned char state[293], unsigned char plaintextbyte,
       unsigned char ciphertextbyte, unsigned char ksbyte, unsigned char cabyte, unsigned char cbbyte)
{

#pragma HLS INTERFACE s_axilite port=state //ya da s_axilite
#pragma HLS INTERFACE s_axilite port=plaintextbyte
#pragma HLS INTERFACE s_axilite port=ciphertextbyte
#pragma HLS INTERFACE s_axilite port=ksbyte
#pragma HLS INTERFACE s_axilite port=cabyte
#pragma HLS INTERFACE s_axilite port=cbbyte
#pragma HLS INTERFACE s_axilite port=return

    unsigned char i,t[4];
    unsigned char plaintextbit,ciphertextbit,kstem,ca,cb;

    ciphertextbyte = 0;
    kstem = 0;
    ksbyte = 0;

    for (i = 0; i < 8; i++)
    {
#pragma HLS UNROLL
        ca = (cabyte >> i) & 1;
        cb = (cbbyte >> i) & 1;
        plaintextbit = (plaintextbyte >> i) & 1;
        Encrypt_StateUpdate128_1bit(state, plaintextbit, &ciphertextbit, &kstem, ca, cb);
        ciphertextbyte |= (ciphertextbit << i);
        ksbyte |= (kstem << i);
    }

    return 0;
}
