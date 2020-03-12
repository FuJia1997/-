//
//  FJRedViewController.m
//  导航栏控制器
//
//  Created by yons on 2020/3/12.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJRedViewController.h"
#import "FJGreenViewController.h"

@interface FJRedViewController ()

@property (nonatomic, strong) UIButton *toGreenButton;

@end

@implementation FJRedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.navigationItem.title = @"红色控制器";
    
    [self.view addSubview:self.toGreenButton];
    
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:nil action:nil];
    self.navigationItem.rightBarButtonItem = right;
    
    //设置返回到该也的返回按钮
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = back;
}

- (UIButton *)toGreenButton {
    if (!_toGreenButton) {
        _toGreenButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, 100, 30)];
        [_toGreenButton setTitle:@"to green" forState:UIControlStateNormal];
        [_toGreenButton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
        [_toGreenButton setBackgroundColor:[UIColor blueColor]];
    }
    return _toGreenButton;
}

- (void)click {
    FJGreenViewController *green = [FJGreenViewController new];
    [self.navigationController pushViewController:green animated:YES];
}


@end
