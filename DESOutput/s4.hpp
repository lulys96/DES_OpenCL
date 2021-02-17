#pragma once
#include "Port.hpp"


class s4{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input4$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output4$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$194(cl_event *event){
		int number$instances = std::min({input4$FIFO.get_size()/ 6 , output4$FIFO.get_free_space()/ 4});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input4$FIFO.get_read_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)output4$FIFO.get_write_buffer(number$instances * 4,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	s4(Port< bool , 100000>& _input4$FIFO,Port< bool , 100000>&  _output4$FIFO) : input4$FIFO(_input4$FIFO),output4$FIFO(_output4$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "s4.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$194", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$194  in  s4 returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input4$FIFO.opencl_read_done();
		output4$FIFO.opencl_write_done(ocl);
		if(input4$FIFO.get_size() >= 6){
			if(output4$FIFO.get_free_space() >= 4) {
				return action$194(event);
			}
		}
		return;
	}

};
