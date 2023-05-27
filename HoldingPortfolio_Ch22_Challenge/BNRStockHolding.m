//
//  BNRStockHolding.m
//  HoldingPortfolio_Ch22_Challenge
//
//  Created by Mark Morowczynski on 5/27/23.
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
- (NSString *)description
{
    return [NSString stringWithFormat:@"You paid %.2f for %d shares, of %@, valued at %.2f", self.costInDollars, self.numberOfShares, self.ticker, self.valueInDollars];
}

@end
