#pragma once
#include "Port.hpp"


class s5{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input5$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output5$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$226(cl_event *event){
		int number$instances = std::min({input5$FIFO.get_size()/ 6 , output5$FIFO.get_free_space()/ 4});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input5$FIFO.get_read_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)output5$FIFO.get_write_buffer(number$instances * 4,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	s5(Port< bool , 100000>& _input5$FIFO,Port< bool , 100000>&  _output5$FIFO) : input5$FIFO(_input5$FIFO),output5$FIFO(_output5$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "s5.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$226", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$226  in  s5 returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input5$FIFO.opencl_read_done();
		output5$FIFO.opencl_write_done(ocl);
		if(input5$FIFO.get_size() >= 6){
			if(output5$FIFO.get_free_space() >= 4) {
				return action$226(event);
			}
		}
		return;
	}

};
