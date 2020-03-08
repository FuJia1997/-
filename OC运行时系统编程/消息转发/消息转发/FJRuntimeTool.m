//
//  FJRuntimeTool.m
//  消息转发
//
//  Created by yons on 2020/3/8.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJMonkey.h"
#import "FJBird.h"
#import "FJRuntimeTool.h"
#import <objc/runtime.h>

@implementation FJRuntimeTool

void speak(id self, SEL _cmd) {
    NSLog(@"i can speak");
}

//消息转发第一步:消息解析
+ (BOOL)resolveInstanceMethod:(SEL)sel {
    if (sel == @selector(speak)) {
        class_addMethod([self class], sel, (IMP)speak, "V@:");
        return YES;
    }
    return [super resolveClassMethod:sel];
}

//消息转发第二步:寻找可以解析该方法的对象
- (id)forwardingTargetForSelector:(SEL)aSelector {
    FJBird *bird = [FJBird new];
    if ([bird respondsToSelector:aSelector]) {
        return bird;
    }
    return [super forwardingTargetForSelector:aSelector];
}

//消息转发第三步
- (void)forwardInvocation:(NSInvocation *)anInvocation {
    if ([anInvocation selector] == @selector(code)) {
        FJMonkey *monkey = [FJMonkey new];
        [anInvocation invokeWithTarget:monkey];
    }
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    if (aSelector == @selector(code)) {
        return [NSMethodSignature signatureWithObjCTypes:"V@:@"];
    }
    return [super methodSignatureForSelector:aSelector];
}

//处理异常,消息在最后都没有被处理的时候被调用
- (void)doesNotRecognizeSelector:(SEL)aSelector {
    if ((aSelector = @selector(eat))) {
        NSLog(@"i can't eat");
    }
}

@end
