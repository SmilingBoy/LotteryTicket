//
//  ZQDiscoverTitleButton.m
//  彩票01
//
//  Created by lx on 16/5/12.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQDiscoverTitleButton.h"

@implementation ZQDiscoverTitleButton

- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    if (self.imageView.left < self.titleLabel.left) {
        self.titleLabel.left = self.imageView.left;
        self.imageView.left = self.titleLabel.right;
    }
    
}

@end
