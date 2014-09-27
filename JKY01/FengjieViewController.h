//
//  FengjieViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-25.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FengjieDAC.h"

@interface FengjieViewController : UIViewController
{
    NSString *strTunnelID;
    NSString *strFacilityType;
    NSString *strSortID;
    NSString *strFacility;
    NSString *strCheckContent;
    NSString *strRecordAll;
    NSString *strCheckNotAll;
    NSString *strRecordNo;
    NSString *strRemark;
    NSString *strCheck;
    NSString *strRecord;
    NSString *strCheckAagin;
    NSString *strDate;
    NSString *strAddUser;
    NSString *strAddDate;
    NSString *strTbFlg;
    NSString *strflg;
    NSString *strUploadflg;
    NSString *strTaskID;
}




@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfengsheshi;


@property (strong, nonatomic) IBOutlet UILabel *lblSort1;
@property (strong, nonatomic) IBOutlet UILabel *lblSort2;


@property (strong, nonatomic) IBOutlet UILabel *lblGaoya;
@property (strong, nonatomic) IBOutlet UILabel *lblDiya;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng;
@property (strong, nonatomic) IBOutlet UILabel *lblGaoyaContent;
@property (strong, nonatomic) IBOutlet UILabel *lblDiyaContent;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfengContent;


@property (strong, nonatomic) IBOutlet UISegmentedControl *segGaoya;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDiya;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segTongfeng;


@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu1;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu2;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu3;





@end
