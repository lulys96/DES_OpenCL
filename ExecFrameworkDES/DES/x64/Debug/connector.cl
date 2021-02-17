__kernel void action$114(__global bool * input_s1$FIFO$ptr , __global bool * input_s2$FIFO$ptr , __global bool * input_s3$FIFO$ptr , __global bool * input_s4$FIFO$ptr , __global bool * input_s5$FIFO$ptr , __global bool * input_s6$FIFO$ptr , __global bool * input_s7$FIFO$ptr , __global bool * input_s8$FIFO$ptr , __global bool * output$FIFO$ptr) {
	int input_s1$FIFO$index = get_global_id(0)* 4;
	int input_s2$FIFO$index = get_global_id(0)* 4;
	int input_s3$FIFO$index = get_global_id(0)* 4;
	int input_s4$FIFO$index = get_global_id(0)* 4;
	int input_s5$FIFO$index = get_global_id(0)* 4;
	int input_s6$FIFO$index = get_global_id(0)* 4;
	int input_s7$FIFO$index = get_global_id(0)* 4;
	int input_s8$FIFO$index = get_global_id(0)* 4;
	int output$FIFO$index = get_global_id(0)* 32;
	bool S1[4];
	for(int i = 0 ; i < 4 ; i++ ) {
		S1[i]= input_s1$FIFO$ptr[input_s1$FIFO$index++];
	}
	bool S2[4];
	for(int i = 0 ; i < 4 ; i++ ) {
		S2[i]= input_s2$FIFO$ptr[input_s2$FIFO$index++];
	}
	bool S3[4];
	for(int i = 0 ; i < 4 ; i++ ) {
		S3[i]= input_s3$FIFO$ptr[input_s3$FIFO$index++];
	}
	bool S4[4];
	for(int i = 0 ; i < 4 ; i++ ) {
		S4[i]= input_s4$FIFO$ptr[input_s4$FIFO$index++];
	}
	bool S5[4];
	for(int i = 0 ; i < 4 ; i++ ) {
		S5[i]= input_s5$FIFO$ptr[input_s5$FIFO$index++];
	}
	bool S6[4];
	for(int i = 0 ; i < 4 ; i++ ) {
		S6[i]= input_s6$FIFO$ptr[input_s6$FIFO$index++];
	}
	bool S7[4];
	for(int i = 0 ; i < 4 ; i++ ) {
		S7[i]= input_s7$FIFO$ptr[input_s7$FIFO$index++];
	}
	bool S8[4];
	for(int i = 0 ; i < 4 ; i++ ) {
		S8[i]= input_s8$FIFO$ptr[input_s8$FIFO$index++];
	}
	bool OUT1[32];
	OUT1[0]= S1[0];
	OUT1[1]= S1[1];
	OUT1[2]= S1[2];
	OUT1[3]= S1[3];
	OUT1[4]= S2[0];
	OUT1[5]= S2[1];
	OUT1[6]= S2[2];
	OUT1[7]= S2[3];
	OUT1[8]= S3[0];
	OUT1[9]= S3[1];
	OUT1[10]= S3[2];
	OUT1[11]= S3[3];
	OUT1[12]= S4[0];
	OUT1[13]= S4[1];
	OUT1[14]= S4[2];
	OUT1[15]= S4[3];
	OUT1[16]= S5[0];
	OUT1[17]= S5[1];
	OUT1[18]= S5[2];
	OUT1[19]= S5[3];
	OUT1[20]= S6[0];
	OUT1[21]= S6[1];
	OUT1[22]= S6[2];
	OUT1[23]= S6[3];
	OUT1[24]= S7[0];
	OUT1[25]= S7[1];
	OUT1[26]= S7[2];
	OUT1[27]= S7[3];
	OUT1[28]= S8[0];
	OUT1[29]= S8[1];
	OUT1[30]= S8[2];
	OUT1[31]= S8[3];
	for(int i = 0 ; i < 32 ; i++ ) {
		output$FIFO$ptr[output$FIFO$index++]= OUT1[i];
	}
 }
