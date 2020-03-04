//
//  Person.h
//  类和对象
//
//  Created by yons on 2020/2/6.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    //默认是外界不可访问
    @public
    NSString *_name;
    int _age;
}

//注意方法命名规范

- (void)run;

- (void)eatWithFood:(NSString *)food;

- (int)sumWithNum1:(int)num1 andNum2:(int)num2;

@end
