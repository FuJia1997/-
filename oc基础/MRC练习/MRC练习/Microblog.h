//
//  Microblog.h
//  MRC练习
//
//  Created by yons on 2020/2/13.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "User.h"
#import <Foundation/Foundation.h>

@interface Microblog : NSObject

/**
 * 微博文字内容
 */
@property(nonatomic, retain)NSString *content;

/**
 * 微博配图路径
 */
@property(nonatomic, retain)NSString *imageURL;

/**
 * 发布微博时间
 */
@property(nonatomic, assign)FJDate sendTime;

/**
 * 微博作者
 */
@property(nonatomic, retain)User *user;

/**
 * 转发的微博
 */
@property(nonatomic, retain)Microblog *transpondBlog;

@end
