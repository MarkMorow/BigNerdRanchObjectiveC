//
//  main.c
//  CountDown_Ch8_Challenge
//
//  Created by Mark Morowczynski on 12/14/22.
//  Take user input number, count down to 0, if it's divisible by 5 print "Found one!"

#include <stdio.h>
#include <readline/readline.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    
    printf("Where should I start counting?\n");
    int num = atoi(readline(NULL));
    while(num>=0){
        printf("%d\n", num);
        if (num % 5 == 0)
        {
            printf("Found one!\n");
        }
        
    
        num = num-3;
        
    }
    
    return 0;
}
