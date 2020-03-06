//
//  ViewController.m
//  UITableView
//
//  Created by yons on 2020/3/5.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJModel.h"
#import "FJFrameModel.h"
#import "FJWeiboCell.h"
#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataFrameArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];
    self.tableView.rowHeight = 240;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
        
        _tableView.dataSource = self;
        _tableView.delegate = self;
        
        _tableView.frame = self.view.frame;
    }
    return _tableView;
}

#pragma mark - 懒加载数据

- (NSArray *)dataFrameArray {
    if (!_dataFrameArray) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"Quotes.plist" ofType:nil];
        NSArray *array = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *mutableArray = [NSMutableArray new];
        for (NSDictionary *dic in array) {
            //创建一个数据模型
            FJModel *model = [FJModel FJmodelWithDict:dic];
            //创建frame模型
            FJFrameModel *frameModel = [FJFrameModel new];
            frameModel.model = model;
            
            [mutableArray addObject:frameModel];
        }
        _dataFrameArray = mutableArray;
    }
    return _dataFrameArray;
}

#pragma mark - 代理方法

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    FJFrameModel *frameModel = self.dataFrameArray[indexPath.row];
    return frameModel.cellHeight;
}

#pragma mark - 数据源方法

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataFrameArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    FJFrameModel *frameModel = self.dataFrameArray[indexPath.row];
    
    FJWeiboCell *cell = [FJWeiboCell weiboCellWithTableView:self.tableView];
    cell.frameModel = frameModel;
    
    return cell;
}

#pragma mark - 隐藏状态栏

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
