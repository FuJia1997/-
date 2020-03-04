//
//  Person.m
//  static关键字
//
//  Created by yons on 2020/2/8.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)sayHi {
    static int  i = 13;
    NSLog(@"%d", i++);
}

@end
