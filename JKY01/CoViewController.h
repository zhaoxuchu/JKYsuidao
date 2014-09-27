//
//  CoViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-26.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OtherDAC.h"
#import "DBInfo.h"

@interface CoViewController : UIViewController
{
    NSString *strTunnelID;
    NSString *strAddUser;
    NSString *strAddDate;
    NSString *strCheck;
    NSString *strRecord;
    NSString *strCheckAagin;
    NSString *strDate;
    NSString *strTbFlg;
    NSString *strUploadflg;
    NSString *strTaskID;
    NSString *strType;
    
    NSString *strOtherTestID;
    NSString *strStation;
    NSString *strCO1;
    NSString *strCO2;
    NSString *strCO3;
    NSString *strCO4;
    NSString *strCO5;
    NSString *strAvg;
    NSString *strflg;
    
    NSString *strTestStation;
    NSString *strJDXZ;
    NSString *strDesignValue;
    NSString *strTrueValue;
    NSString *strRemark;
}


#pragma mark - co------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UISegmentedControl *segCOweizhi1;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segCOweizhi2;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segCOweizhi3;
@property (strong, nonatomic) IBOutlet UITextField *txtCo11;
@property (strong, nonatomic) IBOutlet UITextField *txtCo12;
@property (strong, nonatomic) IBOutlet UITextField *txtCo13;
@property (strong, nonatomic) IBOutlet UITextField *txtCo14;
@property (strong, nonatomic) IBOutlet UITextField *txtCo15;
@property (strong, nonatomic) IBOutlet UITextField *txtCo16;
@property (strong, nonatomic) IBOutlet UITextField *txtCo21;
@property (strong, nonatomic) IBOutlet UITextField *txtCo22;
@property (strong, nonatomic) IBOutlet UITextField *txtCo23;
@property (strong, nonatomic) IBOutlet UITextField *txtCo24;
@property (strong, nonatomic) IBOutlet UITextField *txtCo25;
@property (strong, nonatomic) IBOutlet UITextField *txtCo26;
@property (strong, nonatomic) IBOutlet UITextField *txtCo31;
@property (strong, nonatomic) IBOutlet UITextField *txtCo32;
@property (strong, nonatomic) IBOutlet UITextField *txtCo33;
@property (strong, nonatomic) IBOutlet UITextField *txtCo34;
@property (strong, nonatomic) IBOutlet UITextField *txtCo35;
@property (strong, nonatomic) IBOutlet UITextField *txtCo36;


#pragma mark - yanwu------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UISegmentedControl *segYanwuweizhi1;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segYanwuweizhi2;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segYanwuweizhi3;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu11;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu12;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu13;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu14;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu15;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu16;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu21;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu22;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu23;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu24;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu25;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu26;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu31;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu32;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu33;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu34;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu35;
@property (strong, nonatomic) IBOutlet UITextField *txtyanwu36;


#pragma mark - 接地电阻------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblSort1;
@property (strong, nonatomic) IBOutlet UILabel *lblSort2;
@property (strong, nonatomic) IBOutlet UILabel *lblSort3;
@property (strong, nonatomic) IBOutlet UILabel *lblSort4;
@property (strong, nonatomic) IBOutlet UILabel *lblSort5;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiediceshi1;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiediceshi2;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiediceshi3;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiediceshi4;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiediceshi5;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiedixingzhi1;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiedixingzhi2;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiedixingzhi3;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiedixingzhi4;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiedixingzhi5;
@property (strong, nonatomic) IBOutlet UITextField *txtShejizhi1;
@property (strong, nonatomic) IBOutlet UITextField *txtShejizhi2;
@property (strong, nonatomic) IBOutlet UITextField *txtShejizhi3;
@property (strong, nonatomic) IBOutlet UITextField *txtShejizhi4;
@property (strong, nonatomic) IBOutlet UITextField *txtShejizhi5;
@property (strong, nonatomic) IBOutlet UITextField *txtshice1;
@property (strong, nonatomic) IBOutlet UITextField *txtshice2;
@property (strong, nonatomic) IBOutlet UITextField *txtshice3;
@property (strong, nonatomic) IBOutlet UITextField *txtshice4;
@property (strong, nonatomic) IBOutlet UITextField *txtshice5;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu1;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu2;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu3;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu4;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu5;






















#pragma mark - 接地------------------------------------------------------------------------------------------------------------------------------------









@end
