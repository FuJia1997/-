//
//  main.m
//  消息转发
//
//  Created by yons on 2020/3/8.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJRuntimeTool.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FJRuntimeTool *tool = [FJRuntimeTool new];
        [tool speak];
        [tool fly];
        [tool code];
        [tool eat];
    }
    return 0;
}
