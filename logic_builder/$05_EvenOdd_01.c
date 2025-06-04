#include <stdio.h>

int main() 
{
    int i;
    printf("Enter a Number");
    scanf("%d",&i);
    if(i/2*2==i)
        printf("Even Number");
    else
        printf("Odd Number");
    return 0;
}


