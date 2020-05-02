//
//  YLBAwemePlayController.m
//  YLBAweme_Example
//
//  Created by yulibo on 2020/5/2.
//  Copyright © 2020 余礼钵. All rights reserved.
//

#import "YLBAwemePlayController.h"
#import <Masonry/Masonry.h>
#import <YLBCommon/YLBCommon.h>

#define kTitleViewY         (GK_SAFEAREA_TOP + 20.0f)
// 过渡中心点
#define kTransitionCenter   20.0f

// 适配比例
#define ADAPTATIONRATIO     YLB_SCREEN_WIDTH / 750.0f

@interface YLBAwemePlayController ()

@property (nonatomic, strong) UIView                *titleView;

@property (nonatomic, strong) UIButton              *shootBtn;  // 随拍
@property (nonatomic, strong) UIButton              *recBtn;
@property (nonatomic, strong) UIButton              *cityBtn;
@property (nonatomic, strong) UIButton              *searchBtn;
@end

@implementation YLBAwemePlayController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.titleView];
    
    [self.titleView addSubview:self.shootBtn];
    [self.titleView addSubview:self.recBtn];
    [self.titleView addSubview:self.cityBtn];
    [self.titleView addSubview:self.searchBtn];
    
    [self.titleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(self.view).offset(GK_SAFEAREA_TOP + 20.0f);
        make.height.mas_equalTo(44.0f);
    }];
    
    [self.shootBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.titleView);
        make.left.equalTo(self.view).offset(15.0f);
        make.width.mas_offset(ADAPTATIONRATIO * 150.0f);
        make.height.mas_equalTo(44.0f);
    }];
    
    [self.searchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).offset(-15.0f);
        make.centerY.equalTo(self.titleView);
    }];
    
    [self.recBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.titleView);
        make.centerX.equalTo(self.titleView).offset(-24);
    }];
    
    [self.cityBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.titleView);
        make.centerX.equalTo(self.titleView).offset(24);
    }];
}
#pragma mark - 懒加载
- (UIView *)titleView {
    if (!_titleView) {
        _titleView = [UIView new];
    }
    return _titleView;
}

- (UIButton *)shootBtn {
    if (!_shootBtn) {
        _shootBtn = [UIButton new];
        [_shootBtn setImage:[UIImage imageNamed:@"iconTitlebarSuipai"] forState:UIControlStateNormal];
        [_shootBtn setTitle:@"随拍" forState:UIControlStateNormal];
        [_shootBtn setTitleColor:UIColor.lightGrayColor forState:UIControlStateNormal];
        _shootBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 8, 0, 0);
        [_shootBtn addTarget:self action:@selector(shootClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _shootBtn;
}

- (UIButton *)recBtn {
    if (!_recBtn) {
        _recBtn = [UIButton new];
        [_recBtn setTitle:@"推荐" forState:UIControlStateNormal];
        [_recBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _recBtn.titleLabel.font = [UIFont boldSystemFontOfSize:18.0f];
        [_recBtn addTarget:self action:@selector(itemClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _recBtn;
}

- (UIButton *)cityBtn {
    if (!_cityBtn) {
        _cityBtn = [UIButton new];
        [_cityBtn setTitle:@"同城" forState:UIControlStateNormal];
        [_cityBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        _cityBtn.titleLabel.font = [UIFont systemFontOfSize:16.0f];
        [_cityBtn addTarget:self action:@selector(itemClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cityBtn;
}

- (UIButton *)searchBtn {
    if (!_searchBtn) {
        _searchBtn = [UIButton new];
        [_searchBtn setImage:[UIImage gk_changeImage:[UIImage imageNamed:@"icHomeSearchPure"] color:[UIColor whiteColor]] forState:UIControlStateNormal];
        [_searchBtn addTarget:self action:@selector(searchClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _searchBtn;
}

#pragma mark - click

- (void)searchClick:(id)sender {
    
}

- (void)shootClick:(id)sender {
//    if ([self.delegate respondsToSelector:@selector(playerVCDidClickShoot:)]) {
//        [self.delegate playerVCDidClickShoot:self];
//    }
}

- (void)backClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)itemClick:(id)sender {
    if (sender == self.recBtn) {
        self.recBtn.titleLabel.font = [UIFont boldSystemFontOfSize:18.0f];
        self.cityBtn.titleLabel.font = [UIFont systemFontOfSize:16.0f];
        
        [self.recBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.cityBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    }else {
        self.recBtn.titleLabel.font = [UIFont systemFontOfSize:16.0f];
        self.cityBtn.titleLabel.font = [UIFont boldSystemFontOfSize:18.0f];
        
        [self.recBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [self.cityBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
}

@end
