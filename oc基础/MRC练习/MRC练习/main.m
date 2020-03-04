//
//  main.m
//  MRC练习
//
//  Created by yons on 2020/2/13.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Microblog.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建一个账户
        Account *a1 = [[Account new] autorelease];
        a1.userName = @"jack";
        a1.password = @"123";
        a1.registDate = (FJDate){2020,2,17};
        //创建一个用户
        User *u1 = [[User new] autorelease];
        u1.nickName = @"u1";
        u1.birthDay = (FJDate){2020, 2, 17};
        u1.account = a1;
        //创建一个微博
        Microblog *m1 = [[Microblog new] autorelease];
        m1.content = @"今天天气好";
        m1.imageURL = @"http://www.baidu.com";
        m1.user = u1;
        m1.transpondBlog = nil;
    }
    return 0;
}
