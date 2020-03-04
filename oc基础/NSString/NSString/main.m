//
//  main.m
//  NSString
//
//  Created by yons on 2020/2/15.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString *str1 = [NSString string];
    NSString *str2 = [NSString new];
    NSString *str3 = [[NSString alloc] init];
    NSString *str4 = @"jack";
    NSString *str5 = @"jack";
    NSLog(@"\n%p\n%p", str4, str5);
    NSString *str6 = [NSString stringWithFormat:@"我叫%@", @"JACK"];
    int length = [str6 length];
    unichar ch = [str6 characterAtIndex:1];
    //NSLog(@"%C", ch);
    
    int i = [str6 compare:str5];
    [str6 compare:@"Hello" options:NSCaseInsensitiveSearch];
    NSString *str7 = [NSString stringWithUTF8String:"jack"];
    char *str8 = str7.UTF8String;
    
    NSError *err;
    BOOL res = [str6 writeToFile:@"/Users/yons/Desktop/oc基础/abc.txt" atomically:NO encoding:NSUTF8StringEncoding error:&err];
    
    if (res == YES) {
        NSLog(@"写入成功");
    }else{
        NSLog(@"%@", err);
    }
    
    NSString *str9 = [NSString stringWithContentsOfFile:@"/Users/yons/Desktop/oc基础/abc.txt" encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@", str9);
    
    NSURL *u1 = [NSURL URLWithString:@"file:///Users/yons/Desktop/oc基础/abc.txt"];
    NSString *str10 = [NSString stringWithContentsOfURL:u1 encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@", str10);
    
    NSString *str11 = @"hello world";
    NSLog(@"%d", [str11 hasPrefix:@"hello"]);
    
    NSRange range = [str11 rangeOfString:@"llo"];
    NSLog(@"\n%d\n%d", range.location, range.length);
    
    range = [str11 rangeOfString:@"l" options:NSBackwardsSearch];
    NSLog(@"\n%d\n%d", range.location, range.length);
    
    NSMutableString *str20;
    return 0;
}
