//Pis one-dimensional array of integers. Write a C++ function to efficiently search for a data VAL from P. If VAL is present in the array then thefunction should return value 1 and 0 otherwise
#include <stdio.h>
#include <conio.h>

int main() 
{
 
    int a[10],n,i;
    int val(int,int *);
    printf("Enter 10 numbers\n");
    for(i=0;i<10;i++)
        scanf("%d",&a[i]);
    printf("Enter the number to be checked in the array\t");
    scanf("%d",&n);
    printf("%d",val(n,a));
    return 0;
}
int val(int n,int *p)
{
    int i;
    for(i=0;i<10;i++)
    {
        if(n==*(p+i))
            return 1;
    }
    return 0;
}

