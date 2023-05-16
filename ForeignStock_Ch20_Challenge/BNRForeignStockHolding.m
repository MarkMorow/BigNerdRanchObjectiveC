//
//  BNRForeignStockHolding.m
//  ForeignStock_Ch20_Challenge
//
//  Created by Mark Morowczynski on 5/16/23.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

- (float)costInDollars; // purchaseSharePrice * numberOfShares
{
    float price = [self purchaseSharePrice] * self.conversionRate;
    return price * [self numberOfShares];
}
- (float)valueInDollars; // currentSharePrice * numberOfShares
{
    float dollars = [self currentSharePrice] * self.conversionRate;
    return dollars * [self numberOfShares];
}

@end
