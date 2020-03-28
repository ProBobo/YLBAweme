//
//  YLBAwemeBundleManager.m
//  YLBAwemeResource_Example
//
//  Created by yulibo on 2020/3/28.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBAwemeBundleManager.h"

@implementation YLBAwemeBundleManager

+ (void)load {
    [[YLBAwemeBundleManager sharedInstance] ylb_rigisterBundleForClass:[self class] URLForResource:@"YLBAwemeResource"];
}

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static YLBAwemeBundleManager *instance = nil;
    dispatch_once(&onceToken,^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone{
    return [self sharedInstance];
}
@end
