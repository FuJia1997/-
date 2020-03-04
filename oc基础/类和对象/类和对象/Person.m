//
//  Person.m
//  类和对象
//
//  Created by yons on 2020/2/6.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)run {
    NSLog(@"跑");
}

- (void)eatWithFood:(NSString *)food {
    NSLog(@"吃%@", food);
}

- (int)sumWithNum1:(int)num1 andNum2:(int)num2 {
    return num1 + num2;
}

@end
