//
//  main.c
//  MathLibrary_Ch7_Challenge
//
//  Created by Mark Morowczynski on 12/14/22.
//  Use the math library to use the sine function rounded to 3 decimal points to display the radian of 1 

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    double x = 1;
    double result =sin(x);
    printf("The sine of 1 radian ix %.3f\n", result);
    return 0;
}
