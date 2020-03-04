//
//  Person.h
//  依赖关系
//
//  Created by yons on 2020/2/8.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Phone.h"
#import <Foundation/Foundation.h>

@interface Person : NSObject

- (void)callWithPhone:(Phone *)phone;

@end
