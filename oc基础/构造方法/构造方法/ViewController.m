//
//  ViewController.m
//  构造方法
//
//  Created by yons on 2020/2/12.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"
#import "Dog.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [Person new];
    Dog *d = [[Dog alloc] initWithName:@"旺财" Age:5];
}


@end
