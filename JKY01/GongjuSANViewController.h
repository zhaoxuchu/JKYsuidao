//
//  GongjuSANViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-31.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GongjuSANViewController : UIViewController
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
}

@property (strong, nonatomic) IBOutlet UILabel *lblSort1;
@property (strong, nonatomic) IBOutlet UILabel *lblSort2;
@property (strong, nonatomic) IBOutlet UILabel *lblSort3;
@property (strong, nonatomic) IBOutlet UILabel *lblSort4;


@property (strong, nonatomic) IBOutlet UILabel *lblDiyapeidian;
@property (strong, nonatomic) IBOutlet UILabel *lblSandaxitong;
@property (strong, nonatomic) IBOutlet UILabel *lblQingjiegongju;
@property (strong, nonatomic) IBOutlet UILabel *lblQita;
@property (strong, nonatomic) IBOutlet UILabel *lblbeizhu;


@property (strong, nonatomic) IBOutlet UILabel *lblgongjuxiang;
@property (strong, nonatomic) IBOutlet UILabel *lblyandianbi;
@property (strong, nonatomic) IBOutlet UILabel *lbljuyuanxie;
@property (strong, nonatomic) IBOutlet UILabel *lbljuyuanbang;
@property (strong, nonatomic) IBOutlet UILabel *lbljueyuanshoutao;
@property (strong, nonatomic) IBOutlet UILabel *lblyingjixiang;
@property (strong, nonatomic) IBOutlet UILabel *lblqita;

@property (strong, nonatomic) IBOutlet UITextField *txtDiangonggongju;
@property (strong, nonatomic) IBOutlet UITextField *txtyandianbi;
@property (strong, nonatomic) IBOutlet UITextField *txtjueyuanxie;
@property (strong, nonatomic) IBOutlet UITextField *txtjueyuanbang;
@property (strong, nonatomic) IBOutlet UITextField *txtjueyuanshoutao;
@property (strong, nonatomic) IBOutlet UITextField *txtyingjixiang;
@property (strong, nonatomic) IBOutlet UITextField *txtqita;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segDiangonggongju;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segyandianbi;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segjueyuanxie;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segjueyuanbang;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segjueyuanshoutao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segyingjixiang;

//----------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblwangyongbiao;
@property (strong, nonatomic) IBOutlet UILabel *lblJueyuanbiao;
@property (strong, nonatomic) IBOutlet UILabel *lblJiedidianzu;
@property (strong, nonatomic) IBOutlet UILabel *lblzhaoduji;
@property (strong, nonatomic) IBOutlet UILabel *lblLiangduji;
@property (strong, nonatomic) IBOutlet UILabel *lblGuanggonglvji;

@property (strong, nonatomic) IBOutlet UITextField *txtwangyongbiao;
@property (strong, nonatomic) IBOutlet UITextField *txtjueyuanbiao;
@property (strong, nonatomic) IBOutlet UITextField *txtjiedidianzu;
@property (strong, nonatomic) IBOutlet UITextField *txtzhaoduji;
@property (strong, nonatomic) IBOutlet UITextField *txtliangduji;
@property (strong, nonatomic) IBOutlet UITextField *txtguanggonglvji;
@property (strong, nonatomic) IBOutlet UITextField *txtQita2;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segwangyongbiao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segjueyuanbiao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segjiedidianzu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segzhaoduji;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segliangduji;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segguanggonglvji;

//-----------------------------------------------------------------------------------------------

@property (strong, nonatomic) IBOutlet UITextField *txtQingjiegongju;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segQingjiegongju;

//-----------------------------------------------------------------------------------------------

@property (strong, nonatomic) IBOutlet UITextField *txtqita41;
@property (strong, nonatomic) IBOutlet UITextField *txtqita42;
@property (strong, nonatomic) IBOutlet UITextField *txtqita43;

@property (strong, nonatomic) IBOutlet UISegmentedControl *segqita41;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segqita42;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segqita43;



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































@end
