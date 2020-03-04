//
//  ViewController.m
//  依赖关系
//
//  Created by yons on 2020/2/8.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Phone *phone = [Phone new];
    Person *person = [Person new];
    [person callWithPhone:phone];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
