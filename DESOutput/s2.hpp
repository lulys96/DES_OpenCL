#pragma once
#include "Port.hpp"


class s2{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input2$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output2$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$162(cl_event *event){
		int number$instances = std::min({input2$FIFO.get_size()/ 6 , output2$FIFO.get_free_space()/ 4});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input2$FIFO.get_read_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)output2$FIFO.get_write_buffer(number$instances * 4,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	s2(Port< bool , 100000>& _input2$FIFO,Port< bool , 100000>&  _output2$FIFO) : input2$FIFO(_input2$FIFO),output2$FIFO(_output2$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "s2.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$162", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$162  in  s2 returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input2$FIFO.opencl_read_done();
		output2$FIFO.opencl_write_done(ocl);
		if(input2$FIFO.get_size() >= 6){
			if(output2$FIFO.get_free_space() >= 4) {
				return action$162(event);
			}
		}
		return;
	}

};
