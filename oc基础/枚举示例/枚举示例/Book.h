//
//  Book.h
//  枚举示例
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Author.h"
#import <Foundation/Foundation.h>

typedef struct
{
    int mouth;
    int year;
    int day;
}Date;

@interface Book : NSObject
{
    NSString *_name;
    NSString *_publisherName;
    Author *_author;
    Date _publishDate;
}

- (void)setName:(NSString *)name;
- (NSString *)name;

- (void)setPublisherName:(NSString *)publisherName;
- (NSString *)publisherName;

- (void)setAuthor:(Author *)author;
- (Author *)author;

- (void)setPublishDate:(Date)publishDate;
- (Date)publishDate;
@end
