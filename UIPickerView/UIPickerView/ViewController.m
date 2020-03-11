//
//  ViewController.m
//  UIPickerView
//
//  Created by yons on 2020/3/11.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, strong) UIView *topView;
@property (nonatomic, strong) UIButton *randomButton;
@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UIPickerView *selectFoodPickerView;

@property (nonatomic, strong) UIView *selectedFoodView;
@property (nonatomic, strong) UILabel *fruitLabel;
@property (nonatomic, strong) UILabel *selectedFruitLabel;
@property (nonatomic, strong) UILabel *mainCourseLabel;
@property (nonatomic, strong) UILabel *selectedMainCourseLabel;
@property (nonatomic, strong) UILabel *drinksLabel;
@property (nonatomic, strong) UILabel *selectedDrinksLabel;

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addSubView];
    [self setFrame];
    //默认选中数据
    [self pickerView:self.selectFoodPickerView didSelectRow:0 inComponent:0];
    [self pickerView:self.selectFoodPickerView didSelectRow:0 inComponent:1];
    [self pickerView:self.selectFoodPickerView didSelectRow:0 inComponent:2];
}

- (void)addSubView {
    [self.view addSubview:self.topView];
    [self.topView addSubview:self.randomButton];
    [self.topView addSubview:self.titleLabel];
    
    [self.view addSubview:self.selectFoodPickerView];
    
    [self.view addSubview:self.selectedFoodView];
    [self.selectedFoodView addSubview:self.fruitLabel];
    [self.selectedFoodView addSubview:self.selectedFruitLabel];
    [self.selectedFoodView addSubview:self.mainCourseLabel];
    [self.selectedFoodView addSubview:self.selectedMainCourseLabel];
    [self.selectedFoodView addSubview:self.drinksLabel];
    [self.selectedFoodView addSubview:self.selectedDrinksLabel];
}

- (void)setFrame {
    self.topView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 40);
    self.randomButton.frame = CGRectMake(10, 10, 100, 20);
    self.titleLabel.frame = CGRectMake(160, 10, 100, 20);
    
    self.selectFoodPickerView.frame = CGRectMake(0, 40, [UIScreen mainScreen].bounds.size.width, 200);
    
    self.selectedFoodView.frame = CGRectMake(0, 240, [UIScreen mainScreen].bounds.size.width, 120);
    self.fruitLabel.frame = CGRectMake(10, 10, 40, 20);
    self.selectedFruitLabel.frame = CGRectMake(60, 10, 100, 20);
    self.mainCourseLabel.frame = CGRectMake(10, 50, 40, 20);
    self.selectedMainCourseLabel.frame = CGRectMake(60, 50, 100, 20);
    self.drinksLabel.frame = CGRectMake(10, 90, 40, 20);
    self.selectedDrinksLabel.frame = CGRectMake(60, 90, 100, 20);
}

- (UIView *)topView {
    if (!_topView) {
        _topView = [UIView new];
        _topView.backgroundColor = [UIColor greenColor];
    }
    return _topView;
}

- (UIButton *)randomButton {
    if (!_randomButton) {
        _randomButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_randomButton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
        [_randomButton setTitle:@"随机点餐" forState:UIControlStateNormal];
        [_randomButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }
    return _randomButton;
}

- (void)click {
    for (int i = 0; i < self.dataArray.count; i++) {
        //生成随机数
        NSInteger n = [self.dataArray[i] count];
        int random = arc4random_uniform((int)n);
        
        NSInteger j = [self.selectFoodPickerView selectedRowInComponent:i];
        while (random == j) {
            random = arc4random_uniform((int)n);
        }
        
        [self pickerView:self.selectFoodPickerView didSelectRow:random inComponent:i];
        [self.selectFoodPickerView selectRow:random inComponent:i animated:YES];
    }
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
        _titleLabel.text = @"点餐系统";
    }
    return _titleLabel;
}

- (UIPickerView *)selectFoodPickerView {
    if (!_selectFoodPickerView) {
        _selectFoodPickerView = [UIPickerView new];
        _selectFoodPickerView.dataSource = self;
        _selectFoodPickerView.delegate = self;
    }
    return _selectFoodPickerView;
}

- (UIView *)selectedFoodView {
    if (!_selectedFoodView) {
        _selectedFoodView = [UIView new];
        _selectedFoodView.backgroundColor = [UIColor grayColor];
    }
    return _selectedFoodView;
}

- (UILabel *)fruitLabel {
    if (!_fruitLabel) {
        _fruitLabel = [UILabel new];
        _fruitLabel.text = @"水果";
    }
    return _fruitLabel;
}

- (UILabel *)selectedFruitLabel {
    if (!_selectedFruitLabel) {
        _selectedFruitLabel = [UILabel new];
        _selectedFruitLabel.text = @"NULL";
        _selectedFruitLabel.textColor = [UIColor redColor];
    }
    return _selectedFruitLabel;
}

- (UILabel *)mainCourseLabel {
    if (!_mainCourseLabel) {
        _mainCourseLabel = [UILabel new];
        _mainCourseLabel.text = @"主菜";
    }
    return _mainCourseLabel;
}

- (UILabel *)selectedMainCourseLabel {
    if (!_selectedMainCourseLabel) {
        _selectedMainCourseLabel = [UILabel new];
        _selectedMainCourseLabel.text = @"NULL";
        _selectedMainCourseLabel.textColor = [UIColor redColor];
    }
    return _selectedMainCourseLabel;
}

- (UILabel *)drinksLabel {
    if (!_drinksLabel) {
        _drinksLabel = [UILabel new];
        _drinksLabel.text = @"酒水";
    }
    return _drinksLabel;
}

- (UILabel *)selectedDrinksLabel {
    if (!_selectedDrinksLabel) {
        _selectedDrinksLabel = [UILabel new];
        _selectedDrinksLabel.text = @"NULL";
        _selectedDrinksLabel.textColor = [UIColor redColor];
    }
    return _selectedDrinksLabel;
}

#pragma mark - 懒加载数据
- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"foods.plist" ofType:nil];
        _dataArray = [NSMutableArray arrayWithContentsOfFile:path];
    }
    return _dataArray;
}

#pragma mark - 数据源协议
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    //返回有多少组
    return self.dataArray.count;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    //返回每一组行数
    return [self.dataArray[component] count];
}

#pragma mark - 代理方法
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    //返回每一行要显示的内容
    NSArray *array =  self.dataArray[component];
    return array[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSArray *array = self.dataArray[component];
    NSString *str = array[row];
    
    if (component == 0) {
        self.selectedFruitLabel.text = str;
    }else if (component == 1) {
        self.selectedMainCourseLabel.text = str;
    }else {
        self.selectedDrinksLabel.text = str;
    }
}

@end
