//
//  ViewController.m
//  方法的重写
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Chinese.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Chinese *ch = [Chinese new];
    [ch sayHi];
    
    //父类指针指向子类对象，通过父类指针调用的方法如果在子类中重写了，调用的是子类重写的方法
    Person *chinese = [Chinese new];
    [chinese sayHi];
}


@end
