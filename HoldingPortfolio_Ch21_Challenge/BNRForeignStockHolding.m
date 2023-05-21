//
//  BNRForeignStockHolding.m
//  HoldingPortfolio_Ch21_Challenge
//
//  Created by Mark Morowczynski on 5/21/23.
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

- (NSString *)description
{
    return [NSString stringWithFormat:@"You paid %.2f Conversion Rate %.2f for %d shares, of %@, valued at %.2f", self.costInDollars, self.conversionRate, self.numberOfShares, self.ticker, self.valueInDollars];
}

@end
