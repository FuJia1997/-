//
//  User.m
//  MRC练习
//
//  Created by yons on 2020/2/13.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "User.h"

@implementation User

- (void)dealloc
{
    NSLog(@"用户死了");
    [_nickName release];
    [_account release];
    [super dealloc];
}

@end
