//
//  FJNavigationController.m
//  导航栏控制器
//
//  Created by yons on 2020/3/12.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJRedViewController.h"
#import "FJNavigationController.h"

@interface FJNavigationController ()

@end

@implementation FJNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FJRedViewController *red = [FJRedViewController new];
    [self pushViewController:red animated:YES];
    
    
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
