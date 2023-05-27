//
//  BNRForeignStockHolding.h
//  HoldingPortfolio_Ch22_Challenge
//
//  Created by Mark Morowczynski on 5/27/23.
//

#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate;

@end

NS_ASSUME_NONNULL_END
