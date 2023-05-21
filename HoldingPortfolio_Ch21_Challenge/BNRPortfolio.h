//
//  BNRPortfolio.h
//  HoldingPortfolio_Ch21_Challenge
//
//  Created by Mark Morowczynski on 5/21/23.
//

#import "BNRStockHolding.h"

NS_ASSUME_NONNULL_BEGIN

@interface BNRPortfolio : BNRStockHolding
{
    NSMutableArray *_holdings;
}

@property (nonatomic, copy) NSArray *holdings;

-(float) totalValue;
-(float) totalCost;
-(void) addHoldings:(BNRStockHolding *)holding;
-(void) addForeignHoldings:(BNRStockHolding *)holdingF;

@end

NS_ASSUME_NONNULL_END
