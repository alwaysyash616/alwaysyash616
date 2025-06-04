#include <stdio.h>
#include <conio.h>

int main() 
{
 
    int a[10],temp,i;
    printf("Enter 10 numbers\n");
    for(i=0;i<10;i++)
        scanf("%d",&a[i]);
    printf("Before reversing\n");
    for(i=0;i<10;i++)
        printf("%d  ",a[i]);
    for(i=0;i<4;i++)
    {
        temp=a[i];
        a[i]=a[9-i];
        a[9-i]=temp;
    }
    printf("\nAfter reversing\n");
    for(i=0;i<10;i++)
        printf("%d  ",a[i]);
    return 0;
}
