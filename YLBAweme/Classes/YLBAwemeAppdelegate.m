//
//  YLBAwemeAppdelegate.m
//  YLBAweme_Example
//
//  Created by yulibo on 2020/3/28.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBAwemeAppdelegate.h"
#import "YLBAwemeHomeController.h"
#import "GKDYNavigationController.h"

@implementation YLBAwemeAppdelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    [GKConfigure setupCustomConfigure:^(GKNavigationBarConfigure *configure) {
        configure.backStyle             = GKNavigationBarBackStyleWhite;
        configure.titleFont             = [UIFont systemFontOfSize:18.0f];
        configure.titleColor            = [UIColor whiteColor];
        configure.gk_navItemLeftSpace   = 12.0f;
        configure.gk_navItemRightSpace  = 12.0f;
        configure.statusBarStyle        = UIStatusBarStyleLightContent;
        configure.gk_translationX       = 10.0f;
        configure.gk_translationY       = 15.0f;
        configure.gk_scaleX             = 0.90f;
        configure.gk_scaleY             = 0.95f;
    }];
    
    // Override point for customization after application launch.
    YLBAwemeHomeController *vc = [[YLBAwemeHomeController alloc] init];
    GKDYNavigationController *nav = [GKDYNavigationController rootVC:vc translationScale:YES];
        
    //    GKDYNavigationController *nav = [GKDYNavigationController rootVC:[GKDYHomeViewController new] translationScale:NO];
        nav.gk_openScrollLeftPush = YES; // 开启左滑push功能
        nav.navigationBar.hidden = YES;
    
    self.window.rootViewController = nav;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
