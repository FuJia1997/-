//
//  Person.m
//  枚举示例
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setName:(NSString *)name {
    _name = name;
}

- (NSString *)name {
    return _name;
}

- (void)setGender:(Gender)gender {
    _gender = gender;
}

- (Gender)gender {
    return _gender;
}

- (void)setAge:(int)age {
    _age = age;
}

- (int)age {
    return _age;
}

@end
