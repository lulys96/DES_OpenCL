#pragma once
#include "Port.hpp"


class connector{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input_s1$FIFO;
	Port< bool , 100000>& input_s2$FIFO;
	Port< bool , 100000>& input_s3$FIFO;
	Port< bool , 100000>& input_s4$FIFO;
	Port< bool , 100000>& input_s5$FIFO;
	Port< bool , 100000>& input_s6$FIFO;
	Port< bool , 100000>& input_s7$FIFO;
	Port< bool , 100000>& input_s8$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$114(cl_event *event){
		int number$instances = std::min({input_s1$FIFO.get_size()/ 4 , input_s2$FIFO.get_size()/ 4 , input_s3$FIFO.get_size()/ 4 , input_s4$FIFO.get_size()/ 4 , input_s5$FIFO.get_size()/ 4 , input_s6$FIFO.get_size()/ 4 , input_s7$FIFO.get_size()/ 4 , input_s8$FIFO.get_size()/ 4 , output$FIFO.get_free_space()/ 32});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input_s1$FIFO.get_read_buffer(number$instances * 4,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)input_s2$FIFO.get_read_buffer(number$instances * 4,ocl));
		clSetKernelArg(ocl.kernels[0] , 2, sizeof(cl_mem), (void *)input_s3$FIFO.get_read_buffer(number$instances * 4,ocl));
		clSetKernelArg(ocl.kernels[0] , 3, sizeof(cl_mem), (void *)input_s4$FIFO.get_read_buffer(number$instances * 4,ocl));
		clSetKernelArg(ocl.kernels[0] , 4, sizeof(cl_mem), (void *)input_s5$FIFO.get_read_buffer(number$instances * 4,ocl));
		clSetKernelArg(ocl.kernels[0] , 5, sizeof(cl_mem), (void *)input_s6$FIFO.get_read_buffer(number$instances * 4,ocl));
		clSetKernelArg(ocl.kernels[0] , 6, sizeof(cl_mem), (void *)input_s7$FIFO.get_read_buffer(number$instances * 4,ocl));
		clSetKernelArg(ocl.kernels[0] , 7, sizeof(cl_mem), (void *)input_s8$FIFO.get_read_buffer(number$instances * 4,ocl));
		clSetKernelArg(ocl.kernels[0] , 8, sizeof(cl_mem), (void *)output$FIFO.get_write_buffer(number$instances * 32,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	connector(Port< bool , 100000>& _input_s1$FIFO,Port< bool , 100000>& _input_s2$FIFO,Port< bool , 100000>& _input_s3$FIFO,Port< bool , 100000>& _input_s4$FIFO,Port< bool , 100000>& _input_s5$FIFO,Port< bool , 100000>& _input_s6$FIFO,Port< bool , 100000>& _input_s7$FIFO,Port< bool , 100000>& _input_s8$FIFO,Port< bool , 100000>&  _output$FIFO) : input_s1$FIFO(_input_s1$FIFO),input_s2$FIFO(_input_s2$FIFO),input_s3$FIFO(_input_s3$FIFO),input_s4$FIFO(_input_s4$FIFO),input_s5$FIFO(_input_s5$FIFO),input_s6$FIFO(_input_s6$FIFO),input_s7$FIFO(_input_s7$FIFO),input_s8$FIFO(_input_s8$FIFO),output$FIFO(_output$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL"); //Intel
			CreateAndBuildProgram(&ocl, "connector.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$114", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$114  in  connector returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input_s1$FIFO.opencl_read_done();
		input_s2$FIFO.opencl_read_done();
		input_s3$FIFO.opencl_read_done();
		input_s4$FIFO.opencl_read_done();
		input_s5$FIFO.opencl_read_done();
		input_s6$FIFO.opencl_read_done();
		input_s7$FIFO.opencl_read_done();
		input_s8$FIFO.opencl_read_done();
		output$FIFO.opencl_write_done(ocl);
		if(input_s1$FIFO.get_size() >= 4 && input_s2$FIFO.get_size() >= 4 && input_s3$FIFO.get_size() >= 4 && input_s4$FIFO.get_size() >= 4 && input_s5$FIFO.get_size() >= 4 && input_s6$FIFO.get_size() >= 4 && input_s7$FIFO.get_size() >= 4 && input_s8$FIFO.get_size() >= 4){
			if(output$FIFO.get_free_space() >= 32) {
				return action$114(event);
			}
		}
		return;
	}

};
