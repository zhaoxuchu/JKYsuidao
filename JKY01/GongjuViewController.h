//
//  GongjuViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-24.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CheckerViewController.h"

@interface GongjuViewController : UIViewController
{
    NSString *strTunnelID;
    NSString *strSortID;
    NSString *strCheckProType;
    NSString *strCheckProName;
    NSString *strSettingNum;
    NSString *strUnit;
    NSString *strIsGood;
    NSString *strIsBad;
    NSString *strBadContent;
    NSString *strRemark;
    NSString *strCheck;
    NSString *strRecord;
    NSString *strCheckAagin;
    NSString *strDate;
    NSString *strAddUser;
    NSString *strAddDate;
    NSString *strTbFlg;
    NSString *strUploadflg;
    NSString *strTaskID;
    
    CheckerViewController *checker;
}



@property (strong, nonatomic) IBOutlet UILabel *lblSort1;
@property (strong, nonatomic) IBOutlet UILabel *lblSort2;
@property (strong, nonatomic) IBOutlet UILabel *lblSort3;
@property (strong, nonatomic) IBOutlet UILabel *lblSort4;
@property (strong, nonatomic) IBOutlet UILabel *lblSort5;
@property (strong, nonatomic) IBOutlet UILabel *lblSort6;
@property (strong, nonatomic) IBOutlet UILabel *lblSort7;



@property (strong, nonatomic) IBOutlet UILabel *lblDiangonggongju;
@property (strong, nonatomic) IBOutlet UILabel *lblgaoyachaozuo;
@property (strong, nonatomic) IBOutlet UILabel *lblanquanfanghu;
@property (strong, nonatomic) IBOutlet UILabel *lblceshiyiqi;
@property (strong, nonatomic) IBOutlet UILabel *lblgaokongzuoye;
@property (strong, nonatomic) IBOutlet UILabel *lblqitaleibie;
@property (strong, nonatomic) IBOutlet UILabel *lblqingjiegongju;



@property (strong, nonatomic) IBOutlet UILabel *lblgongjuxiang;
@property (strong, nonatomic) IBOutlet UILabel *lblxiaofangyuanzheng;
@property (strong, nonatomic) IBOutlet UILabel *lblyandianbi;
@property (strong, nonatomic) IBOutlet UILabel *lblgaoyaduanlu;
@property (strong, nonatomic) IBOutlet UILabel *lbljuyuanxie;
@property (strong, nonatomic) IBOutlet UILabel *lbljueyuanbang;
@property (strong, nonatomic) IBOutlet UILabel *lbljueyuanshoutao;
@property (strong, nonatomic) IBOutlet UILabel *lblfangguangfu;
@property (strong, nonatomic) IBOutlet UILabel *lblanquanmao;
@property (strong, nonatomic) IBOutlet UILabel *lblhumujing;
@property (strong, nonatomic) IBOutlet UILabel *lblxiaofanggongju;
@property (strong, nonatomic) IBOutlet UILabel *lblyingjixiang;
@property (strong, nonatomic) IBOutlet UILabel *lblwangyongbiao;
@property (strong, nonatomic) IBOutlet UILabel *lbljueyuanbiao;
@property (strong, nonatomic) IBOutlet UILabel *lbljiedidianzu;
@property (strong, nonatomic) IBOutlet UILabel *lblzhaoduji;
@property (strong, nonatomic) IBOutlet UILabel *lblfengsuji;
@property (strong, nonatomic) IBOutlet UILabel *lblshengjiji;
@property (strong, nonatomic) IBOutlet UILabel *lblwenduceliang;
@property (strong, nonatomic) IBOutlet UILabel *lblqita;
@property (strong, nonatomic) IBOutlet UILabel *lblanquandai;
@property (strong, nonatomic) IBOutlet UILabel *lblgaokongzuoyeche;
@property (strong, nonatomic) IBOutlet UILabel *lblshoudiantong;
@property (strong, nonatomic) IBOutlet UITextField *txtOther;
@property (strong, nonatomic) IBOutlet UITextField *txtqingjiegongju;

@property (strong, nonatomic) IBOutlet UITextField *txtdiangonggongju;
@property (strong, nonatomic) IBOutlet UITextField *txtxiaofangyuan;
@property (strong, nonatomic) IBOutlet UITextField *txtgaoyayandian;
@property (strong, nonatomic) IBOutlet UITextField *txtgaoyanduanlu;
@property (strong, nonatomic) IBOutlet UITextField *txtjueyuanxie;
@property (strong, nonatomic) IBOutlet UITextField *txtjueyuanbang;
@property (strong, nonatomic) IBOutlet UITextField *txtjueyuanshoutao;
@property (strong, nonatomic) IBOutlet UITextField *txtfangguangfu;
@property (strong, nonatomic) IBOutlet UITextField *txtanquanmao;
@property (strong, nonatomic) IBOutlet UITextField *txthumujing;
@property (strong, nonatomic) IBOutlet UITextField *txtxiaofanggongju;
@property (strong, nonatomic) IBOutlet UITextField *txtyingjixiang;
@property (strong, nonatomic) IBOutlet UITextField *txtwangyongbiao;
@property (strong, nonatomic) IBOutlet UITextField *txtjueyaunbiao;
@property (strong, nonatomic) IBOutlet UITextField *txtjiedidianzu;
@property (strong, nonatomic) IBOutlet UITextField *txtzhaoduji;
@property (strong, nonatomic) IBOutlet UITextField *txtfengsuji;
@property (strong, nonatomic) IBOutlet UITextField *txtshengjiji;
@property (strong, nonatomic) IBOutlet UITextField *txtwendingceliang;
@property (strong, nonatomic) IBOutlet UITextField *txtqita;
@property (strong, nonatomic) IBOutlet UITextField *txtgaokongzuoye;
@property (strong, nonatomic) IBOutlet UITextField *txtgaokongzuoyeche;
@property (strong, nonatomic) IBOutlet UITextField *txtshoudiantong;
@property (strong, nonatomic) IBOutlet UITextField *txtOtherContent;
@property (strong, nonatomic) IBOutlet UITextField *txtqingjiegongjuContent;
@property (strong, nonatomic) IBOutlet UILabel *lblDangwei;


@property (strong, nonatomic) IBOutlet UISegmentedControl *segDiangong;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segXiaofangyuan;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seggaoyayandian;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seggaoyaduanlu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segjueyuanxie;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segjueyuanbang;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segjueyuanshoutao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segfangguangfu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seganquanmao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segfumujing;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segxiaofanggongju;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segyingjixiang;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segwangyongbiao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segjueyuanbiao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segjiedidianzu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segzhaodusheji;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segfengsuji;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segfengjiji;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segwengduceliang;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seganquandai;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seggaokongzuoye;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segshoudiantong;


@property (strong, nonatomic) IBOutlet UILabel *lblbeizhu;


@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu1;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu2;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu3;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu4;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu5;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu6;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu7;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu8;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu9;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu10;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu11;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu12;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu13;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu14;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu15;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu16;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu17;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu18;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu19;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu20;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu21;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu22;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu23;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu24;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu25;

// 后面多添加了一个其他
@property (strong, nonatomic) IBOutlet UITextField *txtqita1;
@property (strong, nonatomic) IBOutlet UITextField *txtqita2;
@property (strong, nonatomic) IBOutlet UITextField *txtqita3;
@property (strong, nonatomic) IBOutlet UITextField *txtqita5;





















































@end
