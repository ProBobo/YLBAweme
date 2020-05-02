//
//  YLBAwemeMainTabBarController.m
//  YLBAweme_Example
//
//  Created by yulibo on 2020/5/2.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBAwemeMainTabBarController.h"
#import "YLBAwemeAttentController.h"
#import "YLBAwemeMessageController.h"
#import "YLBAwemeMineController.h"
#import "GKDYTabBar.h"
#import "GKDYNavigationController.h"

@interface YLBAwemeMainTabBarController ()
@property (nonatomic, strong) GKDYTabBar    *dyTabBar;
@end

@implementation YLBAwemeMainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    
    // 替换系统tabbar
    self.dyTabBar = [GKDYTabBar new];
    [self setValue:self.dyTabBar forKey:@"tabBar"];
    
    self.playerVC = [YLBAwemePlayController new];
//    self.playerVC.delegate = self;
    
    [self addChildVC:self.playerVC title:@"首页"];
    [self addChildVC:[YLBAwemeAttentController new] title:@"关注"];
    [self addChildVC:[YLBAwemeMessageController new] title:@"消息"];
    [self addChildVC:[YLBAwemeMineController new] title:@"我"];
}

- (void)addChildVC:(UIViewController *)childVC title:(NSString *)title {
    childVC.tabBarItem.title = title;
    childVC.tabBarItem.image = [[UIImage gk_imageWithColor:[UIColor clearColor] size:CGSizeMake(36, 3)] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVC.tabBarItem.selectedImage = [[UIImage gk_imageWithColor:[UIColor whiteColor] size:CGSizeMake(36, 3)] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    childVC.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -14);
    childVC.tabBarItem.imageInsets = UIEdgeInsetsMake(28, 0, -28, 0);
    
    [childVC.tabBarItem setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:16], NSForegroundColorAttributeName: UIColor.whiteColor} forState:UIControlStateNormal];
    [childVC.tabBarItem setTitleTextAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:16.0f], NSForegroundColorAttributeName: [UIColor whiteColor]} forState:UIControlStateSelected];
    
    GKDYNavigationController *nav = [GKDYNavigationController rootVC:childVC translationScale:NO];
    nav.gk_openScrollLeftPush = YES;
    [self addChildViewController:nav];
}


@end
