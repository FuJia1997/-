//
//  main.m
//  NSFileMangger
//
//  Created by yons on 2020/2/16.
//  Copyright © 2020年 FuJia. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //创建对象
    NSFileManager *m = [NSFileManager defaultManager];
    //1、判断指定路径下是否有某个文件
    BOOL b = [m fileExistsAtPath:@"/Users/yons/Desktop/oc基础/字符串"];
    NSLog(@"%d", b);
    //2、判断某个路径的文件是否存在，并判断该路径是个文件路径还是文件夹路径
    BOOL flag = NO;
    b = [m fileExistsAtPath:@"/Users/yons/Desktop/oc基础/字符串" isDirectory:&flag];
    NSLog(@"%d\n%d", b, flag);
    //3、判断文件夹或者文件是否可以被读取
    b = [m isReadableFileAtPath:@"/Users/yons/Desktop/oc基础/字符串"];
    NSLog(@"%d", b);
    //4、判断文件或者文件夹是否可以写
    b = [m isWritableFileAtPath:@"/Users/yons/Desktop/oc基础/字符串"];
    NSLog(@"%d", b);
    //5、判断文件或者文件夹是否可以删除
    b = [m isDeletableFileAtPath:@"/Users/yons/Desktop/oc基础/字符串"];
    //6、获取指定文件或者文件夹的属性信息
    NSDictionary *dic = [m attributesOfItemAtPath:@"/Users/yons/Desktop/oc基础/字符串" error:nil];
    NSLog(@"%@", dic[@"NSFileSize"]);
    //7、获取指定文件下的所有文件夹和文件目录(以及所有后代目录)
    NSArray *arr = [m subpathsAtPath:@"/Users/yons/Desktop/oc基础/字符串"];
    NSLog(@"%@", arr);
    //8、获取指定文件下的所有文件夹和文件目录(只获得直系子目录)
    NSArray *brr = [m contentsOfDirectoryAtPath:@"/Users/yons/Desktop/oc基础/字符串" error:nil];
    NSLog(@"%@", brr);
    //9、在指定目录创建文件
    //存储在磁盘上的任何文件都是以二进制形式存储
    //第二个参数是文件的内容，要求以二进制数据传入
    //NSData就是用来保存二进制数据
    NSString *str = @"hello world";
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    b = [m createFileAtPath:@"/Users/yons/Desktop/oc基础/文件操作/haha.txt" contents:data attributes:nil];
    NSLog(@"%d", b);
    //10、在指定路径创建文件夹
    //参数2：如果是yes就做一路创建，如果是no则不作一路创建
    b = [m createDirectoryAtPath:@"/Users/yons/Desktop/oc基础/文件操作/哦哦" withIntermediateDirectories:NO attributes:nil error:nil];
    NSLog(@"%d", b);
    //11、拷贝文件
    b = [m copyItemAtPath:@"/Users/yons/Desktop/oc基础/文件操作/haha.txt" toPath:@"/Users/yons/Desktop/oc基础/文件操作/哦哦/haha.txt" error:nil];
    NSLog(@"%d", b);
    //12、移动、剪切、文件的重命名
    b = [m moveItemAtPath:@"/Users/yons/Desktop/oc基础/文件操作/哦哦/haha.txt" toPath:@"/Users/yons/Desktop/oc基础/文件操作/哦哦/heihei.txt" error:nil];
    NSLog(@"%d", b);
    //13、删除文件
    b = [m removeItemAtPath:@"/Users/yons/Desktop/oc基础/文件操作/哦哦/heihei.txt" error:nil];
    NSLog(@"%d", b);
    return 0;
}
