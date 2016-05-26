//
//  ViewController.h
//  Lanwen
//
//  Created by mac on 16/5/24.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MJRefresh.h>
#import <MJExtension.h>
#import "HJArticleApi.h"
#import "HJArticleModel.h"
#import "HJArticleVC.h"

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong) UITableView* table;


@end

