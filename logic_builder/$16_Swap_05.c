#include <stdio.h>

int main() 
{
    int a,b;
    printf("Enter two numbers\n");
    scanf("%d%d",&a,&b);
    b=(a+b)-(a=b);
    printf("After Swapping:\ta=%d\tb=%d",a,b);
    return 0;
}
