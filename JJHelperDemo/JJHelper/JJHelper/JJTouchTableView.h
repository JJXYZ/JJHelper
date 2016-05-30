//
//  JJTouchTableView.h
//  JJHelperDemo
//
//  Created by Jay on 16/5/30.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  触摸tableView响应事件
 */

@protocol JJTouchTableViewDelegate <NSObject>

@optional

- (void)tableView:(UITableView *)tableView touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)tableView:(UITableView *)tableView touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)tableView:(UITableView *)tableView touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
- (void)tableView:(UITableView *)tableView touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event;

@end


@interface JJTouchTableView : UITableView

@property(nonatomic, weak) id <JJTouchTableViewDelegate> touchDelegate;

@end
