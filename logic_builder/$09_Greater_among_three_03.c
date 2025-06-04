//code needs to be checked
#include <stdio.h>

int main()
{
    int a,b,c;
    printf("Enter three numbers\n");
    scanf("%d%d%d",&a,&b,&c);
    if(a>b)
    {
        if(a>c)
            printf("%d",a);
        else
            printf("%d",c);
    }
    else
    {
        if(b>c)
            printf("\n%d",b);
        else
            printf("\n%d",c);
    }

    return 0;   
}
