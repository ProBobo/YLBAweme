//
//  UIView+YLBFrame.h
//  YLBCommon_Example
//
//  Created by yulibo on 2020/3/24.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (YLBFrame)

@property(nonatomic, assign) CGFloat ylb_x;
@property(nonatomic, assign) CGFloat ylb_y;
@property(nonatomic, assign) CGFloat ylb_width;
@property(nonatomic, assign) CGFloat ylb_height;
@property(nonatomic, assign) CGPoint ylb_origin;
@property(nonatomic, assign) CGSize ylb_size;
- (void)ylb_becomeCenterInSuperView:(UIView *)superView;

@end

NS_ASSUME_NONNULL_END
