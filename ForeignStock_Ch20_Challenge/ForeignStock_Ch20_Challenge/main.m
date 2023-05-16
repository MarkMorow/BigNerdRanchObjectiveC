//
//  main.m
//  ForeignStock_Ch20_Challenge
//
//  Created by Mark Morowczynski on 5/16/23.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an empty mutable array
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
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
            
        stockb.numberOfShares=90;
        stockb.purchaseSharePrice=12.19;
        stockb.currentSharePrice=10.56;
        
        stockc.numberOfShares=210;
        stockc.purchaseSharePrice=45.10;
        stockc.currentSharePrice=49.51;
        
        fstocka.numberOfShares=40;
        fstocka.purchaseSharePrice=2.30;
        fstocka.currentSharePrice=4.50;
        fstocka.conversionRate=0.94;
        
        //Adding stocks to array
        [array addObject:stocka];
        [array addObject:stockb];
        [array addObject:stockc];
        [array addObject:fstocka];
        
        for (BNRStockHolding *share in array) {
        NSLog(@"Price for one share is %.2f$. Total value in dollars %.2f$\n", [share costInDollars], [share valueInDollars]);
                    }
            
        }
        return 0;
    }

