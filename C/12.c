#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int a[10];
int main()
{
    int i, j;
    extern int a[10];
    char *string;
    string = (char *)malloc(100 * sizeof(char));
    int len(char*);
    scanf("%s", string);
    for(i=0;i<10;i++)
    {
        for(j=0;j<len(string);j++)
        {
            if(string[j]==(char)(48+i))
                a[i]+=1;
        }
    }
    for(i=0;i<10;i++)
        printf("%d ",a[i]);
    return 0;
}

int len(char *string)
{
    int i=0;
    while (string[i]!='\0')
        i++;
    return i;
}
