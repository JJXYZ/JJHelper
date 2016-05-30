//
//  NSArray+JJSafe.m
//  JJSafeDemo
//
//  Created by Jay on 15/11/8.
//  Copyright © 2015年 JJ. All rights reserved.
//

#import "NSArray+JJSafe.h"

@implementation NSArray (JJSafe)

+ (instancetype)safeArrayWithObject:(id)object
{
    if (object) {
        return [self arrayWithObject:object];
    }
    else {
        return [self array];
    }
}


- (id)safeObjectAtIndex:(NSUInteger)index
{
    if (index >= self.count) {
        return nil;
    } else {
        return [self objectAtIndex:index];
    }
}

- (BOOL)safeKindofElementClass:(Class)elementClass {
    if (![self isKindOfClass:[NSArray class]]) {
        return NO;
    }
    for (id e in self) {
        if (![e isKindOfClass:elementClass]) {
            return NO;
        }
    }
    return YES;
}

@end
