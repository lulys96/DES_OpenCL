__kernel void action$17(__global bool * input1$FIFO$ptr , __global bool * out_LEFT$FIFO$ptr , __global bool * out_RIGHT$FIFO$ptr) {
	int input1$FIFO$index = get_global_id(0)* 64;
	int out_LEFT$FIFO$index = get_global_id(0)* 32;
	int out_RIGHT$FIFO$index = get_global_id(0)* 32;
	bool IN1[64];
	for(int i = 0 ; i < 64 ; i++ ) {
		IN1[i]= input1$FIFO$ptr[input1$FIFO$index++];
	}
	bool left[32];
	bool right[32];
	left[0]= IN1[57];
	left[1]= IN1[49];
	left[2]= IN1[41];
	left[3]= IN1[33];
	left[4]= IN1[25];
	left[5]= IN1[17];
	left[6]= IN1[9];
	left[7]= IN1[1];
	left[8]= IN1[59];
	left[9]= IN1[51];
	left[10]= IN1[43];
	left[11]= IN1[35];
	left[12]= IN1[27];
	left[13]= IN1[19];
	left[14]= IN1[11];
	left[15]= IN1[3];
	left[16]= IN1[61];
	left[17]= IN1[53];
	left[18]= IN1[45];
	left[19]= IN1[37];
	left[20]= IN1[29];
	left[21]= IN1[21];
	left[22]= IN1[13];
	left[23]= IN1[5];
	left[24]= IN1[63];
	left[25]= IN1[55];
	left[26]= IN1[47];
	left[27]= IN1[39];
	left[28]= IN1[31];
	left[29]= IN1[23];
	left[30]= IN1[15];
	left[31]= IN1[7];
	right[0]= IN1[56];
	right[1]= IN1[48];
	right[2]= IN1[40];
	right[3]= IN1[32];
	right[4]= IN1[24];
	right[5]= IN1[16];
	right[6]= IN1[8];
	right[7]= IN1[0];
	right[8]= IN1[58];
	right[9]= IN1[50];
	right[10]= IN1[42];
	right[11]= IN1[34];
	right[12]= IN1[26];
	right[13]= IN1[18];
	right[14]= IN1[10];
	right[15]= IN1[2];
	right[16]= IN1[60];
	right[17]= IN1[52];
	right[18]= IN1[44];
	right[19]= IN1[36];
	right[20]= IN1[28];
	right[21]= IN1[20];
	right[22]= IN1[12];
	right[23]= IN1[4];
	right[24]= IN1[62];
	right[25]= IN1[54];
	right[26]= IN1[46];
	right[27]= IN1[38];
	right[28]= IN1[30];
	right[29]= IN1[22];
	right[30]= IN1[14];
	right[31]= IN1[6];
	for(int i = 0 ; i < 32 ; i++ ) {
		out_LEFT$FIFO$ptr[out_LEFT$FIFO$index++]= left[i];
	}
	for(int i = 0 ; i < 32 ; i++ ) {
		out_RIGHT$FIFO$ptr[out_RIGHT$FIFO$index++]= right[i];
	}
 }
