//
//  BNREmployee.m
//  BMITime
//
//  Created by Mark Morowczynski on 5/16/23.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee

// Accessors for assets properties
- (void) setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAsset:(BNRAsset *)a
{
    // is assets nil?
    if (!_assets){
        // create the array
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}

- (void)removeAsset:(BNRAsset *)a
{
    // if asset exist remove it
    if (_assets)
    {
       [_assets removeObject:a];
    }
}

- (unsigned int)valueOfAssets
{
    // Sume up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets){
        sum += [a resaleValue];
    }
    return sum;
}

- (double)yearsOfEmployment
{
    // Do I have non-nil hireDate?
    if (self.hireDate){
        // NSTimeInteveral is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0; // Seconds per year
    } else{
        return 0;
    }
}

- (float)bodyMassIndex
{
    float normmalBMI = [super bodyMassIndex];
    return normmalBMI * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
