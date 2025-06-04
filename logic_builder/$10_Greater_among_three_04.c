//logic same as 03
#include <stdio.h>

int main()
{
    int a,b,c;
    printf("Enter three numbers\n");
    scanf("%d%d%d",&a,&b,&c);
    printf("\n%d",a>b?a>c?a:c:b>c?b:c);

    return 0;   
}
