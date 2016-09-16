//
//  JJAPPUtils.h
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JJAPPUtils : NSObject

/**
 *  获取当前显示的VC
 *
 *  @return VC
 */
+ (UIViewController *)curVisibleVC;

/**
 *  获取当前RootVC
 *
 *  @return RootViewController
 */
+ (UIViewController *)getCurRootVC;

/** 设置状态栏颜色:Light */
+ (void)setStatusBarLight;

/** 设置状态栏颜色:Dark */
+ (void)setStatusBarDark;

+ (void)setNavigationBarTransparentBackground;

+ (void)setNavigationBarOpaqueBackground;

@end
