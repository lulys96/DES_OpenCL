__kernel void action$16(__global bool * input$FIFO$ptr , __global bool * output$FIFO$ptr) {
	int input$FIFO$index = get_global_id(0)* 32;
	int output$FIFO$index = get_global_id(0)* 48;
	bool IN1[32];
	for(int i = 0 ; i < 32 ; i++ ) {
		IN1[i]= input$FIFO$ptr[input$FIFO$index++];
	}
	bool OUT1[48];
	OUT1[0]= IN1[31];
	OUT1[1]= IN1[0];
	OUT1[2]= IN1[1];
	OUT1[3]= IN1[2];
	OUT1[4]= IN1[3];
	OUT1[5]= IN1[4];
	OUT1[6]= IN1[3];
	OUT1[7]= IN1[4];
	OUT1[8]= IN1[5];
	OUT1[9]= IN1[6];
	OUT1[10]= IN1[7];
	OUT1[11]= IN1[8];
	OUT1[12]= IN1[7];
	OUT1[13]= IN1[8];
	OUT1[14]= IN1[9];
	OUT1[15]= IN1[10];
	OUT1[16]= IN1[11];
	OUT1[17]= IN1[12];
	OUT1[18]= IN1[11];
	OUT1[19]= IN1[12];
	OUT1[20]= IN1[13];
	OUT1[21]= IN1[14];
	OUT1[22]= IN1[15];
	OUT1[23]= IN1[16];
	OUT1[24]= IN1[15];
	OUT1[25]= IN1[16];
	OUT1[26]= IN1[17];
	OUT1[27]= IN1[18];
	OUT1[28]= IN1[19];
	OUT1[29]= IN1[20];
	OUT1[30]= IN1[19];
	OUT1[31]= IN1[20];
	OUT1[32]= IN1[21];
	OUT1[33]= IN1[22];
	OUT1[34]= IN1[23];
	OUT1[35]= IN1[24];
	OUT1[36]= IN1[23];
	OUT1[37]= IN1[24];
	OUT1[38]= IN1[25];
	OUT1[39]= IN1[26];
	OUT1[40]= IN1[27];
	OUT1[41]= IN1[28];
	OUT1[42]= IN1[27];
	OUT1[43]= IN1[28];
	OUT1[44]= IN1[29];
	OUT1[45]= IN1[30];
	OUT1[46]= IN1[31];
	OUT1[47]= IN1[0];
	for(int i = 0 ; i < 48 ; i++ ) {
		output$FIFO$ptr[output$FIFO$index++]= OUT1[i];
	}
 }
