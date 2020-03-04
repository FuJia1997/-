//
//  CPU.h
//  组合关系
//
//  Created by yons on 2020/2/8.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CPU : NSObject
{
    NSString *_brand;//品牌
    NSString *_model;//型号
    int _zhenjiaoshu;//针脚数
}

- (void)jisuan;
@end
