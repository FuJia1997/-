//
//  Person.m
//  依赖关系
//
//  Created by yons on 2020/2/8.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)callWithPhone:(Phone *)phone {
    [phone callWithNumber:@"110"];
}

@end
