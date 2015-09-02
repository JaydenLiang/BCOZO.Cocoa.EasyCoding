//
//  BCOZUrlEncode.m
//  EasyCoding
//
//  Created by Jayden Liang on 15/9/1.
//  Copyright (c) 2015年 BCOZ Online. All rights reserved.
//

#import "BCOUrlEncode.h"

static NSString *escapedChars = @"!*'();:@&=+$,/?%#[]";
@implementation BCOUrlEncode
+(NSString*)escapeUTF8For:(NSString *)inputString{
    NSString *urlEncodedString = (NSString *)
    CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)inputString, NULL, (CFStringRef)escapedChars, kCFStringEncodingUTF8 ));
    return urlEncodedString;
}
+(NSString*)escapeUTF8For:(NSString *)inputString escapedChars:(NSString*)escChars{
    NSString *urlEncodedString = (NSString *)
    CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)inputString, NULL, (CFStringRef)escChars, kCFStringEncodingUTF8 ));
    return urlEncodedString;
}
+(NSString*)escapeUTF8For:(NSString *)inputString escapedChars:(NSString*)escChars unescapedChars:(NSString*)unescChars{
    NSString *urlEncodedString = (NSString *)
    CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL, (CFStringRef)inputString, (CFStringRef)unescChars, (CFStringRef)escChars, kCFStringEncodingUTF8 ));
    return urlEncodedString;
}
@end
