//
//  BNRPerson.m
//  BMITime
//
//  Created by Mark Morowczynski on 5/15/23.
//

#import "BNRPerson.h"

@implementation BNRPerson


-(float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}
@end
