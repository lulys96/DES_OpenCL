extern "C" {
#include "linux.h"
}
#pragma once
#include "Port.hpp"


class source2{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
	bool DATA[ 64 ] = { false , true , false , true , true , true , true , true , true , true , true , true , true , true , true , true , false , false , false , false , false , false , false , false , true , false , true , false , true , false , true , false , false , true , false , true , true , true , true , true , true , true , true , true , true , true , true , true , false , false , false , false , false , false , false , false , true , false , true , false , true , false , true , false };
	bool KEY[ 64 ] = { false , true , false , true , true , true , true , true , true , true , true , true , true , true , true , true , false , false , false , false , false , false , false , false , true , false , true , false , true , false , true , false , false , true , false , true , true , true , true , true , true , true , true , true , true , true , true , true , false , false , false , false , false , false , false , false , true , false , true , false , true , false , true , false };
//Input FIFOs:
//Output FIFOs:
	Port< bool , 100000>&  OutDATA$FIFO;
	Port< bool , 100000>&  OutKEY$FIFO;
//Actions:
	void action$260(){
		bool token[64] = { false , true , false , true , true , true , true , true , true , true , true , true , true , true , true , true , false , false , false , false , false , false , false , false , true , false , true , false , true , false , true , false , false , true , false , true , true , true , true , true , true , true , true , true , true , true , true , true , false , false , false , false , false , false , false , false , true , false , true , false , true , false , true , false };
		bool token2[64] = { false , true , false , true , true , true , true , true , true , true , true , true , true , true , true , true , false , false , false , false , false , false , false , false , true , false , true , false , true , false , true , false , false , true , false , true , true , true , true , true , true , true , true , true , true , true , true , true , false , false , false , false , false , false , false , false , true , false , true , false , true , false , true , false };;
		//token = DATA;
		//token2 = KEY;
		OutDATA$FIFO.put_elements( token , 64);
		OutKEY$FIFO.put_elements( token2 , 64);
	}
public:
	source2(Port< bool , 100000>&  _OutDATA$FIFO,Port< bool , 100000>&  _OutKEY$FIFO) : OutDATA$FIFO(_OutDATA$FIFO),OutKEY$FIFO(_OutKEY$FIFO) {
		}

	void schedule(){
		for(;;){
			if(true){
				if(OutDATA$FIFO.get_free_space() >= 64 && OutKEY$FIFO.get_free_space() >= 64) {
					action$260();
				}
				else {
					break;
				}
			}
			else {
				break;
			}
		}
	}

};
