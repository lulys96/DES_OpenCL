__kernel void action$146(__global bool * input1$FIFO$ptr , __global bool * output1$FIFO$ptr) {
	int input1$FIFO$index = get_global_id(0)* 6;
	int output1$FIFO$index = get_global_id(0)* 4;
	bool IN1[6];
	for(int i = 0 ; i < 6 ; i++ ) {
		IN1[i]= input1$FIFO$ptr[input1$FIFO$index++];
	}
	bool OUT_S1[4];
	if (IN1[0]== false && IN1[1]== false && IN1[2]== false && IN1[3]== false && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if (IN1[0]== false && IN1[1]== false && IN1[2]== false && IN1[3]== false && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0] = false;
		OUT_S1[1]= true;
		OUT_S1[2]= false; 
		OUT_S1[3]= false; }
	else if (IN1[0]== false && IN1[1]== false && IN1[2]== false && IN1[3]== true && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0] = true;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if (IN1[0]== false && IN1[1]== false && IN1[2]== false && IN1[3]== true && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if (IN1[0]== false && IN1[1]== false && IN1[2]== true && IN1[3]== false && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== false && IN1[2]== true && IN1[3]== false && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== false && IN1[2]== true && IN1[3]== true && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== false && IN1[2]== true && IN1[3]== true && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0] = true;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== false && IN1[3] == false && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== false && IN1[3]== false && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== false && IN1[3]== true && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== false && IN1[3]== true && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== true && IN1[3]== false && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== true && IN1[3]== false && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0] = true;
		OUT_S1[1] = false;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== true && IN1[3]== true && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== true && IN1[3]== true && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	
	if(IN1[0]== false && IN1[1]== false && IN1[2]== false && IN1[3]== false && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= false;}
	else if (IN1[0]== false && IN1[1]== false && IN1[2]== false && IN1[3]== false && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if (IN1[0]== false && IN1[1]== false && IN1[2]== false && IN1[3]== true && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if (IN1[0]== false && IN1[1]== false && IN1[2]== false && IN1[3]== true && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== false && IN1[2]== true && IN1[3]== false && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== false && IN1[2]== true && IN1[3]== false && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== false && IN1[2]== true && IN1[3]== true && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== false && IN1[2]== true && IN1[3]== true && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== false && IN1[3]== false && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== false && IN1[3]== false && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== false && IN1[3]== true && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== false && IN1[3]== true && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== true && IN1[3]== false && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== true && IN1[3]== false && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== true && IN1[3]== true && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== false && IN1[1]== true && IN1[2]== true && IN1[3]== true && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= false;}

	if(IN1[0]== true && IN1[1]== false && IN1[2]== false && IN1[3]== false && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== false && IN1[3]== false && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== false && IN1[3]== true && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== false && IN1[3]== true && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== true && IN1[3]== false && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== true && IN1[3]== false && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== true && IN1[3]== true && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== true && IN1[3]== true && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== false && IN1[3]== false && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== false && IN1[3]== false && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== false && IN1[3]== true && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== false && IN1[3]== true && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== true && IN1[3]== false && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== true && IN1[3]== false && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== true && IN1[3]== true && IN1[4]== false && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if (IN1[0]== true && IN1[1]== true && IN1[2]== true && IN1[3]== true && IN1[4]== true && IN1[5]== false) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }

	if(IN1[0]== true && IN1[1]== false && IN1[2]== false && IN1[3]== false && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== false && IN1[3]== false && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== false && IN1[3]== true && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== false && IN1[3]== true && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== true && IN1[3]== false && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== true && IN1[3]== false && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== true && IN1[3]== true && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== false && IN1[2]== true && IN1[3]== true && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== false && IN1[3]== false && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== false && IN1[3]== false && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== false && IN1[3]== true && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= true; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== false && IN1[3]== true && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== true && IN1[3]== false && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= false;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== true && IN1[3]== false && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= false;
		OUT_S1[2]= false;
		OUT_S1[3]= false; }
	else if(IN1[0]== true && IN1[1]== true && IN1[2]== true && IN1[3]== true && IN1[4]== false && IN1[5]== true) {
		OUT_S1[0]= false;
		OUT_S1[1]= true;
		OUT_S1[2]= true;
		OUT_S1[3]= false; }
	else if (IN1[0]== true && IN1[1]== true && IN1[2]== true && IN1[3]== true && IN1[4]== true && IN1[5]== true) {
		OUT_S1[0]= true;
		OUT_S1[1]= true;
		OUT_S1[2]= false;
		OUT_S1[3]= true; }


	for(int i = 0 ; i < 4 ; i++ ) {

		output1$FIFO$ptr[output1$FIFO$index++]= OUT_S1[i];
	}	
}