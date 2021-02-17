__kernel void action$178(__global bool * input3$FIFO$ptr , __global bool * output3$FIFO$ptr) {
	int input3$FIFO$index = get_global_id(0)* 6;
	int output3$FIFO$index = get_global_id(0)* 4;
	bool IN3[6];
	for(int i = 0 ; i < 6 ; i++ ) {
		IN3[i]= input3$FIFO$ptr[input3$FIFO$index++];
	}
	bool OUT_S3[4];
	if(IN3[0]== false && IN3[1]== false && IN3[2]== false && IN3[3]== false && IN3[4]== false && IN3[5]== false) {
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= false; }
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== false && IN3[3]== false && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== false && IN3[3]== true && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== false && IN3[3]== true && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== true && IN3[3]== false && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== true && IN3[3]== false && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== true && IN3[3]== true && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== true && IN3[3]== true && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== false && IN3[3]== false && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== false && IN3[3]== false && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== false && IN3[3]== true && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
			
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== false && IN3[3]== true && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== true && IN3[3]== false && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== true && IN3[3]== false && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== true && IN3[3]== true && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== true && IN3[3]== true && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	
	if(IN3[0]== false && IN3[1]== false && IN3[2]== false && IN3[3]== false && IN3[4]== false && IN3[5]== true) {
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== false && IN3[3]== false && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== false && IN3[3]== true && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== false && IN3[3]== true && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== true && IN3[3]== false && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== true && IN3[3]== false && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== true && IN3[3]== true && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== false && IN3[2]== true && IN3[3]== true && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== false && IN3[3]== false && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== false && IN3[3]== false && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== false && IN3[3]== true && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== false && IN3[3]== true && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== true && IN3[3]== false && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== true && IN3[3]== false && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== true && IN3[3]== true && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== false && IN3[1]== true && IN3[2]== true && IN3[3]== true && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	
	if(IN3[0]== true && IN3[1]== false && IN3[2]== false && IN3[3]== false && IN3[4]== false && IN3[5]== false) {
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== false && IN3[3]== false && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== false && IN3[3]== true && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== false && IN3[3]== true && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== true && IN3[3]== false && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== true && IN3[3]== false && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== true && IN3[3]== true && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== true && IN3[3]== true && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== false && IN3[3]== false && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]== false;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== false && IN3[3]== false && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== false && IN3[3]== true && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== false && IN3[3]== true && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== true && IN3[3]== false && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== true && IN3[3]== false && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== true && IN3[3]== true && IN3[4]== false && IN3[5]== false) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== true && IN3[3]== true && IN3[4]== true && IN3[5]== false) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	
	if(IN3[0]== true && IN3[1]== false && IN3[2]== false && IN3[3]== false && IN3[4]== false && IN3[5]== true) {
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== false && IN3[3]== false && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== false && IN3[3]== true && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== false && IN3[3]== true && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== true && IN3[3]== false && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== true && IN3[3]== false && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== true && IN3[3]== true && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== false && IN3[2]== true && IN3[3]== true && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== false && IN3[3]== false && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== false && IN3[3]== false && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== false && IN3[3]== true && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== false && IN3[3]== true && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== true && IN3[3]== false && IN3[4]== false && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== true && IN3[3]== false && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= false;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= true;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== true && IN3[3]== true && IN3[4]== false && IN3[5]== true) { 
		 OUT_S3[0]= false;
		OUT_S3[1]= false;
		OUT_S3[2]= true;
		OUT_S3[3]= false;}
	else if (IN3[0]== true && IN3[1]== true && IN3[2]== true && IN3[3]== true && IN3[4]== true && IN3[5]== true) { 
		OUT_S3[0]= true;
		OUT_S3[1]= true;
		OUT_S3[2]= false;
		OUT_S3[3]= false;}
	
	for(int i = 0 ; i < 4 ; i++ ) {
		output3$FIFO$ptr[output3$FIFO$index++]= OUT_S3[i];
	}
 }
