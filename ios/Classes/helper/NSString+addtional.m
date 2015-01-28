//
//  NSString+addtional.m
//  chartee
//
//  Created by Eugene Stewart on 1/28/15.
//
//

#import <Foundation/Foundation.h>
#import "NSString+addtional.h"


@implementation NSString (addtional)
- (id) objectFromJSONString {
    NSData* data = [self dataUsingEncoding: NSUTF8StringEncoding];
    return [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
}

- (id) mutableObjectFromJSONString {
    id _data = [self objectFromJSONString];
    if ([_data respondsToSelector:@selector(mutableCopyWithZone:)]) {
        return _data;
    }
    else {
        return [_data mutableCopy];
    }
}

@end
