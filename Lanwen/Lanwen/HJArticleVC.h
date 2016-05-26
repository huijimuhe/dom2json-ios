//
//  HJArticleVC.h
//  Lanwen
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>
#import "HJSectionModel.h"
#import "HJImageTableViewCell.h"
#import "HJTextTableViewCell.h"

@interface HJArticleVC : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) UITableView* table;

-(id)initWithSections:(NSArray*)sections;
@end
