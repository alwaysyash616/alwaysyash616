#include <stdio.h>

int main()
{
    int x;
    printf("Enter a Number\t");
    x=getIntegerOnly();
    printf("\nYou've Entered %d");
    return 0;
}
int getIntegerOnly()
{
    int num=0,ch;
    do
    {
        ch=getch();
        if(ch>=48&&ch<=57)
        {
            printf("%c",ch);
        }
        if(ch==13)
            break;
    }while(1);
    return num;
}
