//
//  ViewController.m
//  getter方法
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
    [p setAge:22];
    [p setName:@"j"];
    NSLog(@"%d", [p age]);
    NSLog(@"%@", [p name]);
}

@end
