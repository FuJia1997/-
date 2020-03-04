//
//  Person.h
//  枚举示例
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum {
    Male,
    Female
}Gender;
@interface Person : NSObject
{
    NSString *_name;
    int _age;
    Gender _gender;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setGender:(Gender)gender;
- (Gender)gender;

- (void)setAge:(int)age;
- (int)age;

@end
