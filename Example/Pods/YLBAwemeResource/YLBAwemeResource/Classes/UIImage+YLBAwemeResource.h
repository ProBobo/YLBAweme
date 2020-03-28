//
//  UIImage+YLBAwemeResource.h
//  YLBAwemeResource_Example
//
//  Created by yulibo on 2020/3/28.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (YLBAwemeResource)
/**
 获取图片：在使用这个方法之前需要先对YLBBundleManager进行注册，方法为ylb_rigisterBundleForClass
 */
+ (UIImage *)ylb_imageNamed:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
