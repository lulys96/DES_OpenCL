#pragma once
#include "Port.hpp"


class shift_RL1{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input1$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$66(cl_event *event){
		int number$instances = std::min({input1$FIFO.get_size()/ 28 , output$FIFO.get_free_space()/ 28});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input1$FIFO.get_read_buffer(number$instances * 28,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)output$FIFO.get_write_buffer(number$instances * 28,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	shift_RL1(Port< bool , 100000>& _input1$FIFO,Port< bool , 100000>&  _output$FIFO) : input1$FIFO(_input1$FIFO),output$FIFO(_output$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "shift_RL1.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$66", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$66  in  shift_RL1 returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input1$FIFO.opencl_read_done();
		output$FIFO.opencl_write_done(ocl);
		if(input1$FIFO.get_size() >= 28){
			if(output$FIFO.get_free_space() >= 28) {
				return action$66(event);
			}
		}
		return;
	}

};
