//
//  JJRootTableViewCell.m
//  JJHelperDemo
//
//  Created by Jay on 16/6/2.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "JJRootTableViewCell.h"

@implementation JJRootTableViewCell

#pragma mark - Inherit

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}


#pragma mark - Public Methods

+ (CGFloat)cellHeight {
    return R_CELL_H;
}

- (void)refreshWithModel:(id)model {
    
}

@end
