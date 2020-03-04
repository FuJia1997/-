//
//  main.m
//  动态方法解析和消息转发机制
//
//  Created by yons on 2020/3/4.
//  Copyright © 2020年 FuJia. All rights reserved.
//


#import "ResolveMethod.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ResolveMethod *r = [ResolveMethod new];
        r.name = @"付佳";
        NSLog(@"%@", r.name);
        
        [r setupDatasWithTitle:@"哈喽"];
    }
    return 0;
}
