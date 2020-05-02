//
//  YLBAwemeSearchController.m
//  YLBAweme_Example
//
//  Created by yulibo on 2020/5/2.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBAwemeSearchController.h"

@interface YLBAwemeSearchController ()

@end

@implementation YLBAwemeSearchController

- (void)loadView {
    self.view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"WechatIMG240"]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.gk_navigationBar.hidden = YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
