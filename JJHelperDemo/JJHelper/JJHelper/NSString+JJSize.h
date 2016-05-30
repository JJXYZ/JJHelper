//
//  NSString+JJSize.h
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (JJSize)

/**
 *  获取字符串Size
 *
 *  @param font  font
 *  @param width width
 *
 *  @return CGSize
 */
- (CGSize)getSize:(UIFont *)font limitWidth:(CGFloat)width;

/**
 *  获取带行间距的字符串Size
 *
 *  @param font  font
 *  @param space space
 *  @param width width
 *
 *  @return CGSize
 */
- (CGSize)getSize:(UIFont*)font limitWidth:(CGFloat)width lineSpace:(CGFloat)space;


/** 中文字符长度 */
- (NSInteger)byteLength;

/** 判断字符串字符个数 */
+ (int)getCharacterFromStr:(NSString *)tempStr;

@end
