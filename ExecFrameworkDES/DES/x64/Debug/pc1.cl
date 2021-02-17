__kernel void action$18(__global bool * input1$FIFO$ptr , __global bool * output_L$FIFO$ptr , __global bool * output_R$FIFO$ptr) {
	int input1$FIFO$index = get_global_id(0)* 64;
	int output_L$FIFO$index = get_global_id(0)* 28;
	int output_R$FIFO$index = get_global_id(0)* 28;
	bool IN1[64];
	for(int i = 0 ; i < 64 ; i++ ) {
		IN1[i]= input1$FIFO$ptr[input1$FIFO$index++];
	}
	bool left[28];
	bool right[28];
	left[0]= IN1[56];
	left[1]= IN1[48];
	left[2]= IN1[40];
	left[3]= IN1[32];
	left[4]= IN1[24];
	left[5]= IN1[16];
	left[6]= IN1[8];
	left[7]= IN1[0];
	left[8]= IN1[57];
	left[9]= IN1[49];
	left[10]= IN1[41];
	left[11]= IN1[33];
	left[12]= IN1[25];
	left[13]= IN1[17];
	left[14]= IN1[8];
	left[15]= IN1[1];
	left[16]= IN1[58];
	left[17]= IN1[50];
	left[18]= IN1[42];
	left[19]= IN1[34];
	left[20]= IN1[26];
	left[21]= IN1[18];
	left[22]= IN1[10];
	left[23]= IN1[2];
	left[24]= IN1[59];
	left[25]= IN1[51];
	left[26]= IN1[43];
	left[27]= IN1[35];
	right[0]= IN1[62];
	right[1]= IN1[54];
	right[2]= IN1[46];
	right[3]= IN1[38];
	right[4]= IN1[30];
	right[5]= IN1[22];
	right[6]= IN1[14];
	right[7]= IN1[6];
	right[8]= IN1[61];
	right[9]= IN1[53];
	right[10]= IN1[45];
	right[11]= IN1[37];
	right[12]= IN1[29];
	right[13]= IN1[21];
	right[14]= IN1[13];
	right[15]= IN1[5];
	right[16]= IN1[60];
	right[17]= IN1[52];
	right[18]= IN1[44];
	right[19]= IN1[36];
	right[20]= IN1[28];
	right[21]= IN1[20];
	right[22]= IN1[12];
	right[23]= IN1[4];
	right[24]= IN1[27];
	right[25]= IN1[19];
	right[26]= IN1[11];
	right[27]= IN1[3];
	for(int i = 0 ; i < 28 ; i++ ) {
		output_L$FIFO$ptr[output_L$FIFO$index++]= left[i];
	}
	for(int i = 0 ; i < 28 ; i++ ) {
		output_R$FIFO$ptr[output_R$FIFO$index++]= right[i];
	}
 }
