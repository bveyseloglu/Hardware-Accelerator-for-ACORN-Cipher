
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


//decrypt one bit
void Decrypt_StateUpdate128_1bit(unsigned char *state, unsigned char *plaintextbit, unsigned char ciphertextbit, unsigned char *ks, unsigned char ca, unsigned char cb)
{
    unsigned int  j;
    unsigned char f;

    state[289] ^= state[235] ^ state[230];
    state[230] ^= state[196] ^ state[193];
    state[193] ^= state[160] ^ state[154];
    state[154] ^= state[111] ^ state[107];
    state[107] ^= state[66]  ^ state[61];
    state[61]  ^= state[23]  ^ state[0];

    f = FBK128(state, ks, ca, cb);

    for (j = 0; j <= 291; j++) state[j] = state[j+1];
    *plaintextbit = *ks ^ ciphertextbit;
    state[292] = f ^ *plaintextbit;
}


// decrypt one byte
int acorn128_dec_onebyte(unsigned char state[293], unsigned char plaintextbyte,
       unsigned char ciphertextbyte, unsigned char ksbyte, unsigned char cabyte, unsigned char cbbyte)
{

#pragma HLS INTERFACE s_axilite port=state //ya da s_axilite
#pragma HLS INTERFACE s_axilite port=plaintextbyte
#pragma HLS INTERFACE s_axilite port=ciphertextbyte
#pragma HLS INTERFACE s_axilite port=ksbyte
#pragma HLS INTERFACE s_axilite port=cabyte
#pragma HLS INTERFACE s_axilite port=cbbyte
#pragma HLS INTERFACE s_axilite port=return

    unsigned char i;
    unsigned char plaintextbit,ciphertextbit, ks,ca,cb;

    plaintextbyte = 0;
    for (i = 0; i < 8; i++)
    {
#pragma HLS UNROLL
        ca = (cabyte >> i) & 1;
        cb = (cbbyte >> i) & 1;
        ciphertextbit = (ciphertextbyte >> i) & 1;
        Decrypt_StateUpdate128_1bit(state, &plaintextbit, ciphertextbit, &ks, ca, cb);
        plaintextbyte |= (plaintextbit << i);
    }

    return 0;
}
