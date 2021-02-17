#pragma once
#include "Port.hpp"


class s8{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input8$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output8$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$258(cl_event *event){
		int number$instances = std::min({input8$FIFO.get_size()/ 6 , output8$FIFO.get_free_space()/ 4});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input8$FIFO.get_read_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)output8$FIFO.get_write_buffer(number$instances * 4,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	s8(Port< bool , 100000>& _input8$FIFO,Port< bool , 100000>&  _output8$FIFO) : input8$FIFO(_input8$FIFO),output8$FIFO(_output8$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "s8.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$258", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$258  in  s8 returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input8$FIFO.opencl_read_done();
		output8$FIFO.opencl_write_done(ocl);
		if(input8$FIFO.get_size() >= 6){
			if(output8$FIFO.get_free_space() >= 4) {
				return action$258(event);
			}
		}
		return;
	}

};
