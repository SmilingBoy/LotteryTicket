//
//  ZQLuckView.m
//  彩票01
//
//  Created by lx on 16/5/12.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQLuckView.h"

@implementation ZQLuckView


- (void)drawRect:(CGRect)rect {
    
    UIImage *image = [UIImage imageNamed:@"luck_entry_background"];
    [image drawInRect:self.frame];
    
}


@end
