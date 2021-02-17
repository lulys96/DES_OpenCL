__kernel void action$34(__global bool * input_L$FIFO$ptr , __global bool * input_R$FIFO$ptr , __global bool * Ki$FIFO$ptr) {
	int input_L$FIFO$index = get_global_id(0)* 28;
	int input_R$FIFO$index = get_global_id(0)* 28;
	int Ki$FIFO$index = get_global_id(0)* 48;
	bool left[28];
	for(int i = 0 ; i < 28 ; i++ ) {
		left[i]= input_L$FIFO$ptr[input_L$FIFO$index++];
	}
	bool right[28];
	for(int i = 0 ; i < 28 ; i++ ) {
		right[i]= input_R$FIFO$ptr[input_R$FIFO$index++];
	}
	bool subkey[48];
	subkey[0]= left[13];
	subkey[1]= left[16];
	subkey[2]= left[10];
	subkey[3]= left[23];
	subkey[4]= left[0];
	subkey[5]= left[4];
	subkey[6]= left[2];
	subkey[7]= left[27];
	subkey[8]= left[14];
	subkey[9]= left[5];
	subkey[10]= left[20];
	subkey[11]= left[9];
	subkey[12]= left[22];
	subkey[13]= left[18];
	subkey[14]= left[11];
	subkey[15]= left[3];
	subkey[16]= left[25];
	subkey[17]= left[7];
	subkey[18]= left[15];
	subkey[19]= left[6];
	subkey[20]= left[26];
	subkey[21]= left[19];
	subkey[22]= left[12];
	subkey[23]= left[1];
	subkey[24]= right[12];
	subkey[25]= right[23];
	subkey[26]= right[2];
	subkey[27]= right[8];
	subkey[28]= right[18];
	subkey[29]= right[26];
	subkey[30]= right[1];
	subkey[31]= right[11];
	subkey[32]= right[22];
	subkey[33]= right[16];
	subkey[34]= right[4];
	subkey[35]= right[19];
	subkey[36]= right[15];
	subkey[37]= right[20];
	subkey[38]= right[10];
	subkey[39]= right[27];
	subkey[40]= right[5];
	subkey[41]= right[24];
	subkey[42]= right[17];
	subkey[43]= right[13];
	subkey[44]= right[21];
	subkey[45]= right[7];
	subkey[46]= right[0];
	subkey[47]= right[3];
	for(int i = 0 ; i < 48 ; i++ ) {
		Ki$FIFO$ptr[Ki$FIFO$index++]= subkey[i];
	}
 }
