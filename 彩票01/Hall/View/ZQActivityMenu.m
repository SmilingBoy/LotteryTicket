//
//  ZQActivityMenu.m
//  彩票01
//
//  Created by lx on 16/5/11.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQActivityMenu.h"
#import "ZQCoverView.h"
#import "UIViewExt.h"

@implementation ZQActivityMenu

+(instancetype)menuShowInPoint:(CGPoint)point{
    
    ZQActivityMenu *menu = [[ZQActivityMenu alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    menu.center = point;
   
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"xiaopingguo"]];
    imageView.frame = CGRectMake(0, 0, menu.width, menu.height);
    [menu addSubview:imageView];
    
    [[UIApplication sharedApplication].keyWindow addSubview:menu];
    
    return menu;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [self removeFromSuperview];
    [ZQCoverView hide];
    
}

@end
