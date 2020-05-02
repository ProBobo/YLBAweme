//
//  YLBAwemeHomeController.m
//  YLBAweme_Example
//
//  Created by yulibo on 2020/5/2.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBAwemeHomeController.h"
#import <YLBCommon/YLBCommon.h>

@interface YLBAwemeHomeController ()

@end

@implementation YLBAwemeHomeController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = UIColor.blackColor;
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    [label ylb_becomeCenterInSuperView:self.view];
    label.font = [UIFont boldSystemFontOfSize:30];
    label.text = @"开发中";
    label.textColor = UIColor.cyanColor;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
