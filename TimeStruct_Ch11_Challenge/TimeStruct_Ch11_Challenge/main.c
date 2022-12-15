//
//  main.c
//  TimeStruct_Ch11_Challenge
//
//  Created by Mark Morowczynski on 12/14/22.
//  Call struct tm to see what the date will be from 4 million seconds for now

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {
    
    // 4,000,000 million seconds
    long currentPlus4Mil = time (NULL) + 400000;
    
    
    struct tm futureTime;
    
    localtime_r(&currentPlus4Mil, &futureTime);
    printf("The date 4,000,000 seconds from now is %d-%d-%d\n", futureTime.tm_mon+1, futureTime.tm_mday, futureTime.tm_year + 1900);
    
    return 0;
}
