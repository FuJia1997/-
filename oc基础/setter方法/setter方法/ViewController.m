//
//  ViewController.m
//  setter方法
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
    Person *p1 = [Person new];
    
    [p1 setAge:22];
    [p1 setName:@"jack"];
}

@end
