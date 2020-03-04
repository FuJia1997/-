//
//  Account.h
//  MRC练习
//
//  Created by yons on 2020/2/13.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct
{
    int year;
    int month;
    int day;
}FJDate;

/**
 * 账户类
 */
@interface Account : NSObject

/**
 * 账户名称
 */
@property(nonatomic, retain)NSString *userName;

/**
 * 账户密码
 */
@property(nonatomic, retain)NSString *password;

/**
 * 账户注册日期
 */
@property(nonatomic, assign)FJDate registDate;

@end
