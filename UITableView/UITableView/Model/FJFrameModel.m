 //
//  FJFrameModel.m
//  UITableView
//
//  Created by yons on 2020/3/6.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJFrameModel.h"
#import <UIKit/UIKit.h>

@implementation FJFrameModel

- (void)setModel:(FJModel *)model {
    _model = model;
    
    //计算frame
    CGFloat margin = 10.0;
    
    //icon
    CGFloat iconX = margin;
    CGFloat iconY = margin;
    CGFloat iconW = 35;
    CGFloat iconH = 35;
    _iconFrame = CGRectMake(iconX, iconY, iconW, iconH);
    
    //昵称frame
    CGFloat nameX = CGRectGetMaxX(_iconFrame) + margin;
    CGSize nameSize = [self sizeWithText:self.model.name MaxSize:CGSizeMake(MAXFLOAT, MAXFLOAT) Font:[UIFont systemFontOfSize:12]];
    CGFloat nameW = nameSize.width;
    CGFloat nameH = nameSize.height;
    CGFloat nameY = margin + (35 - nameH) / 2.0;
    _nameFrame = CGRectMake(nameX, nameY, nameW, nameH);
    //会员标
    CGFloat vipW = 20;
    CGFloat vipH = 20;
    CGFloat vipX = CGRectGetMaxX(_nameFrame) + margin;
    CGFloat vipY = nameY - 5;
    _vipFrame = CGRectMake(vipX, vipY, vipW, vipH);
    //正文
    CGFloat textX = iconX;
    CGFloat textY = CGRectGetMaxY(_iconFrame) + margin;
    CGSize textSize = [self sizeWithText:self.model.text MaxSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 20, MAXFLOAT) Font:[UIFont systemFontOfSize:14]];
    CGFloat textW = textSize.width;
    CGFloat textH = textSize.height;
    _textFrame = CGRectMake(textX, textY, textW, textH);
    //配图
    CGFloat pictureX = iconX;
    CGFloat pictureY = CGRectGetMaxY(_textFrame) + margin;
    CGFloat pictureW = 100;
    CGFloat pictureH = 100;
    _pictureFrame = CGRectMake(pictureX, pictureY, pictureW, pictureH);
    
    if (model.pictureName) {
        _cellHeight = CGRectGetMaxY(_pictureFrame) + margin;
    } else {
        _cellHeight = CGRectGetMaxY(_textFrame) + margin;
    }
}

//封装一个计算字符串宽高的方法
- (CGSize)sizeWithText:(NSString *)text MaxSize:(CGSize)maxSize Font:(UIFont *)font {
    NSDictionary *attr = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil].size;
}

@end
