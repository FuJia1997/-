//
//  Person.m
//  构造方法
//
//  Created by yons on 2020/2/12.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"jack";
        self.age = 22;
    }
    return self;
}

@end
