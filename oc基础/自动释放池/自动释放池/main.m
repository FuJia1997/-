//
//  main.m
//  自动释放池
//
//  Created by yons on 2020/2/13.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"
#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p autorelease];
        @autoreleasepool {
            Person *p2 = [[Person new] autorelease];
        }
    }
    return 0;
}
