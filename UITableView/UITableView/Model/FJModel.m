//
//  FJModel.m
//  UITableView
//
//  Created by yons on 2020/3/5.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJModel.h"

@implementation FJModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)FJmodelWithDict:(NSDictionary *)dict {
    return [[self alloc] initWithDict:dict];
}

@end
