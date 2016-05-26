//
//  HJArticleModel.h
//  Lanwen
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MJExtension.h>
@interface HJArticleModel : NSObject

@property(nonatomic,assign) NSInteger id;
@property(nonatomic,strong) NSString* title;
@property(nonatomic,strong) NSString* text;
//@property(nonatomic,strong) NSDate* createAt;
@end
