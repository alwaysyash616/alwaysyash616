#include <stdio.h>
/*
Add `int max_of_four(int a, int b, int c, int d)` here.
*/

int main() {
    int a, b, c, d;
    int max_of_four(int,int,int,int);
    scanf("%d %d %d %d", &a, &b, &c, &d);
    int ans = max_of_four(a, b, c, d);
    printf("%d", ans);
    
    return 0;
}

int max_of_four(int a,int b,int c,int d)
{
    a = a > b ? a : b;
    a = a > c ? a : c;
    a = a > d ? a : d;
    return a;
}