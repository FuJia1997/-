//
//  ResolveMethod.h
//  动态方法解析和消息转发机制
//
//  Created by yons on 2020/3/4.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "ForwardingTarget.h"
#import <Foundation/Foundation.h>

@interface ResolveMethod : NSObject

@property (nonatomic, copy) NSString *name;
- (void)setupDatasWithTitle:(NSString *)title;

@end
