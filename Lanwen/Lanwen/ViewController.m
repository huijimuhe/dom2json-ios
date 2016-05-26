//
//  ViewController.m
//  Lanwen
//
//  Created by mac on 16/5/24.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//

#import "ViewController.h"

static NSString* identifier=@"cell";

@interface ViewController ()

@property(nonatomic,assign)NSInteger page;
@property(nonatomic,strong)NSMutableArray* data;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"懒文"];
    [self setupTable];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupTable{
    
    self.page=0;
    self.data=[NSMutableArray array];
    
    [self.view addSubview:self.table];
    [self.table registerClass:[UITableViewCell class] forCellReuseIdentifier:identifier];
    
     __weak typeof(self) weakSelf = self;
    self.table.mj_header= [MJRefreshNormalHeader headerWithRefreshingTarget:weakSelf refreshingAction:@selector(loadData)];
    
}
-(void)loadData{
    [HJArticleApi getPage:self.page success:^(id json) {
    
        [self.data removeAllObjects];
        self.data= (NSMutableArray*)json;
        [self.table.mj_header endRefreshing];
        [self.table reloadData];
        
    } failed:^(NSError *error) {
        [self.table.mj_header endRefreshing];
    }];
}

#pragma table delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    cell.textLabel.text =((HJArticleModel*) self.data[indexPath.row]).title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    HJArticleModel* model=(HJArticleModel*)self.data[indexPath.row];
    NSArray* sections=[HJSectionModel mj_objectArrayWithKeyValuesArray:model.text];
    [self.navigationController pushViewController:[[HJArticleVC alloc]initWithSections:sections] animated:YES];
}

-(UITableView*)table{
    if(_table==nil){
        _table=[[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
        _table.delegate=self;
        _table.dataSource=self;
    }
    return _table;
}
@end
