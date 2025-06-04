#include <stdio.h>

int main() 
{
    int i;
    printf("Enter a Number");
    scanf("%d",&i);
    if(i&1)
        printf("Odd Number");
    else
        printf("Even Number");
    return 0;
}
