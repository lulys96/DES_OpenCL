__kernel void action$242(__global bool * input7$FIFO$ptr , __global bool * output7$FIFO$ptr) {
	int input7$FIFO$index = get_global_id(0)* 6;
	int output7$FIFO$index = get_global_id(0)* 4;
	bool IN7[6];
	for(int i = 0 ; i < 6 ; i++ ) {
		IN7[i]= input7$FIFO$ptr[input7$FIFO$index++];
	}
	bool OUT_S7[4];
	if(IN7[0]== false && IN7[1]== false && IN7[2]== false && IN7[3]== false && IN7[4]== false && IN7[5]== false) {
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== false && IN7[3]== false && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== false && IN7[3]== true && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== false && IN7[3]== true && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== true && IN7[3]== false && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== true && IN7[3]== false && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== true && IN7[3]== true && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== true && IN7[3]== true && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== false && IN7[3]== false && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== false && IN7[3]== false && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== false && IN7[3]== true && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== false && IN7[3]== true && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== true && IN7[3]== false && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== true && IN7[3]== false && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== true && IN7[3]== true && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== true && IN7[3]== true && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	
	if(IN7[0]== false && IN7[1]== false && IN7[2]== false && IN7[3]== false && IN7[4]== false && IN7[5]== true) {
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== false && IN7[3]== false && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== false && IN7[3]== true && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== false && IN7[3]== true && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== true && IN7[3]== false && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== true && IN7[3]== false && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== true && IN7[3]== true && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== false && IN7[2]== true && IN7[3]== true && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== false && IN7[3]== false && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== false && IN7[3]== false && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== false && IN7[3]== true && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== false && IN7[3]== true && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== true && IN7[3]== false && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== true && IN7[3]== false && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== true && IN7[3]== true && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== false && IN7[1]== true && IN7[2]== true && IN7[3]== true && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	
	if(IN7[0]== true && IN7[1]== false && IN7[2]== false && IN7[3]== false && IN7[4]== false && IN7[5]== false) {
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== false && IN7[3]== false && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== false && IN7[3]== true && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== false && IN7[3]== true && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== true && IN7[3]== false && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== true && IN7[3]== false && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== true && IN7[3]== true && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== true && IN7[3]== true && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== false && IN7[3]== false && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== false && IN7[3]== false && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== false && IN7[3]== true && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== false && IN7[3]== true && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== true && IN7[3]== false && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== true && IN7[3]== false && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== true && IN7[3]== true && IN7[4]== false && IN7[5]== false) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== true && IN7[3]== true && IN7[4]== true && IN7[5]== false) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	
	if(IN7[0]== true && IN7[1]== false && IN7[2]== false && IN7[3]== false && IN7[4]== false && IN7[5]== true) {
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== false && IN7[3]== false && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== false && IN7[3]== true && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== false && IN7[3]== true && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== true && IN7[3]== false && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== true && IN7[3]== false && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== true && IN7[3]== true && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== false && IN7[2]== true && IN7[3]== true && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== false && IN7[3]== false && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== false && IN7[3]== false && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== false && IN7[3]== true && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== false && IN7[3]== true && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== true && IN7[3]== false && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== true && IN7[3]== false && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= false; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== true && IN7[3]== true && IN7[4]== false && IN7[5]== true) { 
		OUT_S7[0]= false;
		OUT_S7[1]= false;
		OUT_S7[2]= true;
		OUT_S7[3]= true; }
	else if (IN7[0]== true && IN7[1]== true && IN7[2]== true && IN7[3]== true && IN7[4]== true && IN7[5]== true) { 
		OUT_S7[0]= true;
		OUT_S7[1]= true;
		OUT_S7[2]= false;
		OUT_S7[3]= false; }
	
	for(int i = 0 ; i < 4 ; i++ ) {
		output7$FIFO$ptr[output7$FIFO$index++]= OUT_S7[i];
	}
 }
