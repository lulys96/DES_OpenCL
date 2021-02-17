#pragma once
#include "Port.hpp"


class pc1{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input1$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output_L$FIFO;
	Port< bool , 100000>&  output_R$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$18(cl_event *event){
		int number$instances = std::min({input1$FIFO.get_size()/ 64 , output_L$FIFO.get_free_space()/ 28 , output_R$FIFO.get_free_space()/ 28});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input1$FIFO.get_read_buffer(number$instances * 64,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)output_L$FIFO.get_write_buffer(number$instances * 28,ocl));
		clSetKernelArg(ocl.kernels[0] , 2, sizeof(cl_mem), (void *)output_R$FIFO.get_write_buffer(number$instances * 28,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	pc1(Port< bool , 100000>& _input1$FIFO,Port< bool , 100000>&  _output_L$FIFO,Port< bool , 100000>&  _output_R$FIFO) : input1$FIFO(_input1$FIFO),output_L$FIFO(_output_L$FIFO),output_R$FIFO(_output_R$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL"); //Intel
			CreateAndBuildProgram(&ocl, "pc1.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$18", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$18  in  pc1 returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input1$FIFO.opencl_read_done();
		output_L$FIFO.opencl_write_done(ocl);
		output_R$FIFO.opencl_write_done(ocl);
		if(input1$FIFO.get_size() >= 64){
			if(output_L$FIFO.get_free_space() >= 28 && output_R$FIFO.get_free_space() >= 28) {
				return action$18(event);
			}
		}
		return;
	}

};
