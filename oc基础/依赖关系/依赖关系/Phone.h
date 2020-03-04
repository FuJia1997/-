//
//  Phone.h
//  依赖关系
//
//  Created by yons on 2020/2/8.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Phone : NSObject
{
    NSString *_brand;//品牌
    int _price;
}

- (void)callWithNumber:(NSString *)number;

@end
