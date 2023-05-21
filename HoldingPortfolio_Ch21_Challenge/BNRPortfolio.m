//
//  BNRPortfolio.m
//  HoldingPortfolio_Ch21_Challenge
//
//  Created by Mark Morowczynski on 5/21/23.
//

#import "BNRPortfolio.h"

@implementation BNRPortfolio

-(void)addHoldings:(BNRStockHolding *)holding
{
    if (!_holdings)
    {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:holding];
}

-(void)addForeignHoldings:(BNRStockHolding *)holdingF
{
    if (!_holdings)
    {
        _holdings = [[NSMutableArray alloc] init];
    }
    [_holdings addObject:holdingF];
}

-(float)totalValue
{
    float sum = 0;
    for (BNRStockHolding *h in _holdings)
    {
        sum += [h valueInDollars];
    }
    return sum;
}

-(float)totalCost
{
    float sum = 0;
    for (BNRStockHolding *h in _holdings)
    {
        sum += [h costInDollars];
    }
    return sum;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Total value is %.2f and total cost is %.2f>",
            self.totalValue, self.totalCost];
}

@end
