//
//  ZQCollectionViewCell.m
//  彩票01
//
//  Created by lx on 16/5/12.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQCollectionViewCell.h"
#import "ZQTabBarController.h"

@interface ZQCollectionViewCell ()

@property (nonatomic, weak)UIImageView *imageView;
@property (nonatomic, strong)UIButton *startButton;


@end

@implementation ZQCollectionViewCell

- (UIImageView *)imageView{
    
    if (!_imageView) {
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        _imageView = imageView;
        [self.contentView addSubview:imageView];
    }
    
    return _imageView;
}

- (void)setImage:(UIImage *)image{
    
    _image = image;
    self.imageView.image = image;
}

- (UIButton *)startButton{
    
    if (!_startButton) {
        
        _startButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:_startButton];
        [_startButton setBackgroundImage:[UIImage imageNamed:@"guideStart"] forState:UIControlStateNormal];
        [_startButton sizeToFit];
        _startButton.center = CGPointMake(self.width * 0.5, self.height * 0.9);
        [_startButton addTarget:self action:@selector(start:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _startButton;
}

- (void)setUpIndexpage:(NSIndexPath *)indexPath withCount:(NSInteger)count{
    
    if (indexPath.item == count - 1) {
        
        self.startButton.hidden = NO;
        
    }else{
        self.startButton.hidden = YES;
    }
}

- (void)start:(UIButton *)sender{
    
    kKeyWindow.rootViewController = [[ZQTabBarController alloc]init];
    
    CATransition *animation = [CATransition animation];
    animation.duration = 0.5;
    animation.type = @"rippleEffect ";
    [kKeyWindow.layer addAnimation:animation forKey:nil];
}

@end
