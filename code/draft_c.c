#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS

int main()

{
    int primeNumber=0, lowerN=0, higherN=0, pass=1;
    do{
    printf("Enter range\n > ");
    scanf("%d %d", &lowerN, &higherN);
        if(primeNumber > 1000 || primeNumber < 0){
                printf("Number is out of range please enter between 0-1000 > ");
                pass = 1;
            }
        else{
                pass = 0;
            }
    }while(pass == 1);
    
    for(int i=lowerN; i <= lowerN; i++)
    {
        if((i%2) == 0) printf("%d is a prime \n", i);
        else printf("%d is NOT a prime \n", i);
    }
    return 0;
}