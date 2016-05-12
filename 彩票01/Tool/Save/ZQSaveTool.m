//
//  ZQSaveTool.m
//  彩票01
//
//  Created by lx on 16/5/12.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import "ZQSaveTool.h"

@implementation ZQSaveTool

+ (id)objectForKey:(NSString *)defaultName{
    return  [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}


+ (void)setObject:(id)value forKey:(NSString *)defaultName
{
    [[NSUserDefaults standardUserDefaults] setObject:defaultName forKey:defaultName];
}

@end
