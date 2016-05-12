//
//  ZQNewFeatureViewController.m
//  彩票01
//
//  Created by lx on 16/5/12.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQNewFeatureViewController.h"
#import "ZQCollectionViewCell.h"

@interface ZQNewFeatureViewController ()

@property (assign)CGFloat lastOffsetX;
@property (nonatomic, weak)UIImageView *guide1;
@property (nonatomic, weak)UIImageView *largerText;
@property (nonatomic, weak)UIImageView *smallText;



@end

@implementation ZQNewFeatureViewController

- (instancetype)init
{
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.minimumLineSpacing = 0;
    layout.minimumInteritemSpacing = 0;
    layout.itemSize = kScreenBounds.size;
    
    return  [super initWithCollectionViewLayout:layout];

}

- (void)viewDidLoad{
    
    self.collectionView.backgroundColor = [UIColor greenColor];
    self.collectionView.pagingEnabled = YES;
    self.collectionView.bounces = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    
    [self.collectionView registerClass:[ZQCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
    [self setUpAllChildView];
    
}

/**
 *  设置所有的cell属性
 */
- (void)setUpAllChildView{
    
    // guide1
    UIImageView *guide1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guide1"]];
    guide1.centerX = self.collectionView.centerX;
    guide1.top = self.collectionView.height * 0.05;
    _guide1 = guide1;
    [self.collectionView addSubview:guide1];

    // largerText
    UIImageView *largerText = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guideLargeText1"]];
    largerText.centerX = self.collectionView.centerX;
    largerText.top = self.collectionView.height * 0.6;
    _largerText = largerText;
    [self.collectionView addSubview:largerText];

    // smallText
    UIImageView *smallText = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guideSmallText1"]];
    smallText.centerX = self.collectionView.centerX;
    smallText.top = self.collectionView.height * 0.7;
    _smallText = smallText;
    [self.collectionView addSubview:smallText];
    
    // guideLine
    UIImageView *guideLine = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guideLine"]];
    
    guideLine.left -= 100;
    [self.collectionView addSubview:guideLine];

}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 4;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    ZQCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    NSString *imageName = [NSString stringWithFormat:@"guide%ldBackground",indexPath.item + 1];
    
    cell.image = [UIImage imageNamed:imageName];
    
    return cell;
    
}

/**
 *  滑动结束时调用
 */
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    CGFloat currentOffsetX = self.collectionView.contentOffset.x;
    CGFloat delta = currentOffsetX - _lastOffsetX;
    _guide1.left +=  2 * delta;
    _largerText.left += 2 * delta;
    _smallText.left +=  2 * delta;

    [UIView animateWithDuration:0.1 animations:^{
        _guide1.left -=  delta;
        _largerText.left -= delta;
        _smallText.left -=  delta;
 
    }];
    
    int page = currentOffsetX / self.view.width + 1;
    _guide1.image = [UIImage imageNamed:[NSString stringWithFormat:@"guide%d",page]];
    _largerText.image = [UIImage imageNamed:[NSString stringWithFormat:@"guideLargeText%d",page]];
    _smallText.image = [UIImage imageNamed:[NSString stringWithFormat:@"guideSmallText%d",page]];
    _lastOffsetX = currentOffsetX;
}


@end
