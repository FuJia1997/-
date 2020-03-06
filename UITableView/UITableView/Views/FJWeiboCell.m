//
//  FJWeiboCell.m
//  UITableView
//
//  Created by yons on 2020/3/5.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJModel.h"
#import "FJWeiboCell.h"

@interface FJWeiboCell()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UIImageView *vipImageView;
@property (nonatomic, strong) UILabel *contentTextLabel;
@property (nonatomic, strong) UIImageView *pictureImageView;

@end

@implementation FJWeiboCell

+ (instancetype)weiboCellWithTableView:(UITableView *)tableView {
    FJWeiboCell *cell = [tableView dequeueReusableCellWithIdentifier:@"weibo"];
    
    if (!cell) {
        cell = [[FJWeiboCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"weibo"];
    }
    return cell;
}

//重写初始化cell的方法
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self.contentView addSubview:self.iconImageView];
        [self.contentView addSubview:self.nameLabel];
        [self.contentView addSubview:self.vipImageView];
        [self.contentView addSubview:self.contentTextLabel];
        [self.contentView addSubview:self.pictureImageView];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - 懒加载控件

- (UIImageView *)iconImageView {
    if (!_iconImageView) {
        _iconImageView = [UIImageView new];
    }
    return _iconImageView;
}

- (UILabel *)nameLabel {
    if (!_nameLabel) {
        _nameLabel = [UILabel new];
        _nameLabel.font = [UIFont systemFontOfSize:12];
    }
    return _nameLabel;
}

- (UIImageView *)vipImageView {
    if (!_vipImageView) {
        _vipImageView = [UIImageView new];
        _vipImageView.image = [UIImage imageNamed:@"VIP.png"];
    }
    return _vipImageView;
}

- (UILabel *)contentTextLabel {
    if (!_contentTextLabel) {
        _contentTextLabel = [UILabel new];
        _contentTextLabel.numberOfLines = 0;
        _contentTextLabel.font = [UIFont systemFontOfSize:14];
    }
    return _contentTextLabel;
}

- (UIImageView *)pictureImageView {
    if (!_pictureImageView) {
        _pictureImageView = [UIImageView new];
    }
    return _pictureImageView;
}

#pragma mark - 重写model的set方法

- (void)setFrameModel:(FJFrameModel *)frameModel {
    _frameModel = frameModel;
    //设置数据
    [self setData];
    //设置空间frame
    [self setFrame];
}

- (void)setData{
    
    FJModel *model = self.frameModel.model;
    
    self.iconImageView.image = [UIImage imageNamed:model.icon];
    
    self.nameLabel.text = model.name;
    
    if (model.vip) {
        self.vipImageView.hidden = NO;
    } else {
        self.vipImageView.hidden = YES;
    }
    
    self.contentTextLabel.text = model.text;
    
    if (model.pictureName) {
        self.pictureImageView.hidden = NO;
        self.pictureImageView.image = [UIImage imageNamed:model.pictureName];
    } else {
        self.pictureImageView.hidden = YES;
    }
}

- (void)setFrame {
    //icon
    self.iconImageView.frame = self.frameModel.iconFrame;
    
    //昵称frame
    self.nameLabel.frame = self.frameModel.nameFrame;
    //会员标
    self.vipImageView.frame = self.frameModel.vipFrame;
    //正文
    self.contentTextLabel.frame = self.frameModel.textFrame;
    //配图
    self.pictureImageView.frame = self.frameModel.pictureFrame;
}

//封装一个计算字符串宽高的方法
- (CGSize)sizeWithText:(NSString *)text MaxSize:(CGSize)maxSize Font:(UIFont *)font {
    NSDictionary *attr = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil].size;
}

@end
