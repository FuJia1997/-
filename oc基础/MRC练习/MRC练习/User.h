//
//  User.h
//  MRC练习
//
//  Created by yons on 2020/2/13.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Account.h"
#import <Foundation/Foundation.h>

@interface User : NSObject

/**
 * 用户昵称
 */
@property(nonatomic, retain)NSString *nickName;

/**
 * 出生日期
 */
@property(nonatomic, assign)FJDate birthDay;

/**
 * 用户的账户信息
 */
@property(nonatomic, retain)Account *account;

@end
