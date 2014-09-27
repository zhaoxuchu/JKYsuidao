//
//  JiediViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-4-4.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JiediViewController : UIViewController
{
    NSString *strRoadID;
    NSString *strTaskID;
    NSString *strSortID;
    NSString *strTestStation;
    NSString *strTestValue;
    NSString *strRemark;
    NSString *strChecked;
    NSString *strRecord;
    NSString *strCheckAagin;
    NSString *strDate;
    NSString *strAddUser;
    NSString *strAddDate;
    NSString *strUploadflg;
}

@property (strong, nonatomic) IBOutlet UILabel *lblSort1;
@property (strong, nonatomic) IBOutlet UILabel *lblSort2;
@property (strong, nonatomic) IBOutlet UILabel *lblSort3;
@property (strong, nonatomic) IBOutlet UILabel *lblSort4;
@property (strong, nonatomic) IBOutlet UILabel *lblSort5;
@property (strong, nonatomic) IBOutlet UILabel *lblSort6;
@property (strong, nonatomic) IBOutlet UILabel *lblSort7;


@property (strong, nonatomic) IBOutlet UITextField *txtceshi1;
@property (strong, nonatomic) IBOutlet UITextField *txtceshi2;
@property (strong, nonatomic) IBOutlet UITextField *txtceshi3;
@property (strong, nonatomic) IBOutlet UITextField *txtceshi4;
@property (strong, nonatomic) IBOutlet UITextField *txtceshi5;
@property (strong, nonatomic) IBOutlet UITextField *txtceshi6;
@property (strong, nonatomic) IBOutlet UITextField *txtceshi7;

@property (strong, nonatomic) IBOutlet UITextField *ceshizhi1;
@property (strong, nonatomic) IBOutlet UITextField *ceshizhi2;
@property (strong, nonatomic) IBOutlet UITextField *ceshizhi3;
@property (strong, nonatomic) IBOutlet UITextField *ceshizhi4;
@property (strong, nonatomic) IBOutlet UITextField *ceshizhi5;
@property (strong, nonatomic) IBOutlet UITextField *ceshizhi6;
@property (strong, nonatomic) IBOutlet UITextField *ceshizhi7;


@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu1;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu2;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu3;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu4;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu5;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu6;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu7;




@end
