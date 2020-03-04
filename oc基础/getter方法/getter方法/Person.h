//
//  Person.h
//  setter方法
//
//  Created by yons on 2020/2/7.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    NSString *_name;
}

- (void)setAge:(int)age;
- (void)setName:(NSString *)name;
- (int)age;
- (NSString *)name;
@end
