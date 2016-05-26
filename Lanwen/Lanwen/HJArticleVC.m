//
//  HJArticleVC.m
//  Lanwen
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//

#import "HJArticleVC.h"

static NSString* textIdentifier=@"textCell";
static NSString* imageIdentifier=@"imageCell";

@interface HJArticleVC ()

@property(nonatomic,strong)NSArray* data;

@end

@implementation HJArticleVC

-(id)initWithSections:(NSArray *)sections{
    if(self=[super init]){
        self.data=sections;
        [self.view addSubview:self.table];
        [self.table registerClass:[HJTextTableViewCell class] forCellReuseIdentifier:textIdentifier];
        [self.table registerClass:[HJImageTableViewCell class] forCellReuseIdentifier:imageIdentifier];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma table delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HJSectionModel* section=(HJSectionModel*)self.data[indexPath.row];
    switch (section.type) {
        case 2:{
            HJTextTableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:textIdentifier forIndexPath:indexPath];
            cell.text.text=section.object;
            return cell;
        }
        case 3:{
            HJImageTableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:imageIdentifier forIndexPath:indexPath];
            [cell.image sd_setImageWithURL:section.object];
            return cell;
        }
        default:
            return nil;
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    HJSectionModel* section=(HJSectionModel*)self.data[indexPath.row];
    switch (section.type) {
        case 2:{
            return 44;
        }
        case 3:{
            return 200;
        }
        default:
            return 44;
    }

}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //do anything you want
}

-(UITableView*)table{
    if(_table==nil){
        _table=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        _table.delegate=self;
        _table.dataSource=self;
        [_table setAllowsSelection:NO];
    }
    return _table;
}

@end
