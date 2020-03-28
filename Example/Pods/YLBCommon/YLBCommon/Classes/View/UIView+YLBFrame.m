//
//  UIView+YLBFrame.m
//  YLBCommon_Example
//
//  Created by yulibo on 2020/3/24.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "UIView+YLBFrame.h"

@implementation UIView (YLBFrame)

#pragma mark - x
- (void)setYlb_x:(CGFloat)ylb_x {
    CGRect frame = self.frame;
    frame.origin.x = ylb_x;
    self.frame = frame;
}

- (CGFloat)ylb_x {
    return self.frame.origin.x;
}
#pragma mark - y
- (void)setYlb_y:(CGFloat)ylb_y {
    CGRect frame = self.frame;
    frame.origin.y = ylb_y;
    self.frame = frame;
}

- (CGFloat)ylb_y {
    return self.frame.origin.y;
}
#pragma mark - width
- (void)setYlb_width:(CGFloat)ylb_width {
    CGRect frame = self.frame;
    frame.size.width = ylb_width;
    self.frame = frame;
}

- (CGFloat)ylb_width {
    return self.frame.size.width;
}
#pragma mark - height
- (void)setYlb_height:(CGFloat)ylb_height {
    CGRect frame = self.frame;
    frame.size.height = ylb_height;
    self.frame = frame;
}

- (CGFloat)ylb_height {
    return self.frame.size.height;
}
#pragma mark - origin
- (void)setYlb_origin:(CGPoint)ylb_origin {
    CGRect frame = self.frame;
    frame.origin = ylb_origin;
    self.frame = frame;
}

- (CGPoint)ylb_origin {
    return self.frame.origin;
}
#pragma mark - size
- (void)setYlb_size:(CGSize)ylb_size {
    CGRect frame = self.frame;
    frame.size = ylb_size;
    self.frame = frame;
}

- (CGSize)ylb_size {
    return self.frame.size;
}

#pragma mark - 居中

- (void)ylb_becomeCenterInSuperView:(UIView *)superView {
    self.center = CGPointMake(superView.ylb_width/2.0, superView.ylb_height/2.0);
}

@end
