//
//  main.m
//  HoldingPortfolio_Ch21_Challenge
//
//  Created by Mark Morowczynski on 5/21/23.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an empty mutable array
        //NSMutableArray *array = [[NSMutableArray alloc] init];
        BNRPortfolio *holdings = [[BNRPortfolio alloc] init];
        
        // Create 3 instances of stocks
        BNRStockHolding *stocka = [[BNRStockHolding alloc] init];
        BNRStockHolding *stockb = [[BNRStockHolding alloc] init];
        BNRStockHolding *stockc = [[BNRStockHolding alloc] init];
        
        //Create 1 instance of foreign stock
        BNRForeignStockHolding *fstocka = [[BNRForeignStockHolding alloc] init];
        
        //Setting values for stocks
        stocka.numberOfShares=40;
        stocka.purchaseSharePrice=2.30;
        stocka.currentSharePrice=4.50;
        stocka.ticker=@"AAA";
            
        stockb.numberOfShares=90;
        stockb.purchaseSharePrice=12.19;
        stockb.currentSharePrice=10.56;
        stockb.ticker=@"BBB";
        
        stockc.numberOfShares=210;
        stockc.purchaseSharePrice=45.10;
        stockc.currentSharePrice=49.51;
        stockc.ticker=@"CCC";
        
        fstocka.numberOfShares=40;
        fstocka.purchaseSharePrice=2.30;
        fstocka.currentSharePrice=4.50;
        fstocka.conversionRate=0.94;
        fstocka.ticker=@"FSA";
        
        //Adding stocks to array
        [holdings addHoldings:stocka];
        [holdings addHoldings:stockb];
        [holdings addHoldings:stockc];
        [holdings addForeignHoldings:fstocka];
        
        
        NSLog(@"%@", holdings);
                    }

        return 0;
    }

