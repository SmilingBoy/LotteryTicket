//
//  ZQLuckViewController.m
//  彩票01
//
//  Created by lx on 16/5/12.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQLuckViewController.h"

@interface ZQLuckViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *lightImageView;

@end

@implementation ZQLuckViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *light0 = [UIImage imageNamed:@"lucky_entry_light0"];
    UIImage *light1 = [UIImage imageNamed:@"lucky_entry_light1"];
    
    _lightImageView.animationImages = @[light0,light1];
    _lightImageView.animationDuration = 1;
    [_lightImageView startAnimating];
    
}


@end
