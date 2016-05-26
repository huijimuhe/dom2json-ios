//
//  HJImageTableViewCell.m
//  Lanwen
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//

#import "HJImageTableViewCell.h"

@implementation HJImageTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(UIImageView*)image{
    if(_image==nil){
        _image=[[UIImageView alloc]initWithFrame:self.contentView.frame];
        [self.contentView addSubview:_image];
    }
    return _image;
}
@end
