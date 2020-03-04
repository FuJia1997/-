//
//  ViewController.m
//  字符串
//
//  Created by yons on 2020/2/7.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建空字符串
    NSString *str1 = [NSString new];
    NSString *str2 = [NSString string];
    //用常量字符串创建
    NSString *str3 = [NSString stringWithFormat:@"hello"];
    NSString *str4 = @"jack";//@"jack"本质是一个NSString对象,str4的值是这个对象的地址
    
#pragma - 常用类方法
    char *cstr = "rose";
    //将c字符串转换为OC字符串对象
    NSString *str5 = [NSString stringWithUTF8String:cstr];
    //拼接一个OC字符串对象
    int age = 19;
    NSString *name = @"小明";
    NSString *str6 = [NSString stringWithFormat:@"大家好我叫%@，我的年龄是%d", name, age];
    NSLog(@"%@", str6);
    
#pragma - 常用对象方法
    //计算字符串长度（可以处理中文）
    NSUInteger len = [str6 length];
    NSLog(@"str6'length = %lu", len);
    //得到字符串指定位置的字符
    unichar ch = [str6 characterAtIndex:2];
    NSLog(@"ch = %C", ch);
    //判断字符串相等
    NSString *c1 = @"123";
    NSString *c2 = @"123";
    
    if ([c1 isEqualToString:c2]) {
        NSLog(@"c1 和 c2一样");
    } else {
        NSLog(@"c1 和 c2不一样");
    }
    //比较字符串的大小
    NSString *c3 = @"China";
    NSString *c4 = @"Japan";
    NSComparisonResult re = [c3 compare:c4];
    NSLog(@"%d", re);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
