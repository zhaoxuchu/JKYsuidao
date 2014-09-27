//
//  PickerViewController.h
//  JKY01
//
//  Created by 石磊 on 14-9-27.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"

#define FirstComponent 0
#define SubComponent 1
#define ThirdComponent 2

@interface PickerViewController : UIViewController
{
    FMResultSet *resultSet;
    
    NSMutableArray *maryManageunitID;
    NSMutableArray *maryManageunitName;
    
    NSMutableArray *maryRoadID;
    NSMutableArray *maryRoadName;
    
    NSMutableArray *maryTunnelID;
    NSMutableArray *maryTunnelName;
    NSMutableArray *maryCheckStation;
    NSMutableArray *maryProtectUnit;
    NSMutableArray *maryRoadLevel;
    
    
    
}


@property(nonatomic,retain)NSDictionary* dict;
@property(nonatomic,retain)NSArray* pickerArray;
@property(nonatomic,retain)NSArray* subPickerArray;
@property(nonatomic,retain)NSArray* thirdPickerArray;
@property(nonatomic,retain)NSArray* selectArray;
@property (strong, nonatomic) IBOutlet UIPickerView *pickviewManage;

@end
