//
//  YULIBOViewController.m
//  YLBAweme
//
//  Created by ProBobo on 03/28/2020.
//  Copyright (c) 2020 ProBobo. All rights reserved.
//

#import "YULIBOViewController.h"
#import <YLBCommon/YLBCommon.h>

@interface YULIBOViewController ()

@end

@implementation YULIBOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    [label ylb_becomeCenterInSuperView:self.view];
    label.font = [UIFont boldSystemFontOfSize:30];
    label.text = @"开发中";
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
