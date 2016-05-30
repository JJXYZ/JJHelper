//
//  NSDate+JJHelper.h
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (JJHelper)

/**
 *  把date转换成时间戳(毫秒)
 *
 *  @param date NSDate
 *
 *  @return 例:@"1401234567000"
 */
+ (NSString *)getDateMSTimestamp:(NSDate *)date;


/**
 *  获取当前的时间戳字符串(毫秒)
 *
 *  @return 例:@"1401234567000"
 */
+ (NSString *)getNowDateMSTimestamp;

/**
 *  把Date转换成String,格式yyyy-MM-dd HH:mm:ss
 *
 *  @param date NSDate
 *
 *  @return NSString
 */
+ (NSString *)getTimeWithDate:(NSDate *)date;

/**
 *  把Date转换成String,格式yyyy
 *
 *  @param date NSDate
 *
 *  @return NSString
 */
+ (NSString *)getDateYearStr:(NSDate *)date;


@end
