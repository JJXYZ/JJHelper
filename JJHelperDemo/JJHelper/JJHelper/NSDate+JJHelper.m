//
//  NSDate+JJHelper.m
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "NSDate+JJHelper.h"

@implementation NSDate (JJHelper)

+ (NSString *)getDateMSTimestamp:(NSDate *)date {
    NSTimeInterval timeInterval = [date timeIntervalSince1970];
    NSString *timestamp = [NSString stringWithFormat:@"%lld", (long long)(timeInterval * 1000)];
    return timestamp;
}

+ (NSString *)getNowDateMSTimestamp {
    NSDate *nowDate = [NSDate date];
    NSString *timestamp = [self getDateMSTimestamp:nowDate];
    return timestamp;
}

+ (NSString *)getTimeWithDate:(NSDate *)date {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];//.SSS
    NSString *datestr = [formatter stringFromDate:date];
    return datestr;
}

+ (NSString *)getDateYearStr:(NSDate *)date {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy"];
    NSString *dateString = [dateFormat stringFromDate:date];
    return dateString;
}



@end
