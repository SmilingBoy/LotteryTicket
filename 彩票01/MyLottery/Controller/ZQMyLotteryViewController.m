//
//  ZQMyLotteryViewController.m
//  彩票01
//
//  Created by lx on 16/5/10.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQMyLotteryViewController.h"

@interface ZQMyLotteryViewController ()

@end

@implementation ZQMyLotteryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addLeftBarButton];
    [self addRightBarButton];
    
}

//添加导航栏左侧按钮
- (void)addLeftBarButton{
    
    UIImage *image = [[UIImage imageNamed:@"FBMM_Barbutton"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    [button setTitle:@"客服" forState:UIControlStateNormal];
    [button sizeToFit];
    [button addTarget:self action:@selector(leftBarButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.leftBarButtonItem = leftBarButton;
    
}

//添加导航栏右侧按钮
- (void)addRightBarButton{
    
    
    UIImage *image = [[UIImage imageNamed:@"Mylottery_config"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonClick:)];
    
    self.navigationItem.rightBarButtonItem = rightBarButton;
    
}

//导航栏左侧按钮点击事件
- (void)leftBarButtonClick:(UIBarButtonItem *)leftBarButton{
    

}

//导航栏右侧按钮点击事件
- (void)rightBarButtonClick:(UIBarButtonItem *)rightBarButton{
    
}





@end
