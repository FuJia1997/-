//
//  NSArray+Ex.m
//  解决数组输出汉字的问题
//
//  Created by yons on 2020/1/11.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "NSArray+Ex.h"

@implementation NSArray (Ex)

- (NSString *)descriptionWithLocale:(id)locale {
    NSMutableString *mStr = [NSMutableString string];
    [mStr appendString:@"(\r\n"];
    
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [mStr appendFormat:@"\t%@,\r\n",obj];
    }];
    
    [mStr appendString:@")"];
    return mStr.copy;
}

@end
