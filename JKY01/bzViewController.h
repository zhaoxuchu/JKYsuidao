//
//  bzViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-18.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "LoginViewController.h"
#import "MianFromViewController.h"
#import "GongjuViewController.h"
#import "CreateTable.h"
#import "SystemSetViewController.h"
#import "TLAlertView.h"
#import "ClearTableAllData.h"
#import "ErrLog.h"
#import "NetWebServiceRequest.h"
#import "CreateTable.h"


@interface bzViewController : UIViewController<UIPickerViewDataSource , UIPickerViewDelegate>
{
    GongjuViewController *gj;
    FMDatabase *database;
    FMResultSet *resultSet;
    NSMutableArray *maryTaskDric;
}

@property (strong, nonatomic) IBOutlet UIScrollView *sc;
@property (strong, nonatomic) IBOutlet UIButton *btnOK;
@property (strong, nonatomic) IBOutlet UIView *testview;
@property (strong, nonatomic) IBOutlet UITextField *txtName;
@property (strong, nonatomic) IBOutlet UITextField *txtPsd;
@property (strong, nonatomic) NSMutableArray *muAryTask;
@property (strong, nonatomic) IBOutlet UIPickerView *pickviewTask;





@end
