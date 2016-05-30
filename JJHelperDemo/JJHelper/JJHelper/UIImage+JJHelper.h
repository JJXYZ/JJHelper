//
//  UIImage+JJHelper.h
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (JJHelper)

/**
*  图片拉伸
*
*  @param name name
*
*  @return UIImage
*/
+ (UIImage *)stretchableImageName:(NSString *)name;

/**
 *  截屏
 *
 *  @return UIImage
 */
+ (UIImage *)captureScreen;

/**
 *  用一个颜色生成图片
 *
 *  @param color 图片颜色
 *
 *  @return 图片
 */
+ (UIImage *)imageWithColor:(UIColor *)color;


@end
