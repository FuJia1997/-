//
//  FJWeiboCell.h
//  UITableView
//
//  Created by yons on 2020/3/5.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "FJFrameModel.h"
#import <UIKit/UIKit.h>

@interface FJWeiboCell : UITableViewCell

@property (nonatomic, strong) FJFrameModel *frameModel;

+ (instancetype)weiboCellWithTableView:(UITableView *)tableView;

@end
