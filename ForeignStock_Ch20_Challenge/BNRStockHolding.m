//
//  BNRStockHolding.m
//  ForeignStock_Ch20_Challenge
//
//  Created by Mark Morowczynski on 5/16/23.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)costInDollars; // purchaseSharePrice * numberOfShares
{
    float price = [self purchaseSharePrice];
    return price * [self numberOfShares];
}
- (float)valueInDollars; // currentSharePrice * numberOfShares
{
    float dollars = [self currentSharePrice];
    return dollars * [self numberOfShares];
}

@end
