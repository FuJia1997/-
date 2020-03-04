//
//  Person.m
//  setter方法
//
//  Created by yons on 2020/2/7.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setAge:(int)age {
    if (age < 0 || age > 200) {
        _age = 19;
    } else {
        _age = age;
    }
}

- (void)setName:(NSString *)name {
    if ([name length] < 2) {
        _name = @"无名";
    } else {
        _name = name;
    }
}

- (int)age {
    return _age;
}

- (NSString *)name {
    return _name;
}

@end
