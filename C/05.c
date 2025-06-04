#include <stdio.h>

int main() {
    int a, b;
    void update(int*,int*);
    int *pa = &a, *pb = &b;
    
    scanf("%d %d", pa, pb);
    update(pa, pb);
    printf("%d\n%d", a, b);

    return 0;
}

void update(int *pa, int *pb)
{
    *pa = *pa + *pb;
    *pb = (*pa - *pb) > *pb ? (*pa - 2*(*pb)) : *pb - (*pa - *pb);
}