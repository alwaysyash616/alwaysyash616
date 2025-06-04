#include <stdio.h>

int main()
{
    int a,b,c;
    printf("Enter three numbers\n");
    scanf("%d%d%d",&a,&b,&c);
    if(a>=b&&a>=c)
        printf("\n%d",a);
    else
    {
        if(b>=a&&b>=c)
            printf("\n%d",b);
        else
        {
            if(c>=a&&c>=b)
                printf("\n%d",c);
        }
    }

    return 0;   
}
