//
//  main.c
//  Triangle_ch5_challenge
//
//  Created by Mark Morowczynski on 12/12/22.
//

#include <stdio.h>

float remainingAngle (float firstAngle, float secondAngle)
{
    float finalAngle = 180.0 - firstAngle-secondAngle;
    return finalAngle;
}

int main(int argc, const char * argv[]) {
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}
