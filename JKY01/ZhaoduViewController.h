//
//  ZhaoduViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-26.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZhaoduDAC.h"

@interface ZhaoduViewController : UIViewController
{
    NSString *strLightTestID;
    NSString *strTunnelID;
    NSString *strTestData;
    NSString *strDuanMian;
    NSString *strCF1;
    NSString *strCF2;
    NSString *strCF3;
    NSString *strCF4;
    NSString *strCF5;
    NSString *strCF6;
    NSString *strCF7;
    NSString *strCF8;
    NSString *strCF9;
    NSString *strCF10;
    NSString *strJieLun;
    NSString *strCheck;
    NSString *strRecord;
    NSString *strCheckAagin;
    NSString *strDate;
    NSString *strAddUser;
    NSString *strAddDate;
    NSString *strTbFlg;
    NSString *strUploadflg;
    NSString *strTaskID;
    
    NSString *strTXQK;
    NSString *strRoadWidth;
    NSString *strCarRWidth;
    NSString *strDesignSpeed;
    NSString *strLightType;
    NSString *strLightHeight;
    NSString *strBDFS;
    NSString *strTestRoad;
    NSString *strTestLength;
    NSString *strLMCL;
}


@property (strong, nonatomic) IBOutlet UILabel *lblLumiankuangdu;
@property (strong, nonatomic) IBOutlet UILabel *lblGuangyuanleixing;
@property (strong, nonatomic) IBOutlet UILabel *lblCeshiduanluo;
@property (strong, nonatomic) IBOutlet UILabel *lblChedaokuangdu;
@property (strong, nonatomic) IBOutlet UILabel *lblDengjuanzhuang;
@property (strong, nonatomic) IBOutlet UILabel *lblChangdu;
@property (strong, nonatomic) IBOutlet UILabel *lblSuidaosheji;
@property (strong, nonatomic) IBOutlet UILabel *lblBudengfangshi;
@property (strong, nonatomic) IBOutlet UILabel *lblLumian;


@property (strong, nonatomic) IBOutlet UITextField *txtLumiankuangdu;
@property (strong, nonatomic) IBOutlet UITextField *txtChedaokuangdu;
@property (strong, nonatomic) IBOutlet UITextField *txtDengjuanzhuang;
@property (strong, nonatomic) IBOutlet UITextField *txtChangdu;
@property (strong, nonatomic) IBOutlet UITextField *txtSuidaosheji;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segGuangyuanleixing;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segCeshiduanluo;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segBudengfangshi;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segLumiancailiao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segTXQK;



@property (strong, nonatomic) IBOutlet UITextField *txt11;
@property (strong, nonatomic) IBOutlet UITextField *txt12;
@property (strong, nonatomic) IBOutlet UITextField *txt13;
@property (strong, nonatomic) IBOutlet UITextField *txt14;
@property (strong, nonatomic) IBOutlet UITextField *txt15;
@property (strong, nonatomic) IBOutlet UITextField *txt16;
@property (strong, nonatomic) IBOutlet UITextField *txt17;
@property (strong, nonatomic) IBOutlet UITextField *txt18;
@property (strong, nonatomic) IBOutlet UITextField *txt19;
@property (strong, nonatomic) IBOutlet UITextField *txt10;

@property (strong, nonatomic) IBOutlet UITextField *txt21;
@property (strong, nonatomic) IBOutlet UITextField *txt22;
@property (strong, nonatomic) IBOutlet UITextField *txt23;
@property (strong, nonatomic) IBOutlet UITextField *txt24;
@property (strong, nonatomic) IBOutlet UITextField *txt25;
@property (strong, nonatomic) IBOutlet UITextField *txt26;
@property (strong, nonatomic) IBOutlet UITextField *txt27;
@property (strong, nonatomic) IBOutlet UITextField *txt28;
@property (strong, nonatomic) IBOutlet UITextField *txt29;
@property (strong, nonatomic) IBOutlet UITextField *txt20;

@property (strong, nonatomic) IBOutlet UITextField *txt31;
@property (strong, nonatomic) IBOutlet UITextField *txt32;
@property (strong, nonatomic) IBOutlet UITextField *txt33;
@property (strong, nonatomic) IBOutlet UITextField *txt34;
@property (strong, nonatomic) IBOutlet UITextField *txt35;
@property (strong, nonatomic) IBOutlet UITextField *txt36;
@property (strong, nonatomic) IBOutlet UITextField *txt37;
@property (strong, nonatomic) IBOutlet UITextField *txt38;
@property (strong, nonatomic) IBOutlet UITextField *txt39;
@property (strong, nonatomic) IBOutlet UITextField *txt30;

@property (strong, nonatomic) IBOutlet UITextField *txt41;
@property (strong, nonatomic) IBOutlet UITextField *txt42;
@property (strong, nonatomic) IBOutlet UITextField *txt43;
@property (strong, nonatomic) IBOutlet UITextField *txt44;
@property (strong, nonatomic) IBOutlet UITextField *txt45;
@property (strong, nonatomic) IBOutlet UITextField *txt46;
@property (strong, nonatomic) IBOutlet UITextField *txt47;
@property (strong, nonatomic) IBOutlet UITextField *txt48;
@property (strong, nonatomic) IBOutlet UITextField *txt49;
@property (strong, nonatomic) IBOutlet UITextField *txt40;

