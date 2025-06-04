#include <stdio.h>

int main()
{
    int a,b;
    int add(int,int);
    printf("Enter two numbers\n");
    scanf("%d%d",&a,&b);
    printf("Sum is %d",add(a,b));
    return 0;
}
int add(int a,int b)
{
    if(b==0)
        return a;
    else
        return add(a^b,(unsigned)(a&b)<<1);
}
