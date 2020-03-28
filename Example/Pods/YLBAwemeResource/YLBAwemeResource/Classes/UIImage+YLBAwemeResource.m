//
//  UIImage+YLBAwemeResource.m
//  YLBAwemeResource_Example
//
//  Created by yulibo on 2020/3/28.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "UIImage+YLBAwemeResource.h"
#import "YLBAwemeBundleManager.h"

@implementation UIImage (YLBAwemeResource)
+ (UIImage *)ylb_imageNamed:(NSString *)name {
    NSBundle *bundle = [[YLBAwemeBundleManager sharedInstance] ylb_bundle];
    UIImage *image = [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
    return image;
}
@end
