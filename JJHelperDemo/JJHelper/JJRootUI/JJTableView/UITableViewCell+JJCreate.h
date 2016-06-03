//
//  UITableViewCell+JJCreate.h
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (JJCreate)

/**
 *  创建cell,根据类名复用机制
 */
+ (instancetype)cellWithTableView:(UITableView *)tableView;

/**
 *  使用xib创建cell,根据类名获取nibName
 */
+ (instancetype)cellNibWithTableView:(UITableView *)tableView;


/**
 *  使用xib创建cell
 */
+ (instancetype)cellNibWithTableView:(UITableView *)tableView reusedId:(NSString *)reusedId nibNamed:(NSString *)nibName atIndex:(NSInteger)index;

/**
 *  如果要对cell进行其他设置,重写该方法,子类重载
 */
- (void)layoutTableViewCell;

@end
