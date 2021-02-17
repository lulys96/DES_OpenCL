#pragma once
#include "Port.hpp"


class xor48bits{
private:
//imports
//imports end

//Const inputs:
//Functions and Variables:
//Input FIFOs:
	Port< bool , 100000>& input1$FIFO;
	Port< bool , 100000>& input2$FIFO;
//Output FIFOs:
	Port< bool , 100000>&  output_s1$FIFO;
	Port< bool , 100000>&  output_s2$FIFO;
	Port< bool , 100000>&  output_s3$FIFO;
	Port< bool , 100000>&  output_s4$FIFO;
	Port< bool , 100000>&  output_s5$FIFO;
	Port< bool , 100000>&  output_s6$FIFO;
	Port< bool , 100000>&  output_s7$FIFO;
	Port< bool , 100000>&  output_s8$FIFO;
//Actions:

	opencl_arguments ocl;

	void action$82(cl_event *event){
		int number$instances = std::min({input1$FIFO.get_size()/ 48 , input2$FIFO.get_size()/ 48 , output_s1$FIFO.get_free_space()/ 6 , output_s2$FIFO.get_free_space()/ 6 , output_s3$FIFO.get_free_space()/ 6 , output_s4$FIFO.get_free_space()/ 6 , output_s5$FIFO.get_free_space()/ 6 , output_s6$FIFO.get_free_space()/ 6 , output_s7$FIFO.get_free_space()/ 6 , output_s8$FIFO.get_free_space()/ 6});
		ocl.globalWorkSize[0] = number$instances;
		ocl.work_Dim = 1;
		ocl.localWorkSize[0] = NULL;
		clSetKernelArg(ocl.kernels[0] , 0, sizeof(cl_mem), (void *)input1$FIFO.get_read_buffer(number$instances * 48,ocl));
		clSetKernelArg(ocl.kernels[0] , 1, sizeof(cl_mem), (void *)input2$FIFO.get_read_buffer(number$instances * 48,ocl));
		clSetKernelArg(ocl.kernels[0] , 2, sizeof(cl_mem), (void *)output_s1$FIFO.get_write_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 3, sizeof(cl_mem), (void *)output_s2$FIFO.get_write_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 4, sizeof(cl_mem), (void *)output_s3$FIFO.get_write_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 5, sizeof(cl_mem), (void *)output_s4$FIFO.get_write_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 6, sizeof(cl_mem), (void *)output_s5$FIFO.get_write_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 7, sizeof(cl_mem), (void *)output_s6$FIFO.get_write_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 8, sizeof(cl_mem), (void *)output_s7$FIFO.get_write_buffer(number$instances * 6,ocl));
		clSetKernelArg(ocl.kernels[0] , 9, sizeof(cl_mem), (void *)output_s8$FIFO.get_write_buffer(number$instances * 6,ocl));
		ExecuteKernel(&ocl,0, event);
	}
public:
	xor48bits(Port< bool , 100000>& _input1$FIFO,Port< bool , 100000>& _input2$FIFO,Port< bool , 100000>&  _output_s1$FIFO,Port< bool , 100000>&  _output_s2$FIFO,Port< bool , 100000>&  _output_s3$FIFO,Port< bool , 100000>&  _output_s4$FIFO,Port< bool , 100000>&  _output_s5$FIFO,Port< bool , 100000>&  _output_s6$FIFO,Port< bool , 100000>&  _output_s7$FIFO,Port< bool , 100000>&  _output_s8$FIFO) : input1$FIFO(_input1$FIFO),input2$FIFO(_input2$FIFO),output_s1$FIFO(_output_s1$FIFO),output_s2$FIFO(_output_s2$FIFO),output_s3$FIFO(_output_s3$FIFO),output_s4$FIFO(_output_s4$FIFO),output_s5$FIFO(_output_s5$FIFO),output_s6$FIFO(_output_s6$FIFO),output_s7$FIFO(_output_s7$FIFO),output_s8$FIFO(_output_s8$FIFO) {
			SetupOpenCL(&ocl, CL_DEVICE_TYPE_CPU, "Intel(R) OpenCL");
			CreateAndBuildProgram(&ocl, "xor48bits.cl");
			cl_int err = CL_SUCCESS;
			ocl.kernels.push_back(clCreateKernel(ocl.program, "action$82", &err));
			if(err != CL_SUCCESS) {
				std::cout << "Kernel Creation failed. clCreateKernel for action$82  in  xor48bits returned " << TranslateErrorCode(err);
				exit(err);
			}
	}

	void schedule(cl_event *event){
		input1$FIFO.opencl_read_done();
		input2$FIFO.opencl_read_done();
		output_s1$FIFO.opencl_write_done(ocl);
		output_s2$FIFO.opencl_write_done(ocl);
		output_s3$FIFO.opencl_write_done(ocl);
		output_s4$FIFO.opencl_write_done(ocl);
		output_s5$FIFO.opencl_write_done(ocl);
		output_s6$FIFO.opencl_write_done(ocl);
		output_s7$FIFO.opencl_write_done(ocl);
		output_s8$FIFO.opencl_write_done(ocl);
		if(input1$FIFO.get_size() >= 48 && input2$FIFO.get_size() >= 48){
			if(output_s1$FIFO.get_free_space() >= 6 && output_s2$FIFO.get_free_space() >= 6 && output_s3$FIFO.get_free_space() >= 6 && output_s4$FIFO.get_free_space() >= 6 && output_s5$FIFO.get_free_space() >= 6 && output_s6$FIFO.get_free_space() >= 6 && output_s7$FIFO.get_free_space() >= 6 && output_s8$FIFO.get_free_space() >= 6) {
				return action$82(event);
			}
		}
		return;
	}

};
