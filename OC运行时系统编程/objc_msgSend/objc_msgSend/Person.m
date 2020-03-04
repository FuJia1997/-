//
//  Person.m
//  objc_msgSend
//
//  Created by yons on 2020/3/4.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)sayHi {
    NSLog(@"hi");
    
    NSLog(@"%@", self);
    //NSLog(@"%@", _cmd);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"我是Person对象"];
}

@end
