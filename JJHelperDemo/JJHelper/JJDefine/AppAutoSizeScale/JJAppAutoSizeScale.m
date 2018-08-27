//
//  JJAppAutoSizeScale.m
//  JJHelperDemo
//
//  Created by Jay on 2018/8/27.
//  Copyright © 2018年 JJ. All rights reserved.
//

#import "JJAppAutoSizeScale.h"


__unused static CGSize inchesSize3_5() {
    return CGSizeMake(320.0, 480.0);
}

__unused static CGSize inchesSize4_0() {
    return CGSizeMake(320.0, 568.0);
}

__unused static CGSize inchesSize4_7() {
    return CGSizeMake(375.0, 667.0);
}

__unused static CGSize inchesSize5_5() {
    return CGSizeMake(414.0, 736.0);
}

__unused static CGSize inchesSize5_8() {
    return CGSizeMake(375.0, 812.0);
}

CGFloat autoSizeScale() {
    return MIN(autoSizeScaleX(), autoSizeScaleY());
}

CGFloat autoSizeScaleX() {
    CGSize screenSize = UIScreen.mainScreen.bounds.size;
    CGFloat screenWidth = screenSize.width;
    return screenWidth / inchesSize4_0().width;
}

CGFloat autoSizeScaleY() {
    CGSize screenSize = UIScreen.mainScreen.bounds.size;
    CGFloat screenHeight = screenSize.height;
    
    if (CGSizeEqualToSize(screenSize, inchesSize3_5())) {
        screenHeight = inchesSize4_0().height;
    }
    else if (CGSizeEqualToSize(screenSize, inchesSize5_8())) {
        screenHeight = inchesSize4_7().height;
    }
    
    return screenHeight / inchesSize4_0().height;;
}

CGFloat scaleX(CGFloat value) {
    return value * autoSizeScaleX();
}

CGFloat scaleY(CGFloat value) {
    return value * autoSizeScaleY();
}

CGFloat ceilScaleX(CGFloat value) {
    return ceil(scaleX(value));
}

CGFloat ceilScaleY(CGFloat value) {
    return ceil(scaleY(value));
}
