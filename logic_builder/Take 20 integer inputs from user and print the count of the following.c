/* Take 20 integer inputs from user and print the count of the following:
number of positive numbers
number of negative numbers
number of odd numbers
number of even numbers
number of 0 */
#include <stdio.h>
#include <conio.h>

int main() 
{
 
    int a[10],zero=0,positive=0,negative=0,even=0,odd=0,i;
    printf("Enter 10 numbers\n");
    for(i=0;i<10;i++)
        scanf("%d",&a[i]);
    for(i=0;i<10;i++)
    {
        if(a[i]==0)
            zero++;
        if(a[i]%2==0)
            even++;
        if(a[i]%2!=0)
            odd++;
        if(a[i]>0)
            positive++;
        if(a[i]<0)
            negative++;
    }
    printf("zeros:%d\tnegative:%d\tpositive:%d\teven:%d\todd:%d",zero,negative,positive,even,odd);
    return 0;
}
