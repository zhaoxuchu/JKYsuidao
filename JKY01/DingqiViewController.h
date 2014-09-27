//
//  DingqiViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-25.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DingqiDAC.h"

@interface DingqiViewController : UIViewController
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
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfengsheshi;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong;


@property (strong, nonatomic) IBOutlet UILabel *lblSort1;
@property (strong, nonatomic) IBOutlet UILabel *lblSort2;
@property (strong, nonatomic) IBOutlet UILabel *lblSort3;
@property (strong, nonatomic) IBOutlet UILabel *lblSort4;
@property (strong, nonatomic) IBOutlet UILabel *lblSort5;
@property (strong, nonatomic) IBOutlet UILabel *lblSort6;
@property (strong, nonatomic) IBOutlet UILabel *lblSort7;


@property (strong, nonatomic) IBOutlet UILabel *lblDianliA;
@property (strong, nonatomic) IBOutlet UILabel *lblGaoyaA;
@property (strong, nonatomic) IBOutlet UILabel *lblDiyaA;
@property (strong, nonatomic) IBOutlet UILabel *lblEPSA;
@property (strong, nonatomic) IBOutlet UILabel *lblChaiyouA;
@property (strong, nonatomic) IBOutlet UILabel *lblDianxianA;
@property (strong, nonatomic) IBOutlet UILabel *lblJiediA;
@property (strong, nonatomic) IBOutlet UILabel *lblSuidaoB;
@property (strong, nonatomic) IBOutlet UILabel *lblDongwaiB;
@property (strong, nonatomic) IBOutlet UILabel *lblLiangduB;
@property (strong, nonatomic) IBOutlet UILabel *lblZhouliuC;
@property (strong, nonatomic) IBOutlet UILabel *lblSheliuC;
@property (strong, nonatomic) IBOutlet UILabel *lblFengsuC;
@property (strong, nonatomic) IBOutlet UILabel *lblCOVIC;
@property (strong, nonatomic) IBOutlet UILabel *lblFamengD;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofangshuichiD;
@property (strong, nonatomic) IBOutlet UILabel *lblJingjidianhuaD;
@property (strong, nonatomic) IBOutlet UILabel *lblYingdaoD;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaotongE;
@property (strong, nonatomic) IBOutlet UILabel *lblBiludianshiE;
@property (strong, nonatomic) IBOutlet UILabel *lblKebianxinxiE;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankongshiE;

@property (strong, nonatomic) IBOutlet UILabel *lblDianliContentA;
@property (strong, nonatomic) IBOutlet UILabel *lblGaoyaContentA;
@property (strong, nonatomic) IBOutlet UILabel *lblDiyaContentA;
@property (strong, nonatomic) IBOutlet UILabel *lblEPSContentA;
@property (strong, nonatomic) IBOutlet UILabel *lblChaiyouContentA;
@property (strong, nonatomic) IBOutlet UILabel *lblDianxianContentA;
@property (strong, nonatomic) IBOutlet UILabel *lblJiediContentA;
@property (strong, nonatomic) IBOutlet UILabel *lblSuidaoContentB;
@property (strong, nonatomic) IBOutlet UILabel *lblDongwaiContentB;
@property (strong, nonatomic) IBOutlet UILabel *lblLiangduContentB;
@property (strong, nonatomic) IBOutlet UILabel *lblZhouliuContentC;
@property (strong, nonatomic) IBOutlet UILabel *lblSheliuContentC;
@property (strong, nonatomic) IBOutlet UILabel *lblFengsuContentC;
@property (strong, nonatomic) IBOutlet UILabel *lblCOVIContentC;
@property (strong, nonatomic) IBOutlet UILabel *lblFamengContentD;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofangshuichiContentD;
@property (strong, nonatomic) IBOutlet UILabel *lblJingjidianhuaContentD;
@property (strong, nonatomic) IBOutlet UILabel *lblYingdaoContentD;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaotongContentE;
@property (strong, nonatomic) IBOutlet UILabel *lblBiludianshiContentE;
@property (strong, nonatomic) IBOutlet UILabel *lblKebianxinxiContentE;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankongshiContentE;



@property (strong, nonatomic) IBOutlet UISegmentedControl *segDianli;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segGaoyaA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDiyaA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segEPSA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segChaiyouA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDianxianA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiediA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segSuidaoB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDongwaiB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segLiangduB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segZhouliuC;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segSheliuC;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segFengsuC;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segCOVIC;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segFamengD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segXiaofangshuichiD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJingjidianhuaD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segYingdaoD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiaotongE;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segBiludianshiE;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segKebianxinxiE;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiankongshiE;


@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu1;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu2;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu3;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu4;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu5;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu6;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu7;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu8;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu9;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu10;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu11;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu12;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu13;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu14;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu15;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu16;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu17;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu18;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu19;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu20;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu21;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu22;



















































@end
