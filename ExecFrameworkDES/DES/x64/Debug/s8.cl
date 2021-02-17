__kernel void action$258(__global bool * input8$FIFO$ptr , __global bool * output8$FIFO$ptr) {
	int input8$FIFO$index = get_global_id(0)* 6;
	int output8$FIFO$index = get_global_id(0)* 4;
	bool IN8[6];
	for(int i = 0 ; i < 6 ; i++ ) {
		IN8[i]= input8$FIFO$ptr[input8$FIFO$index++];
	}
	bool OUT_S8[4];
	if(IN8[0]== false && IN8[1]== false && IN8[2]== false && IN8[3]== false && IN8[4]== false && IN8[5]== false) {
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== false && IN8[3]== false && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== false && IN8[3]== true && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== false && IN8[3]== true && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== true && IN8[3]== false && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== true && IN8[3]== false && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== true && IN8[3]== true && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== true && IN8[3]== true && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== false && IN8[3]== false && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== false && IN8[3]== false && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== false && IN8[3]== true && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== false && IN8[3]== true && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== true && IN8[3]== false && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== true && IN8[3]== false && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== true && IN8[3]== true && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== true && IN8[3]== true && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	
	if(IN8[0]== false && IN8[1]== false && IN8[2]== false && IN8[3]== false && IN8[4]== false && IN8[5]== true) {
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== false && IN8[3]== false && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== false && IN8[3]== true && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== false && IN8[3]== true && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== true && IN8[3]== false && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== true && IN8[3]== false && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== true && IN8[3]== true && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== false && IN8[2]== true && IN8[3]== true && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== false && IN8[3]== false && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== false && IN8[3]== false && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= false; 
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== false && IN8[3]== true && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== false && IN8[3]== true && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== true && IN8[3]== false && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== true && IN8[3]== false && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== true && IN8[3]== true && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== false && IN8[1]== true && IN8[2]== true && IN8[3]== true && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	
	if(IN8[0]== true && IN8[1]== false && IN8[2]== false && IN8[3]== false && IN8[4]== false && IN8[5]== false) {
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== false && IN8[3]== false && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== false && IN8[3]== true && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== false && IN8[3]== true && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== true && IN8[3]== false && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== true && IN8[3]== false && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== true && IN8[3]== true && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== true && IN8[3]== true && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== false && IN8[3]== false && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== false && IN8[3]== false && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== false && IN8[3]== true && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== false && IN8[3]== true && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== true && IN8[3]== false && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== true && IN8[3]== false && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== true && IN8[3]== true && IN8[4]== false && IN8[5]== false) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== true && IN8[3]== true && IN8[4]== true && IN8[5]== false) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	
	if(IN8[0]== true && IN8[1]== false && IN8[2]== false && IN8[3]== false && IN8[4]== false && IN8[5]== true) {
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== false && IN8[3]== false && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== false && IN8[3]== true && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== false && IN8[3]== true && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== true && IN8[3]== false && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== true && IN8[3]== false && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== true && IN8[3]== true && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== false && IN8[2]== true && IN8[3]== true && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== false && IN8[3]== false && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== false && IN8[3]== false && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== false && IN8[3]== true && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== false && IN8[3]== true && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= false;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== true && IN8[3]== false && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== true && IN8[3]== false && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= false;
		OUT_S8[3]= true; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== true && IN8[3]== true && IN8[4]== false && IN8[5]== true) { 
		OUT_S8[0]= false;
		OUT_S8[1]= true;
		OUT_S8[2]= true;
		OUT_S8[3]= false; }
	else if (IN8[0]== true && IN8[1]== true && IN8[2]== true && IN8[3]== true && IN8[4]== true && IN8[5]== true) { 
		OUT_S8[0]= true;
		OUT_S8[1]= false;
		OUT_S8[2]= true;
		OUT_S8[3]= true; }
	
	for(int i = 0 ; i < 4 ; i++ ) {
		output8$FIFO$ptr[output8$FIFO$index++]= OUT_S8[i];
	}
 }
