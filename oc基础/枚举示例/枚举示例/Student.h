//
//  Student.h
//  枚举示例
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Person.h"
#import "Book.h"
#import <Foundation/Foundation.h>

@interface Student : Person
{
    NSString *_stuNumber;
    Book *_book;
}

- (void)setStuNumber:(NSString *)stuNumber;
- (NSString *)stuNumber;

- (void)setBook:(Book *)book;
- (Book *)book;

@end
