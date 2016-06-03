//
//  JJRootTableViewHeaderFooterView.h
//  JJHelperDemo
//
//  Created by Jay on 16/6/2.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JJRootTableViewHeaderFooterView : UITableViewHeaderFooterView

/**
 *  创建HeaderFooterView,根据类名复用机制
 */
+ (instancetype)viewWithTableView:(UITableView *)tableView;

@end
