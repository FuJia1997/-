//
//  FJFrameModel.h
//  UITableView
//
//  Created by yons on 2020/3/6.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJModel.h"
#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface FJFrameModel : NSObject

//保存数据
@property (nonatomic, strong) FJModel *model;

@property (nonatomic, assign, readonly) CGRect iconFrame;//头像frame
@property (nonatomic, assign, readonly) CGRect nameFrame;//昵称frame
@property (nonatomic, assign, readonly) CGRect vipFrame;//会员标frame
@property (nonatomic, assign, readonly) CGRect textFrame;//内容文字frame
@property (nonatomic, assign, readonly) CGRect pictureFrame;//内容图片frame

@property (nonatomic, assign) int cellHeight;//行高属性

@end
