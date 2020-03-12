//
//  ViewController.m
//  请求json数据
//
//  Created by yons on 2020/1/11.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //第一种方式
//    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1/demo.json"];
//    NSData *data = [NSData dataWithContentsOfURL:url];
//    NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
//    NSLog(@"%@", str);
    //第二种方式
    NSURL *url = [NSURL URLWithString:@"http://127.0.0.1/demo.json"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        if (!connectionError) {
            NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
            if (httpResponse.statusCode == 200 || httpResponse.statusCode == 304) {
                NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                NSLog(@"%@", str);
            } else {
                NSLog(@"服务器内部错误！");
            }
        } else {
            NSLog(@"error：%@", connectionError);
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
