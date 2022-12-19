//
//  main.m
//  TimeSinceBirth_Ch14_Challenge
//
//  Created by Mark Morowczynski on 12/19/22.
//  Determine the number of seconds since a date

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSDate *date = [[NSDate alloc] init];
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1969];
        [comps setMonth:4];
        [comps setDay:30];
        [comps setHour:13];
        [comps setMinute:10];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        double secondsSinceEarlierDate = [date timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"I've been alive for %.0f seconds.\n", secondsSinceEarlierDate);
        
        
    }
    return 0;
}
