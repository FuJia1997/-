//
//  main.m
//  block
//
//  Created by yons on 2020/2/14.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>


int num1 = 100;
void test(void (^b)()){
    b();
}
int test2(int (^b)(int num1, num2)){
    int num1 = 2;
    int num2 = 2;
    return b(num1, num2);
}
typedef void (^newTypde)();
newTypde test3(){
    return ^{
        NSLog(@"---------");
    };
}
int main(int argc, const char * argv[]) {
    
    newTypde type = test3();
    type();
    
    test(^{
        NSLog(@"你好");
    });
    NSLog(@"%d", test2(^int(int num1, int num2) {
        return num2 + num1;
    }));
    
    __block int num2 = 200;
    
    void (^myBlock1)(void) = ^void(){
        int num3 = 300;
        num2++;
        NSLog(@"%d", num3++);
    };
    myBlock1();
    
    int (^myBlock2)(void) = ^int() {
        NSLog(@"hello");
        return 1;
    };
    NSLog(@"%d", myBlock2());
    
    int (^myBlock3)(int num1, int num2) = ^int(int num1, int num2) {
        return num1 + num2;
    };
    NSLog(@"%d", myBlock3(1, 2));
    
    void (^myBlock4)(void) = ^{
        NSLog(@"你好");
    };
    myBlock4();
    
    void (^myBlock5)(int ,int) = ^(int num1, int num2){
        NSLog(@"%d", num1 + num2);
    };
    myBlock5(2, 3);
    
    int (^myBlock6)(void) = ^{
        return 1;
    };
    NSLog(@"%d", myBlock6());
    
    typedef void (^myBlock7)();
    myBlock7 m1 = ^void(){
        NSLog(@"简写");
    };
    m1();
    return 0;
}
