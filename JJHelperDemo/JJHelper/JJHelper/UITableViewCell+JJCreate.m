//
//  UITableViewCell+JJCreate.m
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "UITableViewCell+JJCreate.h"
#import "JJSafeDefine.h"


@implementation UITableViewCell (JJCreate)

#pragma mark - Public Methods

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    NSString *reuseId = NSStringFromClass([self class]);
    
    id cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (cell == nil) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseId];
        [cell layoutTableViewCell];
    }
    return cell;
}



+ (instancetype)cellNibWithTableView:(UITableView *)tableView {
    
    NSString *nibName = NSStringFromClass([self class]);
    NSString *reuseId = nibName;
    
    id cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil] lastObject];
        [cell layoutTableViewCell];
    }
    return cell;
}


+ (instancetype)cellNibWithTableView:(UITableView *)tableView reusedId:(NSString *)reusedId nibNamed:(NSString *)nibName atIndex:(NSInteger)index {
    id cell = [tableView dequeueReusableCellWithIdentifier:reusedId];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:nibName owner:nil options:nil] safeObjectAtIndex:index];
        [cell layoutTableViewCell];
    }
    return cell;
}

#pragma mark - Private Methods

- (void)layoutTableViewCell {
    //子类重载
}

@end
