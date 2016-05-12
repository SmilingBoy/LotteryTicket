//
//  ZQTabBar.h
//  彩票01
//
//  Created by lx on 16/5/10.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BlockType)(NSInteger);

@interface ZQTabBar : UIView

@property (nonatomic, strong)NSMutableArray *items;

@property (nonatomic, copy)BlockType selectedIndex;

- (void)setSelectedIndex:(BlockType)selectedIndex;

@end
