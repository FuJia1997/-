//
//  Girl.h
//  代理
//
//  Created by yons on 2020/2/14.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "GFProtocol.h"
#import <Foundation/Foundation.h>

@interface Girl : NSObject<GFProtocol>

@property(nonatomic, strong)NSString *name;

@end
