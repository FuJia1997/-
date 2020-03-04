//
//  Microblog.m
//  MRC练习
//
//  Created by yons on 2020/2/13.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Microblog.h"

@implementation Microblog

- (void)dealloc
{
    NSLog(@"微博死了");
    [_content release];
    [_imageURL release];
    [_user release];
    [_transpondBlog release];
    [super dealloc];
}

@end
