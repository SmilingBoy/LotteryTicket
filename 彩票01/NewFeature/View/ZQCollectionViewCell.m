//
//  ZQCollectionViewCell.m
//  彩票01
//
//  Created by lx on 16/5/12.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQCollectionViewCell.h"

@interface ZQCollectionViewCell ()

@property (nonatomic, weak)UIImageView *imageView;

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

@end
