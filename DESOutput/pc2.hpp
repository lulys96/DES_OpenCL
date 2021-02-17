#pragma once
#include "Port.hpp"


class pc2{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input_L$FIFO;
	Port< bool , 100000>& input_R$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  Ki$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$34(cl_event *event){
		int number$instances = std::min({input_L$FIFO.get_size()/ 28 , input_R$FIFO.get_size()/ 28 , Ki$FIFO.get_free_space()/ 48});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input_L$FIFO.get_read_buffer(number$instances * 28,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)input_R$FIFO.get_read_buffer(number$instances * 28,ocl));
		clSetKernelArg(ocl.kernels[0] , 2, sizeof(cl_mem), (void *)Ki$FIFO.get_write_buffer(number$instances * 48,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	pc2(Port< bool , 100000>& _input_L$FIFO,Port< bool , 100000>& _input_R$FIFO,Port< bool , 100000>&  _Ki$FIFO) : input_L$FIFO(_input_L$FIFO),input_R$FIFO(_input_R$FIFO),Ki$FIFO(_Ki$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "pc2.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$34", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$34  in  pc2 returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input_L$FIFO.opencl_read_done();
		input_R$FIFO.opencl_read_done();
		Ki$FIFO.opencl_write_done(ocl);
		if(input_L$FIFO.get_size() >= 28 && input_R$FIFO.get_size() >= 28){
			if(Ki$FIFO.get_free_space() >= 48) {
				return action$34(event);
			}
		}
		return;
	}

};
