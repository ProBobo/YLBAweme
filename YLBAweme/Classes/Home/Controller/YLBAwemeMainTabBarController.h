//
//  YLBAwemeMainTabBarController.h
//  YLBAweme_Example
//
//  Created by yulibo on 2020/5/2.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YLBAwemePlayController.h"

NS_ASSUME_NONNULL_BEGIN

@interface YLBAwemeMainTabBarController : UITabBarController
@property (nonatomic, strong) YLBAwemePlayController  *playerVC;
@end

NS_ASSUME_NONNULL_END
