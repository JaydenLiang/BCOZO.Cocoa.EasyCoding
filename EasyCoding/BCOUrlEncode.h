//
//  BCOZUrlEncode.h
//  EasyCoding
//
//  Created by Jayden Liang on 15/9/1.
//  Copyright (c) 2015年 BCOZ Online. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BCOUrlEncode : NSObject
+(NSString*)escapeUTF8For:(NSString *)inputString;
+(NSString*)escapeUTF8For:(NSString *)inputString escapedChars:(NSString*)escChars;
+(NSString*)escapeUTF8For:(NSString *)inputString escapedChars:(NSString*)escChars unescapedChars:(NSString*)unescChars;
@end
