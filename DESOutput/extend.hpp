#pragma once
#include "Port.hpp"


class extend{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$16(cl_event *event){
		int number$instances = std::min({input$FIFO.get_size()/ 32 , output$FIFO.get_free_space()/ 48});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input$FIFO.get_read_buffer(number$instances * 32,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)output$FIFO.get_write_buffer(number$instances * 48,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	extend(Port< bool , 100000>& _input$FIFO,Port< bool , 100000>&  _output$FIFO) : input$FIFO(_input$FIFO),output$FIFO(_output$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL"); //Intel
			CreateAndBuildProgram(&ocl, "extend.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$16", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$16  in  extend returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input$FIFO.opencl_read_done();
		output$FIFO.opencl_write_done(ocl);
		if(input$FIFO.get_size() >= 32){
			if(output$FIFO.get_free_space() >= 48) {
				return action$16(event);
			}
		}
		return;
	}

};
