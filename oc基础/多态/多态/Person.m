//
//  Person.m
//  多态
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)help {
    NSLog(@"啊");
}

- (void)setName:(NSString *)name {
    _name = name;
}

- (NSString *)name {
    return _name;
}

@end
