//
//  Listen.m
//  通知
//
//  Created by yons on 2020/3/6.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Listen.h"

@implementation Listen

- (void)m1:(NSNotification *)noteInfo {
    NSLog(@"hello!");
    NSLog(@"%@", noteInfo);
}

- (void)dealloc
{
    //移除通知
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
