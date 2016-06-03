//
//  JJRootCollectionView.m
//  JJHelperDemo
//
//  Created by Jay on 16/6/2.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "JJRootCollectionView.h"

@implementation JJRootCollectionView

#pragma mark - Inherit

- (id)dequeueReusableCellWithReuseIdentifier:(NSString *)identifier forIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [super dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    return cell;
}


@end
