//
//  main.m
//  InterestingNames_Ch17_Challenge
//
//  Created by Mark Morowczynski on 5/7/23.
//  Modify existing program to read two files, compare the words in both.

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Read in a file as a huge string (ignoring the possibility of an error)
        
        //Can be both upper and lower case.
       NSString *nameString = [NSString stringWithContentsOfFile: @"/usr/share/dict/propernames" encoding: NSUTF8StringEncoding error: NULL];
        
        // Only lowercase
        NSString *wordString = [NSString stringWithContentsOfFile: @"/usr/share/dict/words" encoding: NSUTF8StringEncoding error: NULL];
                
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString: @"\n"];
        NSArray *words = [wordString componentsSeparatedByString: @"\n"];
        
        //intialize word counter
        int count = 0;
        
        //Looping through the array
        for (NSString *n in names)
        {
            if ([words containsObject:n.lowercaseString])
            {
                NSLog(@"%@\t%@", n, n); count++;
            }
            
        }
        NSLog(@"Total equal words in both files - %d", count);
    }
    return 0;
}
