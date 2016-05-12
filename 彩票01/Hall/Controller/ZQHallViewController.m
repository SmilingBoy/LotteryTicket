//
//  ZQHallViewController.m
//  彩票01
//
//  Created by lx on 16/5/10.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQHallViewController.h"
#import "ZQActivityMenu.h"
#import "ZQCoverView.h"
#import "ZQDowmMenu.h"

@interface ZQHallViewController ()

@property (nonatomic, strong)ZQDowmMenu *downMenu;

@property (assign) BOOL isPopMenu;

@end

@implementation ZQHallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _downMenu = [[ZQDowmMenu alloc]init];
    
    [self addTabbleView];
    [self addLeftBarButton];
    [self addRightBarButton];
}

//添加tableView
- (void)addTabbleView{
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    self.view = tableView;
    
}

//添加导航栏左侧按钮
- (void)addLeftBarButton{
    
    UIImage *image = [[UIImage imageNamed:@"CS50_activity_image"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem *leftBarButton = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(leftBarButtonClick:)];
    
    self.navigationItem.leftBarButtonItem = leftBarButton;

}

//添加导航栏右侧按钮
- (void)addRightBarButton{
    

    UIImage *image = [[UIImage imageNamed:@"Development"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonClick:)];
    
    self.navigationItem.rightBarButtonItem = rightBarButton;
    
}

//导航栏左侧按钮点击事件
- (void)leftBarButtonClick:(UIBarButtonItem *)leftBarButton{
    
    //添加蒙版
    [ZQCoverView showCover];
    
    //弹出menu
    [ZQActivityMenu menuShowInPoint:self.view.center];
    
}

//导航栏右侧按钮点击事件
- (void)rightBarButtonClick:(UIBarButtonItem *)rightBarButton{
    
    if (!_isPopMenu) {
        [_downMenu showWithImage:[UIImage imageNamed:@"GroupCell"] withButton:nil withTarget:self];
    }else{
        
        [_downMenu hide];
    }

    _isPopMenu = !_isPopMenu;
    
}










@end
