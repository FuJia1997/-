//
//  ResolveMethod.m
//  动态方法解析和消息转发机制
//
//  Created by yons on 2020/3/4.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <objc/runtime.h>
#import "ResolveMethod.h"

@implementation ResolveMethod

@dynamic name;

/**
 *  i(类型为int)
 *  v(类型为void)
 *  @(类型为id)
 *  :(类型为SEL)
 */

//动态方法解析
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSString *selectorStr = NSStringFromSelector(sel);
    
    if ([selectorStr isEqualToString:@"setName:"]) {
        class_addMethod(self, sel, (IMP)autoDictionarySetter, "v@:@");
    }else if ([selectorStr isEqualToString:@"name"]) {
        class_addMethod(self, sel, (IMP)autoDictionaryGetter, "@@:");
    }
    
    return [super resolveInstanceMethod:sel];
}
//重定向
- (id)forwardingTargetForSelector:(SEL)aSelector {
    NSString *selectorStr = NSStringFromSelector(aSelector);
    
    if ([selectorStr isEqualToString:@"setupDatasWithTitle:"]) {
        return [ForwardingTarget new];
    }
    return [super forwardingTargetForSelector:aSelector];
}

void autoDictionarySetter(id self, SEL _cmd, id value) {
    NSLog(@"name的setter方法 = %@", value);
}

id autoDictionaryGetter(id self, SEL _cmd) {
    return @"name的getter方法";
}



@end
