__kernel void action$82(__global bool * input1$FIFO$ptr , __global bool * input2$FIFO$ptr , __global bool * output_s1$FIFO$ptr , __global bool * output_s2$FIFO$ptr , __global bool * output_s3$FIFO$ptr , __global bool * output_s4$FIFO$ptr , __global bool * output_s5$FIFO$ptr , __global bool * output_s6$FIFO$ptr , __global bool * output_s7$FIFO$ptr , __global bool * output_s8$FIFO$ptr) {
	int input1$FIFO$index = get_global_id(0)* 48;
	int input2$FIFO$index = get_global_id(0)* 48;
	int output_s1$FIFO$index = get_global_id(0)* 6;
	int output_s2$FIFO$index = get_global_id(0)* 6;
	int output_s3$FIFO$index = get_global_id(0)* 6;
	int output_s4$FIFO$index = get_global_id(0)* 6;
	int output_s5$FIFO$index = get_global_id(0)* 6;
	int output_s6$FIFO$index = get_global_id(0)* 6;
	int output_s7$FIFO$index = get_global_id(0)* 6;
	int output_s8$FIFO$index = get_global_id(0)* 6;
	bool IN1[48];
	for(int i = 0 ; i < 48 ; i++ ) {
		IN1[i]= input1$FIFO$ptr[input1$FIFO$index++];
	}
	bool IN2[48];
	for(int i = 0 ; i < 48 ; i++ ) {
		IN2[i]= input2$FIFO$ptr[input2$FIFO$index++];
	}
	bool OUT_S1[6];
	bool OUT_S2[6];
	bool OUT_S3[6];
	bool OUT_S4[6];
	bool OUT_S5[6];
	bool OUT_S6[6];
	bool OUT_S7[6];
	bool OUT_S8[6];
	OUT_S1[0]=((IN1[0]&&(! IN2[0]))||((! IN1[0])&& IN2[0]));
	OUT_S1[1]=((IN1[1]&&(! IN2[1]))||((! IN1[1])&& IN2[1]));
	OUT_S1[2]=((IN1[2]&&(! IN2[2]))||((! IN1[2])&& IN2[2]));
	OUT_S1[3]=((IN1[3]&&(! IN2[3]))||((! IN1[3])&& IN2[3]));
	OUT_S1[4]=((IN1[4]&&(! IN2[4]))||((! IN1[4])&& IN2[4]));
	OUT_S1[5]=((IN1[5]&&(! IN2[5]))||((! IN1[5])&& IN2[5]));
	OUT_S2[0]=((IN1[6]&&(! IN2[6]))||((! IN1[6])&& IN2[6]));
	OUT_S2[1]=((IN1[7]&&(! IN2[7]))||((! IN1[7])&& IN2[7]));
	OUT_S2[2]=((IN1[8]&&(! IN2[8]))||((! IN1[8])&& IN2[8]));
	OUT_S2[3]=((IN1[9]&&(! IN2[9]))||((! IN1[9])&& IN2[9]));
	OUT_S2[4]=((IN1[10]&&(! IN2[10]))||((! IN1[10])&& IN2[10]));
	OUT_S2[5]=((IN1[11]&&(! IN2[11]))||((! IN1[11])&& IN2[11]));
	OUT_S3[0]=((IN1[12]&&(! IN2[12]))||((! IN1[12])&& IN2[12]));
	OUT_S3[1]=((IN1[13]&&(! IN2[13]))||((! IN1[13])&& IN2[13]));
	OUT_S3[2]=((IN1[14]&&(! IN2[14]))||((! IN1[14])&& IN2[14]));
	OUT_S3[3]=((IN1[15]&&(! IN2[15]))||((! IN1[15])&& IN2[15]));
	OUT_S3[4]=((IN1[16]&&(! IN2[16]))||((! IN1[16])&& IN2[16]));
	OUT_S3[5]=((IN1[17]&&(! IN2[17]))||((! IN1[17])&& IN2[17]));
	OUT_S4[0]=((IN1[18]&&(! IN2[18]))||((! IN1[18])&& IN2[18]));
	OUT_S4[1]=((IN1[19]&&(! IN2[19]))||((! IN1[19])&& IN2[19]));
	OUT_S4[2]=((IN1[20]&&(! IN2[20]))||((! IN1[20])&& IN2[20]));
	OUT_S4[3]=((IN1[21]&&(! IN2[21]))||((! IN1[21])&& IN2[21]));
	OUT_S4[4]=((IN1[22]&&(! IN2[22]))||((! IN1[22])&& IN2[22]));
	OUT_S4[5]=((IN1[23]&&(! IN2[23]))||((! IN1[23])&& IN2[23]));
	OUT_S5[0]=((IN1[24]&&(! IN2[24]))||((! IN1[24])&& IN2[24]));
	OUT_S5[1]=((IN1[25]&&(! IN2[25]))||((! IN1[25])&& IN2[25]));
	OUT_S5[2]=((IN1[26]&&(! IN2[26]))||((! IN1[26])&& IN2[26]));
	OUT_S5[3]=((IN1[27]&&(! IN2[27]))||((! IN1[27])&& IN2[27]));
	OUT_S5[4]=((IN1[28]&&(! IN2[28]))||((! IN1[28])&& IN2[28]));
	OUT_S5[5]=((IN1[29]&&(! IN2[29]))||((! IN1[29])&& IN2[29]));
	OUT_S6[0]=((IN1[30]&&(! IN2[30]))||((! IN1[30])&& IN2[30]));
	OUT_S6[1]=((IN1[31]&&(! IN2[31]))||((! IN1[31])&& IN2[31]));
	OUT_S6[2]=((IN1[32]&&(! IN2[32]))||((! IN1[32])&& IN2[32]));
	OUT_S6[3]=((IN1[33]&&(! IN2[33]))||((! IN1[33])&& IN2[33]));
	OUT_S6[4]=((IN1[34]&&(! IN2[34]))||((! IN1[34])&& IN2[34]));
	OUT_S6[5]=((IN1[35]&&(! IN2[35]))||((! IN1[35])&& IN2[35]));
	OUT_S7[0]=((IN1[36]&&(! IN2[36]))||((! IN1[36])&& IN2[36]));
	OUT_S7[1]=((IN1[37]&&(! IN2[37]))||((! IN1[37])&& IN2[37]));
	OUT_S7[2]=((IN1[38]&&(! IN2[38]))||((! IN1[38])&& IN2[38]));
	OUT_S7[3]=((IN1[39]&&(! IN2[39]))||((! IN1[39])&& IN2[39]));
	OUT_S7[4]=((IN1[40]&&(! IN2[40]))||((! IN1[40])&& IN2[40]));
	OUT_S7[5]=((IN1[41]&&(! IN2[41]))||((! IN1[41])&& IN2[41]));
	OUT_S8[0]=((IN1[42]&&(! IN2[42]))||((! IN1[42])&& IN2[42]));
	OUT_S8[1]=((IN1[43]&&(! IN2[43]))||((! IN1[43])&& IN2[43]));
	OUT_S8[2]=((IN1[44]&&(! IN2[44]))||((! IN1[44])&& IN2[44]));
	OUT_S8[3]=((IN1[45]&&(! IN2[45]))||((! IN1[45])&& IN2[45]));
	OUT_S8[4]=((IN1[46]&&(! IN2[46]))||((! IN1[46])&& IN2[46]));
	OUT_S8[5]=((IN1[47]&&(! IN2[47]))||((! IN1[47])&& IN2[47]));
	for(int i = 0 ; i < 6 ; i++ ) {
		output_s1$FIFO$ptr[output_s1$FIFO$index++]= OUT_S1[i];
	}
	for(int i = 0 ; i < 6 ; i++ ) {
		output_s2$FIFO$ptr[output_s2$FIFO$index++]= OUT_S2[i];
	}
	for(int i = 0 ; i < 6 ; i++ ) {
		output_s3$FIFO$ptr[output_s3$FIFO$index++]= OUT_S3[i];
	}
	for(int i = 0 ; i < 6 ; i++ ) {
		output_s4$FIFO$ptr[output_s4$FIFO$index++]= OUT_S4[i];
	}
	for(int i = 0 ; i < 6 ; i++ ) {
		output_s5$FIFO$ptr[output_s5$FIFO$index++]= OUT_S5[i];
	}
	for(int i = 0 ; i < 6 ; i++ ) {
		output_s6$FIFO$ptr[output_s6$FIFO$index++]= OUT_S6[i];
	}
	for(int i = 0 ; i < 6 ; i++ ) {
		output_s7$FIFO$ptr[output_s7$FIFO$index++]= OUT_S7[i];
	}
	for(int i = 0 ; i < 6 ; i++ ) {
		output_s8$FIFO$ptr[output_s8$FIFO$index++]= OUT_S8[i];
	}
 }
