//
//  ZQNavigationController.m
//  彩票01
//
//  Created by lx on 16/5/11.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQNavigationController.h"

@interface ZQNavigationController ()

@end

@implementation ZQNavigationController


+ (void)initialize{
    
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[self]];
    [bar setBackgroundImage:[UIImage imageNamed:@"NavBar64"] forBarMetrics:UIBarMetricsDefault];
    [bar setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:20],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
