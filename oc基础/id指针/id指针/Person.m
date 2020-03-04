//
//  Person.m
//  id指针
//
//  Created by yons on 2020/2/11.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (id)person {
    return [self new];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"我是Person"];
}

@end
