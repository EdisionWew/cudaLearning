#include <stdio.h>

//编辑kernel function

__global__ void helloFromGpu(void)
{
    printf("hello cudaGpu!\n");
}

int main()
{
	printf("hello world from CPU!\n");
	helloFromGpu<<<1,10>>>();
	cudaDeviceReset();//该段代码重置化gpu，用来显示催毁cuda程序占用的gpu内存资源
	return 0;
}
