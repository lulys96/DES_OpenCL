#pragma once
#include "Port.hpp"


class xor32bits{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input1$FIFO;
	Port< bool , 100000>& input2$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$98(cl_event *event){
		int number$instances = std::min({input1$FIFO.get_size()/ 32 , input2$FIFO.get_size()/ 32 , output$FIFO.get_free_space()/ 32});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input1$FIFO.get_read_buffer(number$instances * 32,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)input2$FIFO.get_read_buffer(number$instances * 32,ocl));
		clSetKernelArg(ocl.kernels[0] , 2, sizeof(cl_mem), (void *)output$FIFO.get_write_buffer(number$instances * 32,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	xor32bits(Port< bool , 100000>& _input1$FIFO,Port< bool , 100000>& _input2$FIFO,Port< bool , 100000>&  _output$FIFO) : input1$FIFO(_input1$FIFO),input2$FIFO(_input2$FIFO),output$FIFO(_output$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "xor32bits.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$98", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$98  in  xor32bits returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input1$FIFO.opencl_read_done();
		input2$FIFO.opencl_read_done();
		output$FIFO.opencl_write_done(ocl);
		if(input1$FIFO.get_size() >= 32 && input2$FIFO.get_size() >= 32){
			if(output$FIFO.get_free_space() >= 32) {
				return action$98(event);
			}
		}
		return;
	}

};
