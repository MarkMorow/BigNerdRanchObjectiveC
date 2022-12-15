//
//  main.c
//  MetersToFeet_Ch10_Challenge
//
//  Created by Mark Morowczynski on 12/14/22.
//  Modif example to use modf() instead of floor

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, unsigned int *ftPtr, double *inPtr)
{
    //This function assumes meters is non-negative
    
    //Convert the number of meters into a floating-point number of feet.
    double rawFeet = meters * 3.281; // e.g. 2.4536
    double feet;
    double fractionalFoot = modf(rawFeet, &feet);
    double inches = fractionalFoot * 12.0;
    
    if (ftPtr && inPtr) {
        *ftPtr = feet;
        *inPtr = inches;
    }
    
}

int main(int argc, const char * argv[]) {
    double meters = 3.0;
    unsigned int feet;
    double inches;
    
    metersToFeetAndInches(meters, &feet, &inches);
    
    printf("%.1f meters is equal to %d feet and %.1f inches.\n", meters, feet, inches);
    
    return 0;
}
