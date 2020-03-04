//
//  ViewController.m
//  类和对象
//
//  Created by yons on 2020/2/6.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p1 = [Person new];
    p1->_name = @"jack";
    NSLog(@"%@", p1->_name);
    (*p1)._age = 15;
    NSLog(@"%i", (*p1)._age);
    
    [p1 run];
    [p1 eatWithFood:@"苹果"];
    NSLog(@"%i", [p1 sumWithNum1:1 andNum2:2]);
}

@end
