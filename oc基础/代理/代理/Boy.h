//
//  Boy.h
//  代理
//
//  Created by yons on 2020/2/14.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "GFProtocol.h"
#import <Foundation/Foundation.h>

@interface Boy : NSObject

@property(nonatomic, strong)NSString *name;
@property(nonatomic, assign)int age;
@property(nonatomic, assign)int money;
@property(nonatomic, strong)id<GFProtocol> girlFriend;

- (void)talkLove;

@end
