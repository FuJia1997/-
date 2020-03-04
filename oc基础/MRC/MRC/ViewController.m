//
//  ViewController.m
//  MRC
//
//  Created by yons on 2020/2/12.
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
    p.name = @"jack";
    NSLog(@"%lu", [p retainCount]);
    [p retain];
    NSLog(@"%lu", [p retainCount]);
    [p release];
    [p release];
    p = nil;
    [p sayHi];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
