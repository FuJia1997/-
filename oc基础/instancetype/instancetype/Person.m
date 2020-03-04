//
//  Person.m
//  instancetype
//
//  Created by yons on 2020/2/11.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)person {
    return [self new];
}
- (NSString *)description
{
    return [NSString stringWithFormat:@"我是Person"];
}

@end
