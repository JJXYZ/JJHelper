//
//  NSString+JJHelper.m
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "NSString+JJHelper.h"

@implementation NSString (JJHelper)

- (NSString *)stringTrimWhitespace {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}


@end
