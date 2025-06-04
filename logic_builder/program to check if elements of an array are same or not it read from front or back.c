#include <stdio.h>
#include <conio.h>

int main() 
{
 
    int a[]={2,3,15,15,3,2},length,i,c=0;
    length=sizeof(a)/sizeof(int);
    for(i=0;i<length;i++)
    {
        if(a[i]==a[length-i-1])
            c++;
    }
    printf("%s",c==6?"Yes":"No");
    return 0;
}
