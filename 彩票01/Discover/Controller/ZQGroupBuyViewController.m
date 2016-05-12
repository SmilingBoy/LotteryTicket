//
//  ZQGroupBuyViewController.m
//  彩票01
//
//  Created by lx on 16/5/12.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQGroupBuyViewController.h"
#import "ZQDiscoverTitleButton.h"

@interface ZQGroupBuyViewController ()

@end

@implementation ZQGroupBuyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addTitleView];
    [self addRightBarButton];

}

/**
 *  添加navigation的titleView
 */
- (void)addTitleView{
    
    UIButton *button = [ZQDiscoverTitleButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"全部彩种" forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"YellowDownArrow"] forState:UIControlStateNormal];
    [button sizeToFit];
    self.navigationItem.titleView = button;
}

- (void)addRightBarButton{
    
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc]initWithTitle:@"助手" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonDidClick:)];
    
    self.navigationItem.rightBarButtonItem = rightBarButton;
    
}

- (void)rightBarButtonDidClick:(UIBarButtonItem *)rightBarButton{
    
    NSLog(@"助手");
    
}


@end
