
#pragma once
#include "Port.hpp"
#include <iostream>
#include <chrono>

int input_nbr = 0;
std::chrono::high_resolution_clock::time_point start;
//auto start = std::chrono::high_resolution_clock::now();
//auto end = std::chrono::high_resolution_clock::now;

class sink2{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
	
//Input FIFOs:
	Port< bool , 100000>& In$FIFO;
//Output FIFOs:
//Actions:
	void action$259(){
		bool  token[64];
		In$FIFO.get_elements(token,64);
		std::cout  << "Cyphertext : \n" << "\n";
		std::cout  << "Value Consumed :" << token[0] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[1] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[2] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[3] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[4] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[5] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[6] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[7] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[8] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[9] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[10] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[11] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[12] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[13] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[14] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[15] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[16] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[17] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[18] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[19] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[20] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[21] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[22] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[23] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[24] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[25] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[26] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[27] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[28] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[29] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[30] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[31] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[32] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[33] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[34] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[35] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[36] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[37] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[38] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[39] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[40] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[41] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[42] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[43] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[44] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[45] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[46] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[47] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[48] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[49] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[50] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[51] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[52] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[53] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[54] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[55] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[56] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[57] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[58] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[59] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[60] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[61] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[62] << "\n" << "\n";
		std::cout  << "Value Consumed :" << token[63] << "\n" << "\n";
	}
public:
	sink2(Port< bool , 100000>& _In$FIFO) : In$FIFO(_In$FIFO) {
		}

	void schedule(){
		for (;;) {
			if(In$FIFO.get_size() >= 64){
				action$259();
				input_nbr++;
				std::cout << "Operation is done.\n";    //added
				if (input_nbr == 300) {

					std::chrono::high_resolution_clock::time_point end = std::chrono::high_resolution_clock::now();
					auto elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
					std::cout << "Operation is done.\n";
					std::cout << "The number of processed inputs is: " << input_nbr << "\n";
					std::cout << "Time elapsed: " << elapsed.count() << "ms" << '\n';
					exit(0);
				}
				break;

			}
			else {
				break;
			}
			
		}
	}

};
