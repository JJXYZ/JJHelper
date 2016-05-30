//
//  UIImage+JJCompress.m
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "UIImage+JJCompress.h"
#import "JJDefine_Device.h"


#define MAX_UPLOAD_IMG_W (M_SCREEN_W*2)
#define MAX_UPLOAD_IMG_H (M_SCREEN_H*2)

/** 图片上传的最大byte */
#define MAX_UPLOAD_IMG_FILESIZE 100000


@implementation UIImage (JJCompress)

#pragma mark - Private Methods
/** 是否是长图 */
+ (BOOL)isLongImage:(UIImage *)image {
    if((image.size.height > 2*image.size.width)||(image.size.width > 2*image.size.height)) {
        return YES;
    }
    return NO;
}

/** 按图片大小压缩图片尺寸 */
+ (UIImage *)compressWithFileSizeImage:(UIImage *)image
{
    NSData *data = UIImageJPEGRepresentation(image, 1);
    if(data == nil) {
        data = UIImagePNGRepresentation(image);
    }
    
    UIImage *newImage = image;
    if(data.length > MAX_UPLOAD_IMG_FILESIZE) {
        if(newImage.size.width > MAX_UPLOAD_IMG_W && newImage.size.width > newImage.size.height) {
            CGSize size = CGSizeMake(MAX_UPLOAD_IMG_W, MAX_UPLOAD_IMG_W*newImage.size.height/newImage.size.width);
            newImage = [UIImage compressWithImage:newImage toSize:size];
        }
        else if(newImage.size.height > MAX_UPLOAD_IMG_H && newImage.size.height > newImage.size.width) {
            CGSize size = CGSizeMake(MAX_UPLOAD_IMG_H * newImage.size.width / newImage.size.height, MAX_UPLOAD_IMG_H);
            newImage = [UIImage compressWithImage:newImage toSize:size];
        }
    }
    return newImage;
}

/** 压缩图片质量 */
+ (NSData *)compressWithQualityImage:(UIImage *)image
{
    NSData *data = UIImageJPEGRepresentation(image, 1);
    if(data == nil){
        data = UIImagePNGRepresentation(image);
        return data;
    }
    
    NSData *theData = nil;
    if(data.length > MAX_UPLOAD_IMG_FILESIZE) {
        float percent = [UIImage getQualityPercentImage:image];
        theData = UIImageJPEGRepresentation(image, percent);
        return theData;
    }
    return data;
}

/** 获取图片压缩的百分比 */
+ (CGFloat)getQualityPercentImage:(UIImage *)image
{
    NSData *data = UIImageJPEGRepresentation(image, 1);
    if(data == nil) {
        return 1;
    }
    
    CGFloat percent = 1;
    while(data.length > MAX_UPLOAD_IMG_FILESIZE) {
        percent -= 0.1;
        /** 压缩图片质量 */
        data = UIImageJPEGRepresentation(image, percent);
        if(data.length < MAX_UPLOAD_IMG_FILESIZE || percent<=0.1){
            break;
        }
    }
    return percent;
}



#pragma mark - Public Methods
+ (UIImage *)compressWithImage:(UIImage *)image toSize:(CGSize)size
{
    // Create a graphics image context
    UIGraphicsBeginImageContext(size);
    // Tell the old image to draw in this new context, with the desired
    // new size
    [image drawInRect:CGRectMake(0,0,size.width,size.height)];
    // Get the new image from the context
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    // End the context
    UIGraphicsEndImageContext();
    
    return newImage;
}

/** 压缩要上传的图片 */
+ (UIImage *)imageWithUploadImage:(UIImage *)image {
    UIImage *theImage = image;
    NSData *theData = nil;
    
    /** 如果不是长图,压缩尺寸 */
    if(![UIImage isLongImage:theImage]){
        theImage = [UIImage compressWithFileSizeImage:theImage];
    }
    
    /** 压缩图片质量 */
    theData = [UIImage compressWithQualityImage:theImage];
    
    UIImage *uploadImage = [UIImage imageWithData:theData];
    
    return uploadImage;
}

+ (NSData *)dataWithUploadImage:(UIImage *)image {
    UIImage *theImage = image;
    NSData *theData = nil;
    
    /** 如果不是长图,压缩尺寸 */
    if(![UIImage isLongImage:theImage]){
        theImage = [UIImage compressWithFileSizeImage:theImage];
    }
    
    /** 压缩图片质量 */
    theData = [UIImage compressWithQualityImage:theImage];
    
    return theData;
}
@end
