//
//  ViewController.m
//  枚举示例
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Student.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Author *a1 = [Author new];
    [a1 setName:@"奥斯托洛夫斯基"];
    [a1 setAge:67];
    [a1 setGender:Male];
    
    Book *b1 = [Book new];
    [b1 setName:@"钢铁是怎样炼成的"];
    [b1 setPublishDate:(Date){1998,12,12}];
    [b1 setPublisherName:@"人民出版社"];
    [b1 setAuthor:a1];
    
    Student *s1 = [Student new];
    [s1 setName:@"付佳"];
    [s1 setAge:22];
    [s1 setGender:Male];
    [s1 setBook:b1];
}



@end
