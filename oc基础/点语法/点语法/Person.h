//
//  Person.h
//  点语法
//
//  Created by yons on 2020/2/11.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Person : NSObject
{
    NSString *_name;
}

- (void)setName:(NSString *)name;
- (NSString *)name;
@end
