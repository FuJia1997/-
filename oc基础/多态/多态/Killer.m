//
//  Killer.m
//  多态
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Killer.h"

@implementation Killer

- (void)killWithPerson:(Person *)person {
    NSLog(@"[%@],受死吧", [person name]);
    [person help];
}

@end
