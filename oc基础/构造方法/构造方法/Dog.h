//
//  Dog.h
//  构造方法
//
//  Created by yons on 2020/2/12.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject

@property NSString *name;
@property int age;

- (instancetype)initWithName:(NSString *)name Age:(int)age;

@end
