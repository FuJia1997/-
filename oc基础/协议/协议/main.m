//
//  main.m
//  协议
//
//  Created by yons on 2020/2/14.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        [p sayHi];
        [p sayBye];
        
        NSObject<youProtocol> *obj = [Person new];
    }
    return 0;
}
