#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
{

    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    int n, i, *p, sum = 0;
    scanf("%d", &n);
    p = (int *)malloc(n * sizeof(int));
    for (i = 0; i < n; i++)
        scanf("%d", p + i);
    for (i = 0; i < n; i++)
        sum = sum + *(p + i);
    printf("%d",sum);
    return 0;
}