__kernel void action$194(__global bool * input4$FIFO$ptr , __global bool * output4$FIFO$ptr) {
	int input4$FIFO$index = get_global_id(0)* 6;
	int output4$FIFO$index = get_global_id(0)* 4;
	bool IN4[6];
	for(int i = 0 ; i < 6 ; i++ ) {
		IN4[i]= input4$FIFO$ptr[input4$FIFO$index++];
	}
	bool OUT_S4[4];
	if((IN4[0]== false && IN4[1]== false && IN4[2]== false && IN4[3]== false && IN4[4]== false && IN4[5]== false)) {
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== false && IN4[3]== false && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= true;}
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== false && IN4[3]== true && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== false && IN4[3]== true && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== true && IN4[3]== false && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== true && IN4[3]== false && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== true && IN4[3]== true && IN4[4]== false && IN4[5]== false) {
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== true && IN4[3]== true && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== false && IN4[3]== false && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== false && IN4[3]== false && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== false && IN4[3]== true && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== false && IN4[3]== true && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== true && IN4[3]== false && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== true && IN4[3]== false && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== true && IN4[3]== true && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== true && IN4[3]== true && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	
	if(IN4[0]== false && IN4[1]== false && IN4[2]== false && IN4[3]== false && IN4[4]== false && IN4[5]== true) {
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== false && IN4[3]== false && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== false && IN4[3]== true && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== false && IN4[3]== true && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== true && IN4[3]== false && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== true && IN4[3]== false && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== true && IN4[3]== true && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== false && IN4[2]== true && IN4[3]== true && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== false && IN4[3]== false && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== false && IN4[3]== false && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== false && IN4[3]== true && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== false && IN4[3]== true && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== true && IN4[3]== false && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== true && IN4[3]== false && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== true && IN4[3]== true && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== false && IN4[1]== true && IN4[2]== true && IN4[3]== true && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	
	if(IN4[0]== true && IN4[1]== false && IN4[2]== false && IN4[3]== false && IN4[4]== false && IN4[5]== false) {
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== false && IN4[3]== false && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== false && IN4[3]== true && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== false && IN4[3]== true && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== true && IN4[3]== false && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== true && IN4[3]== false && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== true && IN4[3]== true && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== true && IN4[3]== true && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== false && IN4[3]== false && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== false && IN4[3]== false && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== false && IN4[3]== true && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== false && IN4[3]== true && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== true && IN4[3]== false && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== true && IN4[3]== false && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== true && IN4[3]== true && IN4[4]== false && IN4[5]== false) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== true && IN4[3]== true && IN4[4]== true && IN4[5]== false) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	
	if(IN4[0]== true && IN4[1]== false && IN4[2]== false && IN4[3]== false && IN4[4]== false && IN4[5]== true) {
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== false && IN4[3]== false && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== false && IN4[3]== true && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== false && IN4[3]== true && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== true && IN4[3]== false && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== true && IN4[3]== false && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== true && IN4[3]== true && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== false && IN4[2]== true && IN4[3]== true && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== false && IN4[3]== false && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== false && IN4[3]== false && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== false && IN4[3]== true && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== false && IN4[3]== true && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== true && IN4[3]== false && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= false;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== true && IN4[3]== false && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= true; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== true && IN4[3]== true && IN4[4]== false && IN4[5]== true) { 
		OUT_S4[0]= false;
		OUT_S4[1]= false;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	else if (IN4[0]== true && IN4[1]== true && IN4[2]== true && IN4[3]== true && IN4[4]== true && IN4[5]== true) { 
		OUT_S4[0]= true;
		OUT_S4[1]= true;
		OUT_S4[2]= true;
		OUT_S4[3]= false; }
	
	for(int i = 0 ; i < 4 ; i++ ) {
		output4$FIFO$ptr[output4$FIFO$index++]= OUT_S4[i];
	}
 }
