//
//  Student.m
//  枚举示例
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)setStuNumber:(NSString *)stuNumber {
    _stuNumber = stuNumber;
}

- (NSString *)stuNumber {
    return _stuNumber;
}

- (void)setBook:(Book *)book {
    _book = book;
}

- (Book *)book {
    return _book;
}

@end
