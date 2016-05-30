//
//  UINavigationController+JJHelper.m
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "UINavigationController+JJHelper.h"

@implementation UINavigationController (JJHelper)

- (BOOL)popToViewControllerClass:(Class)vcClass {
    for (UIViewController *vc in self.viewControllers) {
        if ([vc isKindOfClass:vcClass]) {
            [self popToViewController:vc animated:YES];
            return YES;
        }
    }
    return NO;
}

@end
