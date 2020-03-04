//
//  ViewController.m
//  动态类型检查
//
//  Created by yons on 2020/2/11.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"
#import "Student.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [Person new];
    if ([p respondsToSelector:@selector(sayHi)]) {
        NSLog(@"sayHi方法实现了");
    } else {
        NSLog(@"sayHi方法未实现");
    }
    
    if ([p isKindOfClass:[Person class]]) {
        NSLog(@"我是Person类/Person子类的对象");
    }
    
    Student *s = [Student new];
    if ([s isMemberOfClass:[Student class]]) {
        NSLog(@"我是Student类的对象");
    }
    
    if ([[s class] isSubclassOfClass:[Person class]]) {
        NSLog(@"s的父类是Person");
    }
    
    if ([[p class] instancesRespondToSelector:@selector(sayHi)]) {
        NSLog(@"p对象对应的类有类方法sayHi");
    }
}

@end
