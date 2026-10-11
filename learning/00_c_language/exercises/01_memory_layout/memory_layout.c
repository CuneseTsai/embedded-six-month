#include <stdio.h>

const int g_const = 100;    // const,全局
int g_init = 10;            // 全局,显式初始化
int g_zero;                 // 全局,无显式初始化

static int s_init = 20;     // static,全局,显式初始化
static int s_zero;          // static,全局,非显式初始化

int add(int a,int b)
{
    return a + b;
}

int main(void)
{
    int local_init = 30;    // 局部自动变量
    int local_zero = 40;    // 局部自动变量，显式初始化

    int result = add(local_init,local_zero);

    printf("%d\n",result);

    return 0;
}
