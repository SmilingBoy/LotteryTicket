//
//  AppDelegate.m
//  彩票01
//
//  Created by lx on 16/5/10.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "AppDelegate.h"
#import "ZQTabBarController.h"
#import "ZQNewFeatureViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    /*
    //获取上一次的版本号
    NSString *oldVersion = [[NSUserDefaults standardUserDefaults] objectForKey:@"version"];
    NSLog(@"%@",oldVersion);
    
    //当前版本号
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    NSLog(@"%@",currentVersion);
    */
    
    UIViewController *rootVC = nil;
    
    rootVC = [[ZQNewFeatureViewController alloc]init];
    
    
    
//    ZQTabBarController *rootVC = [[ZQTabBarController alloc]init];
    self.window.rootViewController = rootVC;

    
    return YES;
}









@end
