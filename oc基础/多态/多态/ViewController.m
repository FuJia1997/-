//
//  ViewController.m
//  多态
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

/*
 1、杀手
    方法：可以杀各种各样的人
 2、每个人被杀的时候，都要叫，但是每个人叫的形式是不一样的。
 */


#import "Killer.h"
#import "Person.h"
#import "Man.h"
#import "Superman.h"
#import "FireMan.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Killer *killer = [Killer new];
    
    Man *man = [Man new];
    
    [killer killWithPerson:man];
    
    FireMan *fm = [FireMan new];
    
    [killer killWithPerson:fm];
    
    Superman *sm = [Superman new];
    
    [killer killWithPerson:sm];
}


@end
