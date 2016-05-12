//
//  ZQDowmMenu.m
//  彩票01
//
//  Created by lx on 16/5/11.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQDowmMenu.h"
#import "UIViewExt.h"
@interface ZQDowmMenu()

@property (nonatomic, strong)ZQDowmMenu *downMenu;

@end

@implementation ZQDowmMenu


- (void)showWithImage:(UIImage *)image withButton:(NSArray *)button withTarget:(UIViewController *)target{
    
    _downMenu = [[ZQDowmMenu alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 200)];
    
    _downMenu.backgroundColor = [UIColor blackColor];
    [target.view addSubview:_downMenu];
    
    //往下移动
    _downMenu.transform = CGAffineTransformMakeTranslation(0, -_downMenu.height);
    
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.3 initialSpringVelocity:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        _downMenu.transform = CGAffineTransformIdentity;
    } completion:^(BOOL finished) {
        
    }];
    
}

- (void)hide{
    
    [_downMenu removeFromSuperview];
    
}

@end
