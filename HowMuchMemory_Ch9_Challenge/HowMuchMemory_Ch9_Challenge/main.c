//
//  main.c
//  HowMuchMemory_Ch9_Challenge
//
//  Created by Mark Morowczynski on 12/14/22.
//  Show how much memory a float consumes

#include <stdio.h>

int main(int argc, const char * argv[]) {
    double num;
    printf("A double is %zu bytes\n", sizeof(num));
    return 0;
}
