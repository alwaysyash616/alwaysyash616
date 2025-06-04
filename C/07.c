#include<stdio.h>
int main()
{
    int x,y,i;
    void number(int);
    scanf("%d%d",&x,&y);
    for(i=x; i<=y; i++)
    {
        if(i>=1 && i<=9)
            number(i);
        else
            printf("%s",i&1?"odd\n":"even\n");
    }
}

void number(int a)
{
    if(a == 1)
        printf("one\n");
    else if(a == 2)
        printf("two\n");
    else if(a == 3)
        printf("three\n");
    else if(a == 4)
        printf("four\n");
    else if(a == 5)
        printf("five\n");
    else if(a == 6)
        printf("six\n");
    else if(a == 7)
        printf("seven\n");
    else if(a == 8)
        printf("eight\n");
    else
        printf("nine\n");
}