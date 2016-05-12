//
//  ZQTabBar.m
//  彩票01
//
//  Created by lx on 16/5/10.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQTabBar.h"

#define kTabBarHeight self.frame.size.height
#define kButtonWidth self.frame.size.width/self.items.count

@interface ZQTabBar ()

@property (nonatomic, strong)UIButton *selectedButton;

@end

@implementation ZQTabBar

- (void)setItems:(NSMutableArray *)items{
    
    _items = items;
    
    for (int i = 0; i < items.count; i++) {
        
        UITabBarItem *item = items[i];
        
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(i * kButtonWidth, 0, kButtonWidth, kTabBarHeight)];
        button.tag = i + 100;
        [button setBackgroundImage:item.image forState:UIControlStateNormal];
        [button setBackgroundImage:item.selectedImage forState:UIControlStateSelected];
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
        if (i == 0) {
            _selectedButton = button;
            _selectedButton.selected = YES;
        }
    }
}

- (void)buttonClick:(UIButton *)sender{
    
    _selectedButton.selected = NO;
    sender.selected = YES;
    _selectedButton = sender;
    
    _selectedIndex(sender.tag - 100);
    
}

@end
