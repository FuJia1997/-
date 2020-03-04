//
//  Person.h
//  单例
//
//  Created by yons on 2020/2/16.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

+ (instancetype)sharedPerson;
+ (instancetype)defaultPerson;

@end
