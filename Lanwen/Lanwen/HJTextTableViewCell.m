//
//  HJTextTableViewCell.m
//  Lanwen
//
//  Created by mac on 16/5/25.
//  Copyright © 2016年 huijimuhe. All rights reserved.
//

#import "HJTextTableViewCell.h"

@implementation HJTextTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(UILabel*)text{
    if(_text==nil){
        _text=[[UILabel alloc]initWithFrame:self.contentView.frame];
        [self.contentView addSubview:_text];
        
    }
    return _text;
}
@end
