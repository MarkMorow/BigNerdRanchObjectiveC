//
//  BNRAsset.m
//  BMITime
//
//  Created by Mark Morowczynski on 5/16/23.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u", self.label, self.resaleValue];
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
