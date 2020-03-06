//
//  FJModel.h
//  UITableView
//
//  Created by yons on 2020/3/5.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FJModel : NSObject

@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *pictureName;
@property (nonatomic, assign) Boolean vip;

- (instancetype)initWithDict:(NSDictionary *)dict;

+ (instancetype)FJmodelWithDict:(NSDictionary *)dict;

@end
