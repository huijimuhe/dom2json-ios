//
//  ArticleApi.m
//  Lanwen
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//

#define kArticleURL @"http://192.168.0.104/app-lanwen/articlelist/"


#import "HJArticleApi.h"

@implementation HJArticleApi
+(void)getPage:(NSInteger)page
       success:(void(^)(id json)) success
        failed:(void(^)(NSError *error)) failed{
    NSString* url=[kArticleURL stringByAppendingFormat:@"%ld",page];
    
    [HJBaseApi get:url parameters:nil success:^(id json) {
        NSArray* data=[HJArticleModel mj_objectArrayWithKeyValuesArray:json];
        if(success){
            success(data);
        }
    } failure:^(NSError *error) {
        NSLog(@"error occured");
    }];
}
@end
