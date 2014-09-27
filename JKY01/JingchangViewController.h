//
//  JingchangViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-25.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JingchangDAC.h"

@interface JingchangViewController : UIViewController
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
@property (strong, nonatomic) IBOutlet UILabel *lblZhaomingsheshi;
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
@property (strong, nonatomic) IBOutlet UILabel *lblSort8;


@property (strong, nonatomic) IBOutlet UILabel *lblDianlibianyaA;
@property (strong, nonatomic) IBOutlet UILabel *lblGaoyapeidianA;
@property (strong, nonatomic) IBOutlet UILabel *lblDiyapeidianA;
@property (strong, nonatomic) IBOutlet UILabel *lblEPSA;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaoliuwenyaA;
@property (strong, nonatomic) IBOutlet UILabel *lblChaiyoufadianA;
@property (strong, nonatomic) IBOutlet UILabel *lblDongwailudengA;
@property (strong, nonatomic) IBOutlet UILabel *lblDianxiandianlangA;
@property (strong, nonatomic) IBOutlet UILabel *lblSuidaoB;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaotongxinhaoB;
@property (strong, nonatomic) IBOutlet UILabel *lblDongwailudengB;
@property (strong, nonatomic) IBOutlet UILabel *lblLiangduB;
@property (strong, nonatomic) IBOutlet UILabel *lblSheliufengjiB;
@property (strong, nonatomic) IBOutlet UILabel *lblFengsuB;
@property (strong, nonatomic) IBOutlet UILabel *lblCOVIB;
@property (strong, nonatomic) IBOutlet UILabel *lblHuozaiC;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaohuoshuangC;
@property (strong, nonatomic) IBOutlet UILabel *lblFamengC;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofangshuichiC;
@property (strong, nonatomic) IBOutlet UILabel *lblShuibengC;
@property (strong, nonatomic) IBOutlet UILabel *lblHentongdaomengC;
@property (strong, nonatomic) IBOutlet UILabel *lblJingjidianhuaC;
@property (strong, nonatomic) IBOutlet UILabel *lblYingdaosheshiC;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaotongD;
@property (strong, nonatomic) IBOutlet UILabel *lblBiludianshiD;
@property (strong, nonatomic) IBOutlet UILabel *lblKebianxinxiD;
@property (strong, nonatomic) IBOutlet UILabel *lblBendikongzhiD;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankongshiD;


@property (strong, nonatomic) IBOutlet UILabel *lblDianlibianyacontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblGaoyapeidiancontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblDiyapeidiancontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblEPScontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaoliuwenyacontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblChaiyoufadiancontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblDongwailudengcontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblDianxiandianlangcontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblSuidaocontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaotongxinhaocontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblDongwailudengcontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblLiangducontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblSheliufengjicontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblFengsucontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblCOVIcontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblHuozaicontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaohuoshuangcontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblFamengcontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofangshuichicontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblShuibengcontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblHentongdaomengcontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblJingjidianhuacontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblYingdaosheshicontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaotongcontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblBiludianshicontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblKebianxinxicontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblBendikongzhicontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankongshicontentD;


@property (strong, nonatomic) IBOutlet UISegmentedControl *segDianlibianya;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segGaoyapeidian;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDiyapediangui;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segEPSA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiaoliuA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segChaiyouA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDongwaiA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDianxianA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segSuidaoB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiaotongB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDongwaiB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segLiangduB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segSheliujiC;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segFengsuC;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segCOVIC;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segHuozaiD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segXiaohuoD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segFamengD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segXiaofangD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segShuibengD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segHentongdaoD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJingjidianhuaD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segyingdaoD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiaotongE;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segBiludianshiE;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segKebianxinxiE;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segBendikongzhiE;
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
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu23;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu24;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu25;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu26;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu27;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu28;




























@end
