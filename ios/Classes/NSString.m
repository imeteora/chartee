//
//  String.m
//  tzz
//
//  Created by zzy on 10/26/11.
//  Copyright 2011 Zhengzhiyu. All rights reserved.
//

#import "NSString.h"


@implementation NSString(Helpers)

-(NSString *)toUTF8String{  
    CFStringRef nonAlphaNumValidChars = CFSTR("![DISCUZ_CODE_1]’()*+,-./:;=?@_~");          
    NSString *preprocessedString = (__bridge NSString*)CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault, (CFStringRef)self, CFSTR(""), kCFStringEncodingUTF8);
    NSString *newStr = (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,(CFStringRef)preprocessedString,NULL,nonAlphaNumValidChars,kCFStringEncodingUTF8);
    return newStr;          
}

@end
