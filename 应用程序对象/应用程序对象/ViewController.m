//
//  ViewController.m
//  应用程序对象
//
//  Created by yons on 2020/3/11.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIApplication类型对象，主要执行应用级别的操作
    UIApplication *app =  [UIApplication sharedApplication];
    //1、设置应用头像上的数字
    UIUserNotificationCategory *category = [[UIUserNotificationCategory alloc] init];
    NSSet *set = [NSSet setWithObject:category];
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge categories:set];
    [app registerUserNotificationSettings:settings];
    app.applicationIconBadgeNumber = 10;
    
    //2、显示连网状态指示器
    app.networkActivityIndicatorVisible = YES;
    
    //3、openURL:打电话、发短信、发邮件、跳转到其他应用
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
