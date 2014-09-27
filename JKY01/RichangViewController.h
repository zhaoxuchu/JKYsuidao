//
//  RichangViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-25.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RiChangDAC.h"

@interface RichangViewController : UIViewController
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
@property (strong, nonatomic) IBOutlet UILabel *lblzhaoming;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong;


@property (strong, nonatomic) IBOutlet UILabel *lblSortA1;
@property (strong, nonatomic) IBOutlet UILabel *lblSortA2;
@property (strong, nonatomic) IBOutlet UILabel *lblSortA3;
@property (strong, nonatomic) IBOutlet UILabel *lblSortA4;
@property (strong, nonatomic) IBOutlet UILabel *lblSortA5;
@property (strong, nonatomic) IBOutlet UILabel *lblSortB1;
@property (strong, nonatomic) IBOutlet UILabel *lblSortB2;
@property (strong, nonatomic) IBOutlet UILabel *lblSortB3;
@property (strong, nonatomic) IBOutlet UILabel *lblSortB4;
@property (strong, nonatomic) IBOutlet UILabel *lblSortC1;
@property (strong, nonatomic) IBOutlet UILabel *lblSortC2;
@property (strong, nonatomic) IBOutlet UILabel *lblSortC3;
@property (strong, nonatomic) IBOutlet UILabel *lblSortC4;
@property (strong, nonatomic) IBOutlet UILabel *lblSortC5;
@property (strong, nonatomic) IBOutlet UILabel *lblSortC6;
@property (strong, nonatomic) IBOutlet UILabel *lblSortC7;
@property (strong, nonatomic) IBOutlet UILabel *lblSortC8;
@property (strong, nonatomic) IBOutlet UILabel *lblSortD1;
@property (strong, nonatomic) IBOutlet UILabel *lblSortD2;
@property (strong, nonatomic) IBOutlet UILabel *lblSortD3;
@property (strong, nonatomic) IBOutlet UILabel *lblSortD4;
@property (strong, nonatomic) IBOutlet UILabel *lblSortD5;


@property (strong, nonatomic) IBOutlet UILabel *lblgaoyaA;
@property (strong, nonatomic) IBOutlet UILabel *lbldiyaA;
@property (strong, nonatomic) IBOutlet UILabel *lblepsA;
@property (strong, nonatomic) IBOutlet UILabel *lblchaiyouA;
@property (strong, nonatomic) IBOutlet UILabel *lblPeidianA;
@property (strong, nonatomic) IBOutlet UILabel *lblSuidaoB;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaotongxinhaoB;
@property (strong, nonatomic) IBOutlet UILabel *lblDongwailudengB;
@property (strong, nonatomic) IBOutlet UILabel *lblLiangduB;
@property (strong, nonatomic) IBOutlet UILabel *lblSheliuC;
@property (strong, nonatomic) IBOutlet UILabel *lblFengsufengxiangC;
@property (strong, nonatomic) IBOutlet UILabel *lblCOVIC;
@property (strong, nonatomic) IBOutlet UILabel *lblHuozaiD;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaohuoshuangD;
@property (strong, nonatomic) IBOutlet UILabel *lblFamengD;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofangshuichiD;
@property (strong, nonatomic) IBOutlet UILabel *lblShuibengD;
@property (strong, nonatomic) IBOutlet UILabel *lblHengtongdaoD;
@property (strong, nonatomic) IBOutlet UILabel *lblJingjidianhuaD;
@property (strong, nonatomic) IBOutlet UILabel *lblYingdaoD;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaotongE;
@property (strong, nonatomic) IBOutlet UILabel *lblBiludianshiE;
@property (strong, nonatomic) IBOutlet UILabel *lblKebianxinxiE;
@property (strong, nonatomic) IBOutlet UILabel *lblBendikongzhiE;
@property (strong, nonatomic) IBOutlet UILabel *lblKongzhishiE;

@property (strong, nonatomic) IBOutlet UILabel *lblgaoyacontentA;
@property (strong, nonatomic) IBOutlet UILabel *lbldiyacontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblepscontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblchaiyoucontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblPeidiancontentA;
@property (strong, nonatomic) IBOutlet UILabel *lblSuidaocontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaotongxinhaocontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblDongwailudengcontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblLiangducontentB;
@property (strong, nonatomic) IBOutlet UILabel *lblSheliucontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblFengsufengxiangcontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblCOVIcontentC;
@property (strong, nonatomic) IBOutlet UILabel *lblHuozaicontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaohuoshuangcontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblFamengcontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofangshuichicontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblShuibengcontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblHengtongdaocontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblJingjidianhuacontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblYingdaocontentD;
@property (strong, nonatomic) IBOutlet UILabel *lblJiaotongcontentE;
@property (strong, nonatomic) IBOutlet UILabel *lblBiludianshicontentE;
@property (strong, nonatomic) IBOutlet UILabel *lblKebianxinxicontentE;
@property (strong, nonatomic) IBOutlet UILabel *lblBendikongzhicontentE;
@property (strong, nonatomic) IBOutlet UILabel *lblKongzhishicontentE;



@property (strong, nonatomic) IBOutlet UILabel *lblJianchajieguo;



@property (strong, nonatomic) IBOutlet UISegmentedControl *segGaoyapeidianA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDiyapeidianA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segEpsA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segChaiyouA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segPeidianxiangA;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segSuidaoB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJiaotongB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segDongwaiB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segLiangduB;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segSheliuC;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segFengsuC;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segCOVIC;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segHuozaiD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segXiaohuoshuangD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segFamengD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segXiaofangshuichiD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segShuibengD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segHengtongD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segJingjidianhuaD;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segYingdaoD;
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





























@end
