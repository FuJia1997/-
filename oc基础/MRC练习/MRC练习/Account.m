//
//  Account.m
//  MRC练习
//
//  Created by yons on 2020/2/13.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Account.h"

@implementation Account

- (void)dealloc
{
    NSLog(@"账户销毁");
    [_userName release];
    [_password release];
    [super release];
}

@end
