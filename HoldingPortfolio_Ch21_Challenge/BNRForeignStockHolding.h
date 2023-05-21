//
//  BNRForeignStockHolding.h
//  HoldingPortfolio_Ch21_Challenge
//
//  Created by Mark Morowczynski on 5/21/23.
//

#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate;

@end

NS_ASSUME_NONNULL_END
