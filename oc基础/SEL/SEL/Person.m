//
//  Person.m
//  SEL
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)sayHi {
    NSLog(@"你好");
}

- (void)eatWithFood:(NSString *)foodName {
    NSLog(@"%@真好吃", foodName);
}

@end
