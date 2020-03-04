//
//  ForwardingTarget.m
//  动态方法解析和消息转发机制
//
//  Created by yons on 2020/3/4.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "ForwardingTarget.h"

@implementation ForwardingTarget

- (void)setupDatasWithTitle:(NSString *)title {
    NSLog(@"重定向成功 %@", title);
}

@end
