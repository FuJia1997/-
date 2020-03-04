//
//  Person.h
//  多态
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

//呼救
- (void)help;
@end
