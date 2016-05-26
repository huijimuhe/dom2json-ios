//
//  BaseApi.h
//  Lanwen
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HJBaseApi : NSObject

/**
 * GET请求
 *
 */
+(void)get:(NSString *)url
parameters:(NSDictionary *)parameters
   success:(void (^)(id json))success
   failure:(void (^)(NSError *error))failure;

/**
 * POST请求
 *
 */
+(void)post:(NSString *)url
parameters:(NSDictionary *)parameters
   success:(void (^)(id json))success
   failure:(void (^)(NSError *error))failure;

@end
