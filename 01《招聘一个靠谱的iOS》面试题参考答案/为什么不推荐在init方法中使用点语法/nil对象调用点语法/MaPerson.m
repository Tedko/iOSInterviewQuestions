//
//  MaPerson.m
//  nil对象调用点语法
//
//  Created by https://github.com/ChenYilong on 15/8/30.
//  Copyright (c) 2015年 http://weibo.com/luohanchenyilong/ 微博@iOS程序犭袁. All rights reserved.
//

#import "MaPerson.h"

@implementation MaPerson
@synthesize lastName = _lastName;

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"🔴类名与方法名：%s（在第%d行），描述：%@", __PRETTY_FUNCTION__, __LINE__, NSStringFromClass([self class]));
        NSLog(@"🔴类名与方法名：%s（在第%d行），描述：%@", __PRETTY_FUNCTION__, __LINE__, NSStringFromClass([super class]));
    }
    return self;
}

- (void)setLastName:(NSString*)lastName
{
//    if (![lastName isEqualToString:@"马"])
//    {
//        [NSException raise:NSInvalidArgumentException format:@"姓不是马"];
//    }
//    _lastName = lastName;
    _lastName = @"马";
}

@end
