#pragma once
#include "Port.hpp"


class s1{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input1$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output1$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$146(cl_event *event){
		int number$instances = std::min({input1$FIFO.get_size()/ 6 , output1$FIFO.get_free_space()/ 4});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input1$FIFO.get_read_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)output1$FIFO.get_write_buffer(number$instances * 4,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	s1(Port< bool , 100000>& _input1$FIFO,Port< bool , 100000>&  _output1$FIFO) : input1$FIFO(_input1$FIFO),output1$FIFO(_output1$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "s1.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$146", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$146  in  s1 returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input1$FIFO.opencl_read_done();
		output1$FIFO.opencl_write_done(ocl);
		if(input1$FIFO.get_size() >= 6){
			if(output1$FIFO.get_free_space() >= 4) {
				return action$146(event);
			}
		}
		return;
	}

};
