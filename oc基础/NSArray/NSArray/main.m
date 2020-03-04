//
//  main.m
//  NSArray
//
//  Created by yons on 2020/2/16.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    NSArray *arr = @[@"hello", @"jack", @"lili", @"huhua"];
    for (int i = 0; i < arr.count; i++){
        NSLog(@"%@", arr[i]);
    }
    for (NSString *str in arr){
        NSLog(@"%@", str);
    }
    return 0;
}
