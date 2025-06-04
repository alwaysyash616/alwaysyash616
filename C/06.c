#include<stdio.h>
int main()
{
    int n;
    void number(int);
    scanf("%d",&n);
    number(n);
    return 0;
}

void number(int a)
{
    if(a == 1)
        printf("one");
    else if(a == 2)
        printf("two");
    else if(a == 3)
        printf("three");
    else if(a == 4)
        printf("four");
    else if(a == 5)
        printf("five");
    else if(a == 6)
        printf("six");
    else if(a == 7)
        printf("seven");
    else if(a == 8)
        printf("eight");
    else if(a == 9)
        printf("nine");
    else
        printf("Greater than 9");
}