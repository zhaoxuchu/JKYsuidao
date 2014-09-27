//
//  MenuCell.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-18.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property (strong, nonatomic) IBOutlet UILabel *labTitle;

-(void)setImgTitle:(UIImageView *)imgTitle;
-(void)setTitle:(NSString *)strlabTitle;



@end
