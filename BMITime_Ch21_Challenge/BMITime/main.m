//
//  main.m
//  BMITime
//
//  Created by Mark Morowczynski on 5/15/23.
//  Add removing asset

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an array of BNREmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for(int i=0; i<10; i++)
        {
            //Create an instance of BNREmployee
            BNREmployee *mikey = [[BNREmployee alloc] init];
            
            //Give the instance variables interesting values
            mikey.weightInKilos = 90 +i;
            mikey.heightInMeters = 1.8 - i/10.0;
            mikey.employeeID = i;
            
            // Put the employee in the employees array
            
            [employees addObject:mikey];
        }
        
        //Create 10 assets
        for (int i = 0; i<10; i++)
        {
            // Create an asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            
            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            
            //Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random () % [employees count];
            
            // Find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAsset:asset];
        }
        
        //Remove assets
        NSLog(@"Employees: %@", employees);
                
        NSLog(@"Removing asset from employee 3\n");

        BNREmployee *employeeNumberThree = [employees objectAtIndex:3];
        [employeeNumberThree removeAsset:employeeNumberThree.assets[0]];
                
        NSLog(@"employees count: %lu\n", (unsigned long)[employees count]);
                
                
        NSLog(@"Giving up ownership of arrays\n");
        
        employeeNumberThree = nil;
        employees = nil;

        NSLog(@"employees count: %lu\n", (unsigned long)[employees count]);
        
    }
    return 0;
}
