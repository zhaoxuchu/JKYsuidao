//
//  MenuViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-20.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MenuDelegate<NSObject>
@optional
-(void)selectedCell:(NSString *)cellTitle;
@end

@interface MenuViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    id<MenuDelegate> selctedDelegate;
    
    IBOutlet UITableView *tableview;
}

@property(nonatomic, retain)id<MenuDelegate> selctedDelegate;

// 属性
@property (strong, nonatomic) NSArray *dataList;
@property (strong, nonatomic) NSArray *imageList;




@end
