#include <stdio.h>

int main()
{
    int a[]={10, 12, 20, 30, 25, 40, 32, 31, 35, 50, 60},b[6],i;
    for(i=0;i<6;i++)
        b[i]=a[i+3];
    printf("SubArray:");
    for(i=0;i<6;i++)
        printf("\t%d",b[i]);
        return 0;
}
