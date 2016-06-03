//
//  JJRootScrollView.m
//  JJHelperDemo
//
//  Created by Jay on 16/6/2.
//  Copyright © 2016年 JJ. All rights reserved.
//

#import "JJRootScrollView.h"

@implementation JJRootScrollView

#pragma mark - Lifecycle

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self layoutRootScrollViewUI];
    }
    return self;
}

#pragma mark - Private Methods

- (void)layoutRootScrollViewUI {
    
}

#if 0
#pragma mark - UIScrollViewDelegate

/** 已经滚动 */
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
}

/** 已经缩放 */
- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    
}

/** 将要拖拽 */
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {

}

/** 将要结束拖拽 */
- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset {
    
}

/** 已经结束拖拽 */
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    
}

/** 将要开始减速 */
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    
}

/** 已经结束减速 */
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    
}

/** 已经结束滚动 Animation 需要调用Animation类似的方法才会调用该方法 */
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    
}

/** 需要放大缩小的UIView */
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return nil;
}

/** 将要开始缩放 */
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view {
    
}

/** 已经结束缩放 */
- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(CGFloat)scale {
    
}

/** 能否滑动到Top */
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView {
    return YES;
}

/** 已经滑动到Top */
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView {
    
}

#endif

@end
