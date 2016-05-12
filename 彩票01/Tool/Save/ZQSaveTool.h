//
//  ZQSaveTool.h
//  彩票01
//
//  Created by lx on 16/5/12.
//  Copyright © 2016年 LiZhiqiang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZQSaveTool : NSObject

+ (id)objectForKey:(NSString *)defaultName;

+ (void)setObject:(id)value forKey:(NSString *)defaultName;


@end