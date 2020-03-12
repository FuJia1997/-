//
//  main.m
//  通知
//
//  Created by yons on 2020/3/6.
//  Copyright © 2020年 FuJia. All rights reserved.
//


#import "Sender.h"
#import "Listen.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建通知中心对象
        NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
        Listen *listen = [Listen new];
        Sender *sender = [Sender new];
        //监听通知
        [center addObserver:listen selector:@selector(m1:) name:@"通知" object:sender];
        //发布通知
        [center postNotificationName:@"通知" object:sender userInfo:@{
                                                                    @"key" : @"value"
                                    }];
    }
    return 0;
}
