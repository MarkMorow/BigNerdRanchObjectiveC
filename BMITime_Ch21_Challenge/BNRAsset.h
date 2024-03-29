//
//  BNRAsset.h
//  BMITime
//
//  Created by Mark Morowczynski on 5/16/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BNRAsset : NSObject

@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;

@end

NS_ASSUME_NONNULL_END
