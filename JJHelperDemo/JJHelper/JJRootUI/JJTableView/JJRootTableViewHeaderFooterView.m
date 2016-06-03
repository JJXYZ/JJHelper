//
//  JJRootTableViewHeaderFooterView.m
//  JJHelperDemo
//
//  Created by Jay on 16/6/2.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "JJRootTableViewHeaderFooterView.h"

@implementation JJRootTableViewHeaderFooterView

+ (instancetype)viewWithTableView:(UITableView *)tableView {
    NSString *reuseIdentifier = NSStringFromClass([self class]);
    id view = [tableView dequeueReusableHeaderFooterViewWithIdentifier:reuseIdentifier];
    if (view == nil) {
        view = [[self alloc] initWithReuseIdentifier:reuseIdentifier];
    }
    return view;
}

@end
