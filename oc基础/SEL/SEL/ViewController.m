//
//  ViewController.m
//  SEL
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [Person new];
    
    SEL s1 = @selector(sayHi);
    [p performSelector:s1];
    NSLog(@"%p", s1);
    
    SEL s2 = @selector(eatWithFood:);
    [p performSelector:s2 withObject:@"肉"];
    
    p performSelector:<#(SEL)#> withObject:<#(id)#> withObject:<#(id)#>
    
}


@end
