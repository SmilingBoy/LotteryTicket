//
//  ZQArenaViewController.m
//  彩票01
//
//  Created by lx on 16/5/10.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQArenaViewController.h"

@interface ZQArenaViewController ()

@end

@implementation ZQArenaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:[UIApplication sharedApplication].keyWindow.bounds];
    imageView.image = [UIImage imageNamed:@"NLArenaBackground"];
    imageView.userInteractionEnabled = YES;
    self.view  = imageView;
    
    UISegmentedControl *segmentedController = [[UISegmentedControl alloc]initWithItems:@[@"足球",@"篮球"]];
    segmentedController.selectedSegmentIndex = 0;
    segmentedController.width += 60;
    segmentedController.tintColor = [UIColor colorWithRed:0 green:142/255.0 blue:143/255.0 alpha:1];
    [segmentedController setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont boldSystemFontOfSize:17]} forState:UIControlStateNormal];
    [segmentedController setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor], NSFontAttributeName:[UIFont boldSystemFontOfSize:17]} forState:UIControlStateSelected];
    
    self.navigationItem.titleView = segmentedController;
}

@end
