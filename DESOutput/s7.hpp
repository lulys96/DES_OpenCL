#pragma once
#include "Port.hpp"


class s7{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input7$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output7$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$242(cl_event *event){
		int number$instances = std::min({input7$FIFO.get_size()/ 6 , output7$FIFO.get_free_space()/ 4});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input7$FIFO.get_read_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)output7$FIFO.get_write_buffer(number$instances * 4,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	s7(Port< bool , 100000>& _input7$FIFO,Port< bool , 100000>&  _output7$FIFO) : input7$FIFO(_input7$FIFO),output7$FIFO(_output7$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "s7.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$242", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$242  in  s7 returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input7$FIFO.opencl_read_done();
		output7$FIFO.opencl_write_done(ocl);
		if(input7$FIFO.get_size() >= 6){
			if(output7$FIFO.get_free_space() >= 4) {
				return action$242(event);
			}
		}
		return;
	}

};
