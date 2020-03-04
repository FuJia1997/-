//
//  Person.h
//  自动释放池
//
//  Created by yons on 2020/2/13.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, retain)NSString *name;
@property (nonatomic, assign)int age;

@end
