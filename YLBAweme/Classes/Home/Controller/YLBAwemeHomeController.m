//
//  YLBAwemeHomeController.m
//  YLBAweme_Example
//
//  Created by yulibo on 2020/5/2.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBAwemeHomeController.h"
#import <YLBCommon/YLBCommon.h>
#import "YLBAwemeScrollView.h"
#import "YLBAwemeSearchController.h"
#import "YLBAwemeMainTabBarController.h"
#import "YLBAwemePlayController.h"

@interface YLBAwemeHomeController ()<UIScrollViewDelegate, UITabBarControllerDelegate>
@property(nonatomic, strong) YLBAwemeScrollView *mainScrolView;
@property(nonatomic, strong) NSMutableArray *childVCs;

@property (nonatomic, strong) YLBAwemeSearchController  *searchVC;
@property (nonatomic, strong) YLBAwemeMainTabBarController    *mainVC;
@end

@implementation YLBAwemeHomeController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = UIColor.blackColor;
    self.gk_navigationBar.hidden = YES;
    
    [self.view addSubview:self.mainScrolView];
    
    CGFloat scrollW = YLB_SCREEN_WIDTH;
    CGFloat scrollH = YLB_SCREEN_HEIGHT;
    self.mainScrolView.frame = CGRectMake(0, 0, scrollW, scrollH);
    self.mainScrolView.contentSize = CGSizeMake(self.childVCs.count * scrollW, scrollH);
    
    [self.childVCs enumerateObjectsUsingBlock:^(UIViewController *vc, NSUInteger idx, BOOL * _Nonnull stop) {
        [self addChildViewController:vc];
        [self.mainScrolView addSubview:vc.view];
        
        vc.view.frame = CGRectMake(idx * scrollW, 0, scrollW, scrollH);
    }];
    
    self.mainScrolView.contentOffset = CGPointMake(scrollW, 0);
    
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
//    [label ylb_becomeCenterInSuperView:self.view];
//    label.font = [UIFont boldSystemFontOfSize:30];
//    label.text = @"开发中";
//    label.textColor = UIColor.cyanColor;
//    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITabBarControllerDelegate
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    NSLog(@"%@", viewController.tabBarItem.title);
    
    UINavigationController *nav = (UINavigationController *)viewController;
    
    if ([nav.topViewController isKindOfClass:[YLBAwemePlayController class]]) {
        [self.mainVC.tabBar setBackgroundImage:[UIImage gk_imageWithColor:[UIColor clearColor] size:CGSizeMake(YLB_SCREEN_WIDTH, YLBTabBarHeight)]];
        
        self.gk_statusBarHidden = YES;
    }else {
        [self.mainVC.tabBar setBackgroundImage:[UIImage gk_imageWithColor:[UIColor blackColor] size:CGSizeMake(YLB_SCREEN_WIDTH, YLBTabBarHeight)]];
        
        self.gk_statusBarHidden = NO;
    }
}

#pragma mark - 懒加载
- (YLBAwemeScrollView *)mainScrolView {
    if (!_mainScrolView) {
        _mainScrolView = [YLBAwemeScrollView new];
        _mainScrolView.pagingEnabled = YES;
        _mainScrolView.showsHorizontalScrollIndicator = NO;
        _mainScrolView.showsVerticalScrollIndicator = NO;
        _mainScrolView.bounces = NO; // 禁止边缘滑动
        _mainScrolView.delegate = self;
        [_mainScrolView stopAdjustmentWithScrollView:_mainScrolView controller:self];
    }
    return _mainScrolView;
}

- (YLBAwemeSearchController *)searchVC {
    if (!_searchVC) {
        _searchVC = [YLBAwemeSearchController new];
    }
    return _searchVC;
}

- (YLBAwemeMainTabBarController *)mainVC {
    if (!_mainVC) {
        _mainVC = [YLBAwemeMainTabBarController new];
        _mainVC.delegate = self;
    }
    return _mainVC;
}

- (NSMutableArray *)childVCs {
    if (!_childVCs) {
        _childVCs = [@[self.searchVC, self.mainVC] mutableCopy];
    }
    return _childVCs;
}

@end
