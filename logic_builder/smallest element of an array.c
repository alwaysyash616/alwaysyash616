#include <stdio.h>
#include <conio.h>

int main() 
{
 
    int a[10],largest,smallest,i;
    printf("Enter 10 numbers\n");
    for(i=0;i<10;i++)
        scanf("%d",&a[i]);
    largest=a[0];
    smallest=a[0];
    for(i=0;i<10;i++)
    {
        if(a[i]>largest)
            largest=a[i];
        if(a[i]<smallest)
            smallest=a[i];
    }
    printf("Largest : %d \nSmallest : %d",largest,smallest);
    return 0;
}
