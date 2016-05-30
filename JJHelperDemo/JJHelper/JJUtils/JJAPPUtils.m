//
//  JJAPPUtils.m
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "JJAPPUtils.h"

@implementation JJAPPUtils

/** 获取当前显示的VC */
+ (UIViewController *)curVisibleVC {    
    UIViewController *visibleVC = nil;
    UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
    
    UIViewController *rootVC = keyWindow.rootViewController;
    if ([rootVC isKindOfClass:[UINavigationController class]]) {
        visibleVC = ((UINavigationController *)rootVC).visibleViewController;
    }
    else if ([rootVC isKindOfClass:[UIViewController class]]) {
        visibleVC = rootVC;
    }
    return visibleVC;
}


/** 获取当前RootVC */
+ (UIViewController *)getCurRootVC {
    UIViewController *result;
    UIWindow *topWindow = [[UIApplication sharedApplication] keyWindow];
    if (topWindow.windowLevel != UIWindowLevelNormal) {
        NSArray *windows = [[UIApplication sharedApplication] windows];
        for(topWindow in windows) {
            if (topWindow.windowLevel == UIWindowLevelNormal)
                break;
        }
    }
    UIView *rootView = [[topWindow subviews] objectAtIndex:0];
    id nextResponder = [rootView nextResponder];
    if ([nextResponder isKindOfClass:[UIViewController class]]) {
        result = nextResponder;
    }
    else if ([topWindow respondsToSelector:@selector(rootViewController)] && topWindow.rootViewController != nil) {
        result = topWindow.rootViewController;
    }
    else {
        NSAssert(NO, @"ShareKit: Could not find a root view controller.  You can assign one manually by calling [[SHK currentHelper] setRootViewController:YOURROOTVIEWCONTROLLER].");
    }
    return result;
}


+ (void)setStatusBarLight {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

+ (void)setStatusBarDark {
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
}


@end
