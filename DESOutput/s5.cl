__kernel void action$226(__global bool * input5$FIFO$ptr , __global bool * output5$FIFO$ptr) {
	int input5$FIFO$index = get_global_id(0)* 6;
	int output5$FIFO$index = get_global_id(0)* 4;
	bool IN5[6];
	for(int i = 0 ; i < 6 ; i++ ) {
		IN5[i]= input5$FIFO$ptr[input5$FIFO$index++];
	}
	bool OUT_S5[4];
	if(IN5[0]== false && IN5[1]== false && IN5[2]== false && IN5[3]== false && IN5[4]== false && IN5[5]== false) {
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== false && IN5[3]== false && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== false && IN5[3]== true && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== false && IN5[3]== true && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== true && IN5[3]== false && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== true && IN5[3]== false && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== true && IN5[3]== true && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== true && IN5[3]== true && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== false && IN5[3]== false && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== false && IN5[3]== false && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== false && IN5[3]== true && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== false && IN5[3]== true && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== true && IN5[3]== false && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== true && IN5[3]== false && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== true && IN5[3]== true && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== true && IN5[3]== true && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	
	if(IN5[0]== false && IN5[1]== false && IN5[2]== false && IN5[3]== false && IN5[4]== false && IN5[5]== true) {
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== false && IN5[3]== false && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== false && IN5[3]== true && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== false && IN5[3]== true && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== true && IN5[3]== false && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== true && IN5[3]== false && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== true && IN5[3]== true && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== false && IN5[2]== true && IN5[3]== true && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== false && IN5[3]== false && IN5[4]== false && IN5[5]== true) { OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== false && IN5[3]== false && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== false && IN5[3]== true && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== false && IN5[3]== true && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== true && IN5[3]== false && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== true && IN5[3]== false && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== true && IN5[3]== true && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== false && IN5[1]== true && IN5[2]== true && IN5[3]== true && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	
	if(IN5[0]== true && IN5[1]== false && IN5[2]== false && IN5[3]== false && IN5[4]== false && IN5[5]== false) {
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== false && IN5[3]== false && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== false && IN5[3]== true && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== false && IN5[3]== true && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== true && IN5[3]== false && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== true && IN5[3]== false && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== true && IN5[3]== true && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== true && IN5[3]== true && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== false && IN5[3]== false && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== false && IN5[3]== false && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== false && IN5[3]== true && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== false && IN5[3]== true && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== true && IN5[3]== false && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== true && IN5[3]== false && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== true && IN5[3]== true && IN5[4]== false && IN5[5]== false) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== true && IN5[3]== true && IN5[4]== true && IN5[5]== false) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	
	if(IN5[0]== true && IN5[1]== false && IN5[2]== false && IN5[3]== false && IN5[4]== false && IN5[5]== true) {
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== false && IN5[3]== false && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== false && IN5[3]== true && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== false && IN5[3]== true && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== true && IN5[3]== false && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== true && IN5[3]== false && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== true && IN5[3]== true && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== false && IN5[2]== true && IN5[3]== true && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== false && IN5[3]== false && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== false && IN5[3]== false && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= true;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== false && IN5[3]== true && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== false && IN5[3]== true && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== true && IN5[3]== false && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= true;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== true && IN5[3]== false && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= false; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== true && IN5[3]== true && IN5[4]== false && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= true;
		OUT_S5[2]= false;
		OUT_S5[3]= true; }
	else if (IN5[0]== true && IN5[1]== true && IN5[2]== true && IN5[3]== true && IN5[4]== true && IN5[5]== true) { 
		OUT_S5[0]= false;
		OUT_S5[1]= false;
		OUT_S5[2]= true;
		OUT_S5[3]= true; }
	
	for(int i = 0 ; i < 4 ; i++ ) {
		output5$FIFO$ptr[output5$FIFO$index++]= OUT_S5[i];
	}
 }
