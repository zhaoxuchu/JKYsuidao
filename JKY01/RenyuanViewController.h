//
//  RenyuanViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-24.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CheckerViewController.h"

@interface RenyuanViewController : UIViewController
{
    NSString *strTunnelID;
    NSString *strSortID;
    NSString *strCheckProName;
    NSString *strTypeResult1;
    NSString *strTypeResult2;
    NSString *strTypeResult3;
    NSString *strExplainName;
    NSString *strExplainContent;
    NSString *strRemark;
    NSString *strAddUser;
    NSString *strChecked;
    NSString *strRecord;
    NSString *strCheckAgain;
    NSString *strAddDate;
    NSString *strTbFlg;
    NSString *strUploadflg;
    
    CheckerViewController *checker;
}

@property (strong, nonatomic) IBOutlet UILabel *lblSort1;
@property (strong, nonatomic) IBOutlet UILabel *lblSort2;
@property (strong, nonatomic) IBOutlet UILabel *lblSort3;
@property (strong, nonatomic) IBOutlet UILabel *lblSort4;
@property (strong, nonatomic) IBOutlet UILabel *lblSort5;
@property (strong, nonatomic) IBOutlet UILabel *lblSort6;
@property (strong, nonatomic) IBOutlet UILabel *lblSort7;
@property (strong, nonatomic) IBOutlet UILabel *lblSort8;


@property (strong, nonatomic) IBOutlet UILabel *lbljishudangan;
@property (strong, nonatomic) IBOutlet UILabel *lblyanghurenyuan;
@property (strong, nonatomic) IBOutlet UILabel *lblgangwei;
@property (strong, nonatomic) IBOutlet UILabel *lblyanghujihua;
@property (strong, nonatomic) IBOutlet UILabel *lblyanghurenyuanshanggang;
@property (strong, nonatomic) IBOutlet UILabel *lblteshuzhuangmeng;
@property (strong, nonatomic) IBOutlet UILabel *lblteshuleixing;
@property (strong, nonatomic) IBOutlet UILabel *lblqita;


@property (strong, nonatomic) IBOutlet UISegmentedControl *segjishu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segYanghurenyuan;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segGangwei;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segYanghujihua;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segYanghurenyuanshanggang;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segTeshuzhuangmeng;
@property (strong, nonatomic) IBOutlet UILabel *lblDiangongzuoye;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofangyuan;
@property (strong, nonatomic) IBOutlet UITextField *txtDiangong;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofang;
@property (strong, nonatomic) IBOutlet UILabel *lblType3;
@property (strong, nonatomic) IBOutlet UITextField *txtQita;



@property (strong, nonatomic) IBOutlet UILabel *lblDangan;
@property (strong, nonatomic) IBOutlet UILabel *lblRenyuandazhi;
@property (strong, nonatomic) IBOutlet UILabel *lblZerenzhi;
@property (strong, nonatomic) IBOutlet UILabel *lblJihua;
@property (strong, nonatomic) IBOutlet UILabel *lblPeixun;
@property (strong, nonatomic) IBOutlet UILabel *lblPeixun2;




@property (strong, nonatomic) IBOutlet UITextField *txtDangan;
@property (strong, nonatomic) IBOutlet UITextField *txtRenyuandazhi;
@property (strong, nonatomic) IBOutlet UITextField *txtZerenzhi;
@property (strong, nonatomic) IBOutlet UITextField *txtJihuamingcheng;
@property (strong, nonatomic) IBOutlet UITextField *txtPeixun1;
@property (strong, nonatomic) IBOutlet UITextField *txtPeixun2;


@property (strong, nonatomic) IBOutlet UILabel *lblBeizhu;



@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu1;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu2;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu3;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu4;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu5;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu6;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu8;



@end
