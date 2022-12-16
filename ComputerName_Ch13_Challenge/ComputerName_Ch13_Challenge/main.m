//
//  main.m
//  ComputerName_Ch13_Challenge
//
//  Created by Mark Morowczynski on 12/15/22.
//  Use NSHost and NSString to print out the computer name of the local host.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSHost *myHost = [NSHost currentHost];
        NSString *hostName = [myHost localizedName];
        NSLog(@"The local host name is %@", hostName);
    }
    return 0;
}
