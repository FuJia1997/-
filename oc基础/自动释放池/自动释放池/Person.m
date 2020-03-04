//
//  Person.m
//  自动释放池
//
//  Created by yons on 2020/2/13.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc
{
    NSLog(@"人死了");
    [super dealloc];
}

@end
