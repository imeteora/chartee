//
//  NSString+addtional.h
//  chartee
//
//  Created by Eugene Stewart on 1/28/15.
//
//

#import <Foundation/Foundation.h>

@interface NSString (addtional)
@property (NS_NONATOMIC_IOSONLY, readonly, strong) id objectFromJSONString;
@property (NS_NONATOMIC_IOSONLY, readonly, strong) id mutableObjectFromJSONString;
@end
