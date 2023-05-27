//
//  BNRPortfolio.h
//  HoldingPortfolio_Ch22_Challenge
//
//  Created by Mark Morowczynski on 5/27/23.
//

#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRPortfolio : NSObject

@property (nonatomic, copy) NSArray *holdings;

-(float) totalValue;
-(float) totalCost;
-(void) addHoldings:(BNRStockHolding *)holding;
-(void) addForeignHoldings:(BNRStockHolding *)holdingF;

@end

NS_ASSUME_NONNULL_END
