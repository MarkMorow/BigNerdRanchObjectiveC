//
//  main.m
//  Readline_Ch16_Challenge
//
//  Created by Mark Morowczynski on 5/6/23.
//  Take the Ch 8 readline challange and use NSString and NSLog rather than C string and printf()

#import <Foundation/Foundation.h>
#include <readline/readline.h>


int main(int argc, const char * argv[]) {
    
    NSLog(@"Where should I start counting?\n");
    
    // Read the value from user
    const char *num = readline(NULL);
    NSString *string = [NSString stringWithUTF8String:num];
   
    // Convert string to Integer for loop 
    NSInteger startingNumber = [string integerValue];
    
    while(startingNumber>=0){
        NSLog(@"%ld\n", (long)startingNumber);
        if (startingNumber % 5 == 0)
        {
            NSLog(@"Found one!\n");
        }
        startingNumber = startingNumber-3;
    }
    
    return 0;
}


