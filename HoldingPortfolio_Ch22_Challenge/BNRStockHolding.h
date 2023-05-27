//
//  BNRStockHolding.h
//  HoldingPortfolio_Ch22_Challenge
//
//  Created by Mark Morowczynski on 5/27/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRStockHolding : NSObject

@property (nonatomic) float purchaseSharePrice;
@property (nonatomic) float currentSharePrice;
@property (nonatomic) int numberOfShares;
@property (nonatomic) NSString *ticker;

// BNRStockHolding has a methods to calculate the cost in dollars and the value in dollars

- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares


@end

NS_ASSUME_NONNULL_END
