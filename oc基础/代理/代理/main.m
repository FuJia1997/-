//
//  main.m
//  代理
//
//  Created by yons on 2020/2/14.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Boy.h"
#import "Girl.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    Boy *b = [Boy new];
    b.name = @"jack";
    b.age = 22;
    b.money = 1;
    
    Girl *g = [Girl new];
    g.name = @"rose";
    
    b.girlFriend = g;
    
    [b talkLove];
    
    return 0;
}
