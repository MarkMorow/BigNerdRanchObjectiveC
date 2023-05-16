//
//  BNRStockHolding.m
//  Stocks_Ch18_Challenge
//
//  Created by Mark Morowczynski on 5/15/23.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)p;
{
    _purchaseSharePrice = p;
}
- (float)currentSharePrice;

{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)c;
{
    _currentSharePrice = c;
}
- (int)numberOfShares;
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)s;
{
    _numberOfShares = s;
}

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
