//
//  main.c
//  Squarer_Ch6_Challenge
//
//  Created by Mark Morowczynski on 12/14/22.
//  Computes and displays the square of an integer and puts it in quotes "5" squared is "25"

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int number = 5;
    int numberSquared = number * number;
    
    printf("\"%d\" squared is \"%d\"", number, numberSquared);
    return 0;
}
