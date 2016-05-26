//
//  BaseApi.m
//  Lanwen
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//



#import "HJBaseApi.h"
#import <AFNetworking.h>

@implementation HJBaseApi
+(void)get:(NSString *)url
parameters:(NSDictionary *)parameters
   success:(void (^)(id json))success
   failure:(void (^)(NSError *error))failure {
    //显示状态栏的网络指示器
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    AFHTTPSessionManager *mgr = [self manager];
    //设置加载时间
    mgr.requestSerializer.timeoutInterval = 10.0f;
    
    [mgr GET:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        if(success){
            success(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        if(failure){
            failure(error);
        }
    }];
    
}

+(void)post:(NSString *)url
parameters:(NSDictionary *)parameters
   success:(void (^)(id json))success
   failure:(void (^)(NSError *error))failure {
    //显示状态栏的网络指示器
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
    AFHTTPSessionManager *mgr = [self manager];
    //设置加载时间
    mgr.requestSerializer.timeoutInterval = 10.0f;
    
    [mgr POST:url parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        if(success){
            success(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
        if(failure){
            failure(error);
        }
    }];
    
}

+ (AFHTTPSessionManager *)manager {
    static AFHTTPSessionManager *manager = nil;
    if (manager == nil) {
        manager = [AFHTTPSessionManager manager];
    }
    return manager;
}
@end
