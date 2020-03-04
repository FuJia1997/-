//
//  Person.m
//  description方法
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setName:(NSString *)name {
    _name = name;
}

- (NSString *)name {
    return _name;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"姓名：%@", _name];
}

@end
