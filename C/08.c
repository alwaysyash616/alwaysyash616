#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
{

    int n, i, arr[5],sum=0;
    scanf("%d", &n);
    // Complete the code to calculate the sum of the five digits on n.
    for (i = 0; i <= 4; i++)
        arr[i] = (n/(int)pow(10, i)) % 10;
    for(i=0;i<=4;i++)
        sum = sum + arr[i];
    printf("%d",sum);
    return 0;
}
