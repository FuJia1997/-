//
//  main.m
//  objc_msgSend
//
//  Created by yons on 2020/3/4.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [Person new];
        
        [p sayHi];
    }
    return 0;
}
