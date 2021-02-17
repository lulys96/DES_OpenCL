#pragma once
#include "Port.hpp"


class s3{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input3$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output3$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$178(cl_event *event){
		int number$instances = std::min({input3$FIFO.get_size()/ 6 , output3$FIFO.get_free_space()/ 4});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input3$FIFO.get_read_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)output3$FIFO.get_write_buffer(number$instances * 4,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	s3(Port< bool , 100000>& _input3$FIFO,Port< bool , 100000>&  _output3$FIFO) : input3$FIFO(_input3$FIFO),output3$FIFO(_output3$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "s3.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$178", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$178  in  s3 returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input3$FIFO.opencl_read_done();
		output3$FIFO.opencl_write_done(ocl);
		if(input3$FIFO.get_size() >= 6){
			if(output3$FIFO.get_free_space() >= 4) {
				return action$178(event);
			}
		}
		return;
	}

};
