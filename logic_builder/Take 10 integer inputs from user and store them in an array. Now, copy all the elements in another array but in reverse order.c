#include <stdio.h>
#include <conio.h>

int main() 
{
 
    int a[10],b[10],i;
    printf("Enter 10 numbers\n");
    for(i=0;i<10;i++)
        scanf("%d",&a[i]);
    for(i=0;i<10;i++)
    {
        b[i]=a[9-i];   
    }
    printf("a:\t");
    for(i=0;i<10;i++)
        printf("%d",a[i]);
    printf("\tb:\t");
    for(i=0;i<10;i++)
        printf("%d",b[i]);
    return 0;
}
