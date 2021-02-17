__kernel void action$162(__global bool * input2$FIFO$ptr , __global bool * output2$FIFO$ptr) {
	int input2$FIFO$index = get_global_id(0)* 6;
	int output2$FIFO$index = get_global_id(0)* 4;
	bool IN2[6];
	for(int i = 0 ; i < 6 ; i++ ) {
		IN2[i]= input2$FIFO$ptr[input2$FIFO$index++];
	}
	bool OUT_S2[4];
	if(IN2[0]== false && IN2[1]== false && IN2[2]== false && IN2[3]== false && IN2[4]== false && IN2[5]== false) {
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= true; }
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== false && IN2[3]== false && IN2[4]== true && IN2[5]== false) {
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= true; }
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== false && IN2[3]== true && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= false; }
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== false && IN2[3]== true && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== true && IN2[3]== false && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== true && IN2[3]== false && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== true && IN2[3]== true && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== true && IN2[3]== true && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== false && IN2[3]== false && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== false && IN2[3]== false && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== false && IN2[3]== true && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== false && IN2[3]== true && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== true && IN2[3]== false && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== true && IN2[3]== false && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== true && IN2[3]== true && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== true && IN2[3]== true && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	
	
	if(IN2[0]== false && IN2[1]== false && IN2[2]== false && IN2[3]== false && IN2[4]== false && IN2[5]== true) {
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== false && IN2[3]== false && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== false && IN2[3]== true && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== false && IN2[3]== true && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== true && IN2[3]== false && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== true && IN2[3]== false && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== true && IN2[3]== true && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== false && IN2[2]== true && IN2[3]== true && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== false && IN2[3]== false && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== false && IN2[3]== false && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== false && IN2[3]== true && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== false && IN2[3]== true && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== true && IN2[3]== false && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== true && IN2[3]== false && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== true && IN2[3]== true && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== false && IN2[1]== true && IN2[2]== true && IN2[3]== true && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	
	if(IN2[0]== true && IN2[1]== false && IN2[2]== false && IN2[3]== false && IN2[4]== false && IN2[5]== false) {
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== false && IN2[3]== false && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== false && IN2[3]== true && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== false && IN2[3]== true && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== true && IN2[3]== false && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== true && IN2[3]== false && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== true && IN2[3]== true && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== true && IN2[3]== true && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== false && IN2[3]== false && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== false && IN2[3]== false && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== false && IN2[3]== true && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== false && IN2[3]== true && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== true && IN2[3]== false && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== true && IN2[3]== false && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== true && IN2[3]== true && IN2[4]== false && IN2[5]== false) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== true && IN2[3]== true && IN2[4]== true && IN2[5]== false) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	
	
	if(IN2[0]== true && IN2[1]== false && IN2[2]== false && IN2[3]== false && IN2[4]== false && IN2[5]== true) {
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== false && IN2[3]== false && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== false && IN2[3]== true && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== false && IN2[3]== true && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== true && IN2[3]== false && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== true && IN2[3]== false && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== true && IN2[3]== true && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== false && IN2[2]== true && IN2[3]== true && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== false && IN2[3]== false && IN2[4]== false && IN2[5]== true){ 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== false && IN2[3]== false && IN2[4]== true && IN2[5]== true){ 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== false && IN2[3]== true && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== false && IN2[3]== true && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== true && IN2[3]== false && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== true && IN2[3]== false && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= false;
		OUT_S2[1]= true;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== true && IN2[3]== true && IN2[4]== false && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= true;
		OUT_S2[2]= true;
		OUT_S2[3]= false;}
	else if (IN2[0]== true && IN2[1]== true && IN2[2]== true && IN2[3]== true && IN2[4]== true && IN2[5]== true) { 
		OUT_S2[0]= true;
		OUT_S2[1]= false;
		OUT_S2[2]= false;
		OUT_S2[3]= true;}
	
	for(int i = 0 ; i < 4 ; i++ ) {
		output2$FIFO$ptr[output2$FIFO$index++]= OUT_S2[i];
	}
 }
