//
//  NSArray+JJSafe.h
//  JJSafeDemo
//
//  Created by Jay on 15/11/8.
//  Copyright © 2015年 JJ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (JJSafe)

/** 安全创建NSArray */
+ (instancetype)safeArrayWithObject:(id)object;

/** 安全取object */
- (id)safeObjectAtIndex:(NSUInteger)index;

/** 判断子元素是否是elementClass */
- (BOOL)safeKindofElementClass:(Class)elementClass;

@end
