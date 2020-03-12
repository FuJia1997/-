//
//  ViewController.m
//  网络
//
//  Created by yons on 2020/1/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.webView];
    
    //发送请求
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //发送异步请求
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        //reponse:服务器返回的响应头
        //data:服务器返回的响应体
        //connectionError:连接错误
        if (!connectionError) {
            //把二进制数据转换成NSString
            NSString *html = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"%@", html);
            [self.webView loadHTMLString:html baseURL:nil];
        } else {
            NSLog(@"连接错误");
        }
    }];
}

- (UIWebView *)webView {
    if (!_webView) {
        _webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    }
    return _webView;
}



@end
