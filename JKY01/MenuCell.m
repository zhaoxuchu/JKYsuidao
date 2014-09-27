//
//  MenuCell.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-18.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "MenuCell.h"

@implementation MenuCell
@synthesize imageView;
@synthesize labTitle;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setImgTitle:(UIImageView *)imgTitle
{
    imageView = imgTitle;
}

-(void)setTitle:(NSString *)strlabTitle
{
    labTitle.text = strlabTitle;
}











@end
