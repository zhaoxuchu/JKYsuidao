//
//  SystemSetViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-6.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TLAlertView.h"
#import "ClearTableAllData.h"
#import "ErrLog.h"
#import "NetWebServiceRequest.h"
#import "CreateTable.h"



@interface SystemSetViewController : UIViewController
{
    FMDatabase *database;
    FMResultSet *resultSet;
    int cnt;
}

@end
