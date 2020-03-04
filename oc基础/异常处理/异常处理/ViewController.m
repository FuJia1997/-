//
//  ViewController.m
//  异常处理
//
//  Created by yons on 2020/2/7.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p = [Person new];
    
    
    //try catch并不能处理所有异常
    @try
    {
        [p sayHi];
    }
    @catch (NSException *ex)
    {
        NSLog(@"%@", ex);
        NSLog(@"发生异常");
    }
    @finally
    {
        //无论是否发生异常都会被执行
        NSLog(@"THIS IS FINALLY");
    }
    
    if ([p respondsToSelector:@selector(sayHi)]) {
        NSLog(@"sayHi 方法被实现");
    } else {
        NSLog(@"sayHi 方法未曾实现");
    }
}

@end
