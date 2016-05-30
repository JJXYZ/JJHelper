//
//  UIButton+JJHelper.h
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (JJHelper)

/**
 *  设置背景颜色
 *
 *  @param backgroundColor backgroundColor
 *  @param state           state
 */
- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;

@end
