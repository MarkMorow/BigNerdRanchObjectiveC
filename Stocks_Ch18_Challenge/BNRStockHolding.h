//
//  BNRStockHolding.h
//  Stocks_Ch18_Challenge
//
//  Created by Mark Morowczynski on 5/15/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject
{
    // BNRStockHolding has three instance variables
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

// BNRStockHolding has methods to read and set it's instance variables

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)p;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)c;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)s;

// BNRStockHolding has a methods to calculate the cost in dollars and the value in dollars

- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares

@end

NS_ASSUME_NONNULL_END
