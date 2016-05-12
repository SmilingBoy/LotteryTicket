//
//  ZQTabBarController.m
//  彩票01
//
//  Created by lx on 16/5/10.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQTabBarController.h"
#import "ZQHallViewController.h"
#import "ZQArenaViewController.h"
#import "ZQHistoryViewController.h"
#import "ZQDiscoverViewController.h"
#import "ZQMyLotteryViewController.h"
#import "ZQTabBar.h"
#import "ZQNavigationController.h"

@interface ZQTabBarController ()

@property (nonatomic, strong)NSMutableArray *items;

@end

@implementation ZQTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addViewControllers];
    
    [self setUpTabBar];
    
}

- (NSMutableArray *)items{
    
    if (!_items) {
        _items = [NSMutableArray array];
    }
    return _items;
}

//自定义TabBar
- (void)setUpTabBar{

    ZQTabBar *tabber = [[ZQTabBar alloc]initWithFrame:self.tabBar.bounds];
    [self.tabBar addSubview:tabber];
    
    tabber.items = self.items;
    [tabber setSelectedIndex:^(NSInteger index) {
        self.selectedIndex = index;
    }];
        
}

- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    //移除所有tabbar子控件
    for (UIView *view in self.tabBar.subviews) {
        if (![view isKindOfClass:[ZQTabBar class]]) {
            [view removeFromSuperview];
        }
    }
}

- (void)addViewControllers{
    
    //购票大厅
    ZQHallViewController *hall = [[ZQHallViewController alloc]init];
    [self addOneViewController:hall
                     withImage:[UIImage imageNamed:@"TabBar_LotteryHall_new"]
             withSelectedImage:[UIImage imageNamed:@"TabBar_LotteryHall_selected_new"
                                ]                    WithTitle:@"购彩大厅"];
    
    hall.view.backgroundColor = [UIColor whiteColor];
    
    //竞技场
    ZQArenaViewController *arena = [[ZQArenaViewController alloc]init];
    [self addOneViewController:arena
                     withImage:[UIImage imageNamed:@"TabBar_Arena_new"]
             withSelectedImage:[UIImage imageNamed:@"TabBar_Arena_selected_new"]
                     WithTitle:@"竞技场"];
    arena.view.backgroundColor = [UIColor whiteColor];
    
    
    //发现
    UIStoryboard *discoverStory = [UIStoryboard storyboardWithName:@"ZQDiscover" bundle:nil];
    ZQDiscoverViewController *discover = [discoverStory instantiateInitialViewController];
    [self addOneViewController:discover
                     withImage:[UIImage imageNamed:@"TabBar_Discovery_new"]
             withSelectedImage:[UIImage imageNamed:@"TabBar_Discovery_selected_new"]
                     WithTitle:@"发现"];
    discover.view.backgroundColor = [UIColor whiteColor];
    
    //开奖信息
    ZQHistoryViewController *history = [[ZQHistoryViewController alloc]init];
    [self addOneViewController:history
                     withImage:[UIImage imageNamed:@"TabBar_History_new"]
             withSelectedImage:[UIImage imageNamed:@"TabBar_History_selected_new"]
                     WithTitle:@"开奖信息"];
    history.view.backgroundColor = [UIColor whiteColor];
    
    //我的彩票
    ZQMyLotteryViewController *myLottery = [[ZQMyLotteryViewController alloc]init];
    [self addOneViewController:myLottery withImage:[UIImage imageNamed:@"TabBar_MyLottery_new"] withSelectedImage:[UIImage imageNamed:@"TabBar_MyLottery_selected_new"] WithTitle:@"我的彩票"];
    myLottery.view.backgroundColor = [UIColor whiteColor];
    
}

- (void)addOneViewController:(UIViewController *)viewController withImage:(UIImage *)image withSelectedImage:(UIImage *)selImage WithTitle:(NSString *)title{
    
    viewController.tabBarItem.image = image;
    viewController.tabBarItem.selectedImage = selImage;
    viewController.navigationItem.title = title;
    
    [self.items addObject:viewController.tabBarItem];
    
    ZQNavigationController *navigation = [[ZQNavigationController alloc]initWithRootViewController:viewController];
  
    if ([viewController isKindOfClass:[ZQArenaViewController class]]) {
        
        UIImage *image = [UIImage imageNamed:@"NLArenaNavBar64"];
        image = [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
        [navigation.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    }
    
    [self addChildViewController:navigation];
    
}


@end
