//
//  Model.m
//  json数据转模型
//
//  Created by yons on 2020/1/11.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Model.h"

@implementation Model

+ (instancetype)modelWithDic:(NSDictionary *)dic {
    Model *model = [self new];
    [model setValuesForKeysWithDictionary:dic];
    
    return model;
}

@end
