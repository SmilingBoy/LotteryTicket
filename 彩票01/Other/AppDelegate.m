//
//  AppDelegate.m
//  彩票01
//
//  Created by lx on 16/5/10.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "AppDelegate.h"
#import "ZQTabBarController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    ZQTabBarController *tabBar = [[ZQTabBarController alloc]init];
    self.window.rootViewController = tabBar;
    
    return YES;
}









@end
