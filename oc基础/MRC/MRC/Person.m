//
//  Person.m
//  MRC
//
//  Created by yons on 2020/2/12.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)sayHi {
    NSLog(@"hello");
}

- (void)dealloc
{
    NSLog(@"%@被销毁", self.name);
    
    [super dealloc];
}

@end
