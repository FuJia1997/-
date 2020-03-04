//
//  Dog.m
//  构造方法
//
//  Created by yons on 2020/2/12.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (instancetype)initWithName:(NSString *)name Age:(int)age {
    if (self = [super init]) {
        self.name = name;
        self.age = age;
    }
    return self;
}

@end
