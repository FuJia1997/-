//
//  ViewController.m
//  id指针
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
   
    Person *p = [Person person];
    Student *s = [Student person];
    NSLog(@"%@", p);
    NSLog(@"%@", s);
}



@end
