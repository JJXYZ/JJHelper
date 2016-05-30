//
//  UIImage+JJCompress.h
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (JJCompress)

/**
 *  压缩图片
 *
 *  @param image 需要压缩的图片
 *
 *  @return 压缩好的图片
 */
+ (UIImage *)compressWithImage:(UIImage *)image toSize:(CGSize)size;

/**
 *  压缩要上传的图片
    算法:
    1.判断是否是长图(Width>2Height或者Height>2Width)
        是:不处理
        否:按照宽高比例压缩图片(长宽控制在2倍的屏幕的宽高以内)
    2.获取压缩图片的百分比,每次降低10%,直到小于最大图片上传大小
    3.按百分比压缩图片
 */
+ (UIImage *)imageWithUploadImage:(UIImage *)image;

/**
 *  压缩要上传的图片
 *
 *  @param image image
 *
 *  @return NSData
 */
+ (NSData *)dataWithUploadImage:(UIImage *)image;

@end
