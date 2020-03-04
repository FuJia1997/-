//
//  GFProtocol.h
//  代理
//
//  Created by yons on 2020/2/14.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol GFProtocol <NSObject>

@required
- (void)wash;
- (void)cook;
@optional
- (void)job;

@end
