//
//  Computer.h
//  组合关系
//
//  Created by yons on 2020/2/8.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "CPU.h"
#import "Memory.h"
#import "MainBoard.h"
#import <Foundation/Foundation.h>

@interface Computer : NSObject
{
    CPU *_cpu;
    Memory *_memory;
    MainBoard *_mainBoard;
}
@end
