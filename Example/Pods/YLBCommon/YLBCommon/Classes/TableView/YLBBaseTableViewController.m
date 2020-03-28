//
//  YLBBaseTableViewController.m
//  YLBCommon_Example
//
//  Created by yulibo on 2020/3/23.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBBaseTableViewController.h"
#import "YLBCommon.h"

@interface YLBBaseTableViewController ()
@property(nonatomic, assign) UITableViewStyle tableViewStyle;
@end

@implementation YLBBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //默认为 UITableViewStylePlain
    if ([self respondsToSelector:@selector(getUITableViewStyle)]) {
        self.tableViewStyle = [self getUITableViewStyle];
    }
    else {
        self.tableViewStyle = UITableViewStylePlain;
    }
    
    [self setupBaseSubviews];
}
//- (UITableViewStyle)setUITableViewStyle:(UITableViewStyle)style {
//    return style;
//}

- (void)setupBaseSubviews {
    [self.view addSubview:self.tableView];
    [self.tableView stopAdjustmentWithScrollView:self.tableView controller:self];
}
- (UITableView *)tableView {
    if (!_tableView) {
        //1.创建tableView
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:self.tableViewStyle];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableView;
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}
@end
