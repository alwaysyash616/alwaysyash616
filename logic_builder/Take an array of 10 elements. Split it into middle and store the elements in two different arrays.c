#include <stdio.h>

int main()
{
    int a[10],b[5],c[5],i;
    printf("Enter ten numbers\n");
    for(i=0;i<10;i++)
        scanf("%d",&a[i]);
    for(i=0;i<5;i++)
        b[i]=a[i];
    for(i=5;i<10;i++)
        c[i-5]=a[i];
    printf("Array 1:");
    for(i=0;i<5;i++)
        printf("\t%d",b[i]);
    printf("\nArray2:");
    for(i=0;i<5;i++)
        printf("\t%d",c[i]);
    return 0;
}
