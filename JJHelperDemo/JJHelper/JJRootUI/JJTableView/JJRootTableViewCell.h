//
//  JJRootTableViewCell.h
//  JJHelperDemo
//
//  Created by Jay on 16/6/2.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UITableViewCell+JJCreate.h"

#define R_CELL_H 44

@interface JJRootTableViewCell : UITableViewCell

+ (CGFloat)cellHeight;

- (void)refreshWithModel:(id)model;

@end
