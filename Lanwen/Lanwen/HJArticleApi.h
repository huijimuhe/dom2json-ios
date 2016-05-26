//
//  ArticleApi.h
//  Lanwen
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HJBaseApi.h"
#import "HJArticleModel.h"

@interface HJArticleApi : NSObject

+(void)getPage:(NSInteger)page
       success:(void(^)(id json)) success
        failed:(void(^)(NSError *error)) failed;
@end
