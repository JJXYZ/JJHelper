//
//  NSString+JJSize.m
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "NSString+JJSize.h"
#import "JJDefine_Device.h"

@implementation NSString (JJSize)

- (CGSize)getSize:(UIFont *)font limitWidth:(CGFloat)width {
    /** 设置字体 */
    CGSize size = CGSizeMake(width, MAXFLOAT);
    if (SYSTEM_VERSION >= 7.0) {
        NSDictionary *attributesDic = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName,nil];
        CGRect rect = [self boundingRectWithSize:size options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attributesDic context:nil];
        size = rect.size;
    }
    else {
        /** IOS6.0 */
        if ([self respondsToSelector:@selector(sizeWithFont:constrainedToSize:lineBreakMode:)]) {
            size = [self sizeWithFont:font constrainedToSize:size lineBreakMode:NSLineBreakByCharWrapping];
        }
    }
    return size;
}


- (CGSize)getSize:(UIFont*)font limitWidth:(CGFloat)width lineSpace:(CGFloat)space {
    /** 设置字体 */
    CGSize size = CGSizeMake(width, MAXFLOAT);
    if (SYSTEM_VERSION >= 7.0) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineSpacing = space;
        NSDictionary * attributesDic = [NSDictionary dictionaryWithObjectsAndKeys:font, NSFontAttributeName,paragraphStyle,NSParagraphStyleAttributeName,nil];
        CGRect rect = [self boundingRectWithSize:size options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attributesDic context:nil];
        size = rect.size;
    }
    else {
        /** IOS6.0 */
        if ([self respondsToSelector:@selector(sizeWithFont:constrainedToSize:lineBreakMode:)]) {
            size = [self sizeWithFont:font constrainedToSize:size lineBreakMode:NSLineBreakByCharWrapping];
        }
    }
    return size;
}

- (NSInteger)byteLength {
    NSUInteger len = self.length;
    NSString *pattern = @"[\u4e00-\u9fa5]";
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:nil];
    NSInteger numMatch = [regex numberOfMatchesInString:self options:NSMatchingReportProgress range:NSMakeRange(0, len)];
    return len + numMatch;
}

+ (int)getCharacterFromStr:(NSString *)tempStr {
    int strlength = 0;
    char *p = (char *)[tempStr cStringUsingEncoding:NSUnicodeStringEncoding];
    for (int i=0; i<[tempStr lengthOfBytesUsingEncoding:NSUnicodeStringEncoding]; i++) {
        if (*p) {
            p++;
            strlength++;
        }
        else {
            p++;
        }
    }
    return strlength;
}



@end
