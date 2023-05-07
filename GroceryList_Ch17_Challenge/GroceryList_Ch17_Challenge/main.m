//
//  main.m
//  GroceryList_Ch17_Challenge
//
//  Created by Mark Morowczynski on 5/7/23.
//  Ch 17 Challenge. Create a grocery list using NSMutable Array. Print it out using fast enumeration

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Create an empty mutable array
        NSMutableArray *groceryList = [NSMutableArray array];
        
        [groceryList addObject:@"Loaf of bread"];
        [groceryList addObject:@"Container of milk"];
        [groceryList addObject:@"Stick of butter"];
        
        NSLog(@"My grocery list is:");
        for (NSString *item in groceryList)
        {
            NSLog(@"%@", item);
        }
        
    }
    return 0;
}
