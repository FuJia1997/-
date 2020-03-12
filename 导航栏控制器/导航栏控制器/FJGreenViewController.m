//
//  FJGreenViewController.m
//  导航栏控制器
//
//  Created by yons on 2020/3/12.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJGreenViewController.h"

@interface FJGreenViewController ()

@end

@implementation FJGreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.title = @"绿色控制器";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