@property (strong, nonatomic) IBOutlet UITextField *txt51;
@property (strong, nonatomic) IBOutlet UITextField *txt52;
@property (strong, nonatomic) IBOutlet UITextField *txt53;
@property (strong, nonatomic) IBOutlet UITextField *txt54;
@property (strong, nonatomic) IBOutlet UITextField *txt55;
@property (strong, nonatomic) IBOutlet UITextField *txt56;
@property (strong, nonatomic) IBOutlet UITextField *txt57;
@property (strong, nonatomic) IBOutlet UITextField *txt58;
@property (strong, nonatomic) IBOutlet UITextField *txt59;
@property (strong, nonatomic) IBOutlet UITextField *txt50;

@property (strong, nonatomic) IBOutlet UITextField *txt61;
@property (strong, nonatomic) IBOutlet UITextField *txt62;
@property (strong, nonatomic) IBOutlet UITextField *txt63;
@property (strong, nonatomic) IBOutlet UITextField *txt64;
@property (strong, nonatomic) IBOutlet UITextField *txt65;
@property (strong, nonatomic) IBOutlet UITextField *txt66;
@property (strong, nonatomic) IBOutlet UITextField *txt67;
@property (strong, nonatomic) IBOutlet UITextField *txt68;
@property (strong, nonatomic) IBOutlet UITextField *txt69;
@property (strong, nonatomic) IBOutlet UITextField *txt60;

@property (strong, nonatomic) IBOutlet UITextField *txt71;
@property (strong, nonatomic) IBOutlet UITextField *txt72;
@property (strong, nonatomic) IBOutlet UITextField *txt73;
@property (strong, nonatomic) IBOutlet UITextField *txt74;
@property (strong, nonatomic) IBOutlet UITextField *txt75;
@property (strong, nonatomic) IBOutlet UITextField *txt76;
@property (strong, nonatomic) IBOutlet UITextField *txt77;
@property (strong, nonatomic) IBOutlet UITextField *txt78;
@property (strong, nonatomic) IBOutlet UITextField *txt79;
@property (strong, nonatomic) IBOutlet UITextField *txt70;

@property (strong, nonatomic) IBOutlet UITextField *txt81;
@property (strong, nonatomic) IBOutlet UITextField *txt82;
@property (strong, nonatomic) IBOutlet UITextField *txt83;
@property (strong, nonatomic) IBOutlet UITextField *txt84;
@property (strong, nonatomic) IBOutlet UITextField *txt85;
@property (strong, nonatomic) IBOutlet UITextField *txt86;
@property (strong, nonatomic) IBOutlet UITextField *txt87;
@property (strong, nonatomic) IBOutlet UITextField *txt88;
@property (strong, nonatomic) IBOutlet UITextField *txt89;
@property (strong, nonatomic) IBOutlet UITextField *txt80;

@property (strong, nonatomic) IBOutlet UITextField *txt91;
@property (strong, nonatomic) IBOutlet UITextField *txt92;
@property (strong, nonatomic) IBOutlet UITextField *txt93;
@property (strong, nonatomic) IBOutlet UITextField *txt94;
@property (strong, nonatomic) IBOutlet UITextField *txt95;
@property (strong, nonatomic) IBOutlet UITextField *txt96;
@property (strong, nonatomic) IBOutlet UITextField *txt97;
@property (strong, nonatomic) IBOutlet UITextField *txt98;
@property (strong, nonatomic) IBOutlet UITextField *txt99;
@property (strong, nonatomic) IBOutlet UITextField *txt90;

@property (strong, nonatomic) IBOutlet UITextField *txt101;
@property (strong, nonatomic) IBOutlet UITextField *txt102;
@property (strong, nonatomic) IBOutlet UITextField *txt103;
@property (strong, nonatomic) IBOutlet UITextField *txt104;
@property (strong, nonatomic) IBOutlet UITextField *txt105;
@property (strong, nonatomic) IBOutlet UITextField *txt106;
@property (strong, nonatomic) IBOutlet UITextField *txt107;
@property (strong, nonatomic) IBOutlet UITextField *txt108;
@property (strong, nonatomic) IBOutlet UITextField *txt109;
@property (strong, nonatomic) IBOutlet UITextField *txt100;

@property (strong, nonatomic) IBOutlet UILabel *lblPingjunzhaodu;
@property (strong, nonatomic) IBOutlet UILabel *lblShejiPinjunliangdu;
@property (strong, nonatomic) IBOutlet UILabel *lblHuansuanliangdu;
@property (strong, nonatomic) IBOutlet UILabel *lblU0;
@property (strong, nonatomic) IBOutlet UILabel *lblU1;

@property (strong, nonatomic) IBOutlet UITextField *txtPinjunzhaodu;
@property (strong, nonatomic) IBOutlet UITextField *txtPinjunsheji;
@property (strong, nonatomic) IBOutlet UITextField *txtHuansuanliangdu;
@property (strong, nonatomic) IBOutlet UITextField *txtU0;
@property (strong, nonatomic) IBOutlet UITextField *txtUL;
@property (strong, nonatomic) IBOutlet UITextField *txtJielun;





























@end
