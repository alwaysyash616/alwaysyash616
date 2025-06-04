#include <stdio.h>
#include <conio.h>

int main() 
{
 
    int a[10],temp,i;
    printf("Enter 10 numbers\n");
    for(i=0;i<10;i++)
        scanf("%d",&a[i]);
    printf("Before swapping:\n");
    for(i=0;i<10;i++)
        printf("    %d",a[i]);
    temp=a[0];
    a[0]=a[9];
    a[9]=temp;
    printf("\nAfter swapping:\n");
    for(i=0;i<10;i++)
        printf("    %d",a[i]);
    return 0;
}
