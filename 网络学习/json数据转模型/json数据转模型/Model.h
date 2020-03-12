//
//  Model.h
//  json数据转模型
//
//  Created by yons on 2020/1/11.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;

+ (instancetype)modelWithDic:(NSDictionary *)dic;

@end
