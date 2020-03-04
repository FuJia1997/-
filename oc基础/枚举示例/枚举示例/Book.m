
//
//  Book.m
//  枚举示例
//
//  Created by yons on 2020/2/10.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import "Book.h"

@implementation Book

- (void)setName:(NSString *)name {
    _name = name;
}

- (NSString *)name {
    return _name;
}

- (void)setPublisherName:(NSString *)publisherName {
    _publisherName = publisherName;
}

- (NSString *)publisherName {
    return _publisherName;
}

- (void)setAuthor:(Author *)author {
    _author = author;
}

- (Author *)author {
    return _author;
}

- (void)setPublishDate:(Date)publishDate {
    _publishDate = publishDate;
}

- (Date)publishDate {
    return _publishDate;
}

@end
