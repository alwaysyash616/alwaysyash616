#include <stdio.h>

int main() 
{
    int a,b,temp;
    printf("Enter two numbers\n");
    scanf("%d%d",&a,&b);
    temp=a;
    a=b;
    b=temp;
    printf("After Swapping:a=%d  b=%d",a,b);
    return 0;
}
