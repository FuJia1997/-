//
//  Person.m
//  单例
//
//  Created by yons on 2020/2/16.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    static id instance = nil;
    if (instance == nil) {
        instance = [super allocWithZone:zone];
    }
    return instance;
}

+ (instancetype)defaultPerson {
    return [self new];
}

+ (instancetype)sharedPerson {
    return [self new];
}

@end
