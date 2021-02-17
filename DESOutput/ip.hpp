#pragma once
#include "Port.hpp"


class ip{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input1$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  out_LEFT$FIFO;
	Port< bool , 100000>&  out_RIGHT$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$17(cl_event *event){
		int number$instances = std::min({input1$FIFO.get_size()/ 64 , out_LEFT$FIFO.get_free_space()/ 32 , out_RIGHT$FIFO.get_free_space()/ 32});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input1$FIFO.get_read_buffer(number$instances * 64,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)out_LEFT$FIFO.get_write_buffer(number$instances * 32,ocl));
		clSetKernelArg(ocl.kernels[0] , 2, sizeof(cl_mem), (void *)out_RIGHT$FIFO.get_write_buffer(number$instances * 32,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	ip(Port< bool , 100000>& _input1$FIFO,Port< bool , 100000>&  _out_LEFT$FIFO,Port< bool , 100000>&  _out_RIGHT$FIFO) : input1$FIFO(_input1$FIFO),out_LEFT$FIFO(_out_LEFT$FIFO),out_RIGHT$FIFO(_out_RIGHT$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "ip.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$17", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$17  in  ip returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input1$FIFO.opencl_read_done();
		out_LEFT$FIFO.opencl_write_done(ocl);
		out_RIGHT$FIFO.opencl_write_done(ocl);
		if(input1$FIFO.get_size() >= 64){
			if(out_LEFT$FIFO.get_free_space() >= 32 && out_RIGHT$FIFO.get_free_space() >= 32) {
				return action$17(event);
			}
		}
		return;
	}

};
