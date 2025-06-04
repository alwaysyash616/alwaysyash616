#include <stdio.h>
#include <conio.h>

int main() 
{
 
    int a[10],i;
    printf("Enter ten numbers\n");
    for(i=0;i<10;i++)
        scanf("%d",&a[i]);
    printf("You've entered:\n");
    for(i=0;i<10;i++)
        printf("    %d",a[i]);
    
        return 0;
}
