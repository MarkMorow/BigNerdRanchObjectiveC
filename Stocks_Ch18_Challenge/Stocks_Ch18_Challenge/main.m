//
//  main.m
//  Stocks_Ch18_Challenge
//
//  Created by Mark Morowczynski on 5/15/23.
//  Create your own stockholding class, do some calculations based on share price

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
    // Create an empty mutable array
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    // Create 3 instances of stocks
    BNRStockHolding *stocka = [[BNRStockHolding alloc] init];
    BNRStockHolding *stockb = [[BNRStockHolding alloc] init];
    BNRStockHolding *stockc = [[BNRStockHolding alloc] init];
    
    //Setting values for stocks
    [stocka setNumberOfShares:40];
    [stocka setPurchaseSharePrice:2.30];
    [stocka setCurrentSharePrice:4.50];
        
    [stockb setNumberOfShares:90];
    [stockb setPurchaseSharePrice:12.19];
    [stockb setCurrentSharePrice:10.56];
    
    [stockc setNumberOfShares:210];
    [stockc setPurchaseSharePrice:45.10];
    [stockc setCurrentSharePrice:49.51];
    
    //Adding stocks to array
    [array addObject:stocka];
    [array addObject:stockb];
    [array addObject:stockc];
    
    for (BNRStockHolding *share in array) {
    NSLog(@"Price for one share is %.2f$. Total value in dollars %.2f$\n", [share costInDollars], [share valueInDollars]);
                }
        
    }
    return 0;
}
