//
//  JJRootCollectionViewCell.m
//  JJHelperDemo
//
//  Created by Jay on 16/6/2.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "JJRootCollectionViewCell.h"

@implementation JJRootCollectionViewCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
}


#ifdef __IPHONE_8_0
- (UICollectionViewLayoutAttributes *)preferredLayoutAttributesFittingAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes
{
    return layoutAttributes;
}
#endif


@end
