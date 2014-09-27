//
//  RukouViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-4-3.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RukouViewController : UIViewController
{
    NSString *strRoadID;
    NSString *strTaskID;
    NSString *strSortID;
    NSString *strCheckPro;
    NSString *strUnit;
    NSString *Num1;
    NSString *Num2;
    NSString *Num3;
    NSString *Num4;
    NSString *Num5;
    NSString *Num6;
    NSString *strRemark;
    NSString *strChecked;
    NSString *strRecord;
    NSString *strCheckAagin;
    NSString *strDate;
    NSString *strAddUser;
    NSString *strAddDate;
    NSString *strFlg;
    NSString *strUploadflg;
}

@property (strong, nonatomic) IBOutlet UILabel *lblSort1;
@property (strong, nonatomic) IBOutlet UILabel *lblSort2;
@property (strong, nonatomic) IBOutlet UILabel *lblSort3;
@property (strong, nonatomic) IBOutlet UILabel *lblSort4;
@property (strong, nonatomic) IBOutlet UILabel *lblSort5;
@property (strong, nonatomic) IBOutlet UILabel *lblSort6;
@property (strong, nonatomic) IBOutlet UILabel *lblSort7;
@property (strong, nonatomic) IBOutlet UILabel *lblSort8;
@property (strong, nonatomic) IBOutlet UILabel *lblSort9;
@property (strong, nonatomic) IBOutlet UILabel *lblSort10;
@property (strong, nonatomic) IBOutlet UILabel *lblSort11;
@property (strong, nonatomic) IBOutlet UILabel *lblSort12;
@property (strong, nonatomic) IBOutlet UILabel *lblSort13;
@property (strong, nonatomic) IBOutlet UILabel *lblSort14;
@property (strong, nonatomic) IBOutlet UILabel *lblSort15;
@property (strong, nonatomic) IBOutlet UILabel *lblSort16;
@property (strong, nonatomic) IBOutlet UILabel *lblSort17;
@property (strong, nonatomic) IBOutlet UILabel *lblSort18;
@property (strong, nonatomic) IBOutlet UILabel *lblSort19;
@property (strong, nonatomic) IBOutlet UILabel *lblSort20;
@property (strong, nonatomic) IBOutlet UILabel *lblSort21;
@property (strong, nonatomic) IBOutlet UILabel *lblSort22;
@property (strong, nonatomic) IBOutlet UILabel *lblSort23;
@property (strong, nonatomic) IBOutlet UILabel *lblSort24;

//--------------------------1-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblshoufeiting;
@property (strong, nonatomic) IBOutlet UITextField *txt11;
@property (strong, nonatomic) IBOutlet UITextField *txt12;
@property (strong, nonatomic) IBOutlet UITextField *txt13;
@property (strong, nonatomic) IBOutlet UITextField *txt14;
@property (strong, nonatomic) IBOutlet UITextField *txt15;
@property (strong, nonatomic) IBOutlet UITextField *txt16;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu1;


//--------------------------2-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lbltingneipeidianxiang;
@property (strong, nonatomic) IBOutlet UITextField *txt21;
@property (strong, nonatomic) IBOutlet UITextField *txt22;
@property (strong, nonatomic) IBOutlet UITextField *txt23;
@property (strong, nonatomic) IBOutlet UITextField *txt24;
@property (strong, nonatomic) IBOutlet UITextField *txt25;
@property (strong, nonatomic) IBOutlet UITextField *txt26;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu2;

//--------------------------3-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lbltingneishiyingqi;
@property (strong, nonatomic) IBOutlet UITextField *txt31;
@property (strong, nonatomic) IBOutlet UITextField *txt32;
@property (strong, nonatomic) IBOutlet UITextField *txt33;
@property (strong, nonatomic) IBOutlet UITextField *txt34;
@property (strong, nonatomic) IBOutlet UITextField *txt35;
@property (strong, nonatomic) IBOutlet UITextField *txt36;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu3;


//--------------------------4-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lbltingneishoufeidaoji;
@property (strong, nonatomic) IBOutlet UITextField *txt41;
@property (strong, nonatomic) IBOutlet UITextField *txt42;
@property (strong, nonatomic) IBOutlet UITextField *txt43;
@property (strong, nonatomic) IBOutlet UITextField *txt44;
@property (strong, nonatomic) IBOutlet UITextField *txt45;
@property (strong, nonatomic) IBOutlet UITextField *txt46;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu4;


//--------------------------5-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblshoufeixianshiqi;
@property (strong, nonatomic) IBOutlet UITextField *txt51;
@property (strong, nonatomic) IBOutlet UITextField *txt52;
@property (strong, nonatomic) IBOutlet UITextField *txt53;
@property (strong, nonatomic) IBOutlet UITextField *txt54;
@property (strong, nonatomic) IBOutlet UITextField *txt55;
@property (strong, nonatomic) IBOutlet UITextField *txt56;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu5;


//--------------------------6-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblshoufeijianpang;
@property (strong, nonatomic) IBOutlet UITextField *txt61;
@property (strong, nonatomic) IBOutlet UITextField *txt62;
@property (strong, nonatomic) IBOutlet UITextField *txt63;
@property (strong, nonatomic) IBOutlet UITextField *txt64;
@property (strong, nonatomic) IBOutlet UITextField *txt65;
@property (strong, nonatomic) IBOutlet UITextField *txt66;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu6;


//--------------------------7-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lbldukaqi;
@property (strong, nonatomic) IBOutlet UITextField *txt71;
@property (strong, nonatomic) IBOutlet UITextField *txt72;
@property (strong, nonatomic) IBOutlet UITextField *txt73;
@property (strong, nonatomic) IBOutlet UITextField *txt74;
@property (strong, nonatomic) IBOutlet UITextField *txt75;
@property (strong, nonatomic) IBOutlet UITextField *txt76;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu7;


//--------------------------8-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblduijiangdianhua;
@property (strong, nonatomic) IBOutlet UITextField *txt81;
@property (strong, nonatomic) IBOutlet UITextField *txt82;
@property (strong, nonatomic) IBOutlet UITextField *txt83;
@property (strong, nonatomic) IBOutlet UITextField *txt84;
@property (strong, nonatomic) IBOutlet UITextField *txt85;
@property (strong, nonatomic) IBOutlet UITextField *txt86;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu8;


//--------------------------9-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lbljiaotabaojingqi;
@property (strong, nonatomic) IBOutlet UITextField *txt91;
@property (strong, nonatomic) IBOutlet UITextField *txt92;
@property (strong, nonatomic) IBOutlet UITextField *txt93;
@property (strong, nonatomic) IBOutlet UITextField *txt94;
@property (strong, nonatomic) IBOutlet UITextField *txt95;
@property (strong, nonatomic) IBOutlet UITextField *txt96;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu9;


//--------------------------10-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblshengguangbaojingqi;
@property (strong, nonatomic) IBOutlet UITextField *txt101;
@property (strong, nonatomic) IBOutlet UITextField *txt102;
@property (strong, nonatomic) IBOutlet UITextField *txt103;
@property (strong, nonatomic) IBOutlet UITextField *txt104;
@property (strong, nonatomic) IBOutlet UITextField *txt105;
@property (strong, nonatomic) IBOutlet UITextField *txt106;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu10;


//--------------------------11-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lbltingneishexiangji;
@property (strong, nonatomic) IBOutlet UITextField *txt111;
@property (strong, nonatomic) IBOutlet UITextField *txt112;
@property (strong, nonatomic) IBOutlet UITextField *txt113;
@property (strong, nonatomic) IBOutlet UITextField *txt114;
@property (strong, nonatomic) IBOutlet UITextField *txt115;
@property (strong, nonatomic) IBOutlet UITextField *txt116;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu11;


//--------------------------12-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblchedaoshexiangji;
@property (strong, nonatomic) IBOutlet UITextField *txt121;
@property (strong, nonatomic) IBOutlet UITextField *txt122;
@property (strong, nonatomic) IBOutlet UITextField *txt123;
@property (strong, nonatomic) IBOutlet UITextField *txt124;
@property (strong, nonatomic) IBOutlet UITextField *txt125;
@property (strong, nonatomic) IBOutlet UITextField *txt126;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu12;


//--------------------------13-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblchepaishibie;
@property (strong, nonatomic) IBOutlet UITextField *txt131;
@property (strong, nonatomic) IBOutlet UITextField *txt132;
@property (strong, nonatomic) IBOutlet UITextField *txt133;
@property (strong, nonatomic) IBOutlet UITextField *txt134;
@property (strong, nonatomic) IBOutlet UITextField *txt135;
@property (strong, nonatomic) IBOutlet UITextField *txt136;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu13;


//--------------------------14-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblchedaolangganji;
@property (strong, nonatomic) IBOutlet UITextField *txt141;
@property (strong, nonatomic) IBOutlet UITextField *txt142;
@property (strong, nonatomic) IBOutlet UITextField *txt143;
@property (strong, nonatomic) IBOutlet UITextField *txt144;
@property (strong, nonatomic) IBOutlet UITextField *txt145;
@property (strong, nonatomic) IBOutlet UITextField *txt146;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu14;


//--------------------------15-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblcheliangjiance;
@property (strong, nonatomic) IBOutlet UITextField *txt151;
@property (strong, nonatomic) IBOutlet UITextField *txt152;
@property (strong, nonatomic) IBOutlet UITextField *txt153;
@property (strong, nonatomic) IBOutlet UITextField *txt154;
@property (strong, nonatomic) IBOutlet UITextField *txt155;
@property (strong, nonatomic) IBOutlet UITextField *txt156;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu15;



//--------------------------16-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblshoudong;
@property (strong, nonatomic) IBOutlet UITextField *txt161;
@property (strong, nonatomic) IBOutlet UITextField *txt162;
@property (strong, nonatomic) IBOutlet UITextField *txt163;
@property (strong, nonatomic) IBOutlet UITextField *txt164;
@property (strong, nonatomic) IBOutlet UITextField *txt165;
@property (strong, nonatomic) IBOutlet UITextField *txt166;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu16;


//--------------------------17-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblwudeng;
@property (strong, nonatomic) IBOutlet UITextField *txt171;
@property (strong, nonatomic) IBOutlet UITextField *txt172;
@property (strong, nonatomic) IBOutlet UITextField *txt173;
@property (strong, nonatomic) IBOutlet UITextField *txt174;
@property (strong, nonatomic) IBOutlet UITextField *txt175;
@property (strong, nonatomic) IBOutlet UITextField *txt176;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu17;


//--------------------------18-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblchedaotongxingdeng;
@property (strong, nonatomic) IBOutlet UITextField *txt181;
@property (strong, nonatomic) IBOutlet UITextField *txt182;
@property (strong, nonatomic) IBOutlet UITextField *txt183;
@property (strong, nonatomic) IBOutlet UITextField *txt184;
@property (strong, nonatomic) IBOutlet UITextField *txt185;
@property (strong, nonatomic) IBOutlet UITextField *txt186;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu18;


//--------------------------19-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblchedaozhishideng;
@property (strong, nonatomic) IBOutlet UITextField *txt191;
@property (strong, nonatomic) IBOutlet UITextField *txt192;
@property (strong, nonatomic) IBOutlet UITextField *txt193;
@property (strong, nonatomic) IBOutlet UITextField *txt194;
@property (strong, nonatomic) IBOutlet UITextField *txt195;
@property (strong, nonatomic) IBOutlet UITextField *txt196;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu19;


//--------------------------20-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblfakaji;
@property (strong, nonatomic) IBOutlet UITextField *txt201;
@property (strong, nonatomic) IBOutlet UITextField *txt202;
@property (strong, nonatomic) IBOutlet UITextField *txt203;
@property (strong, nonatomic) IBOutlet UITextField *txt204;
@property (strong, nonatomic) IBOutlet UITextField *txt205;
@property (strong, nonatomic) IBOutlet UITextField *txt206;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu20;


//--------------------------21-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblETC;
@property (strong, nonatomic) IBOutlet UITextField *txt211;
@property (strong, nonatomic) IBOutlet UITextField *txt212;
@property (strong, nonatomic) IBOutlet UITextField *txt213;
@property (strong, nonatomic) IBOutlet UITextField *txt214;
@property (strong, nonatomic) IBOutlet UITextField *txt215;
@property (strong, nonatomic) IBOutlet UITextField *txt216;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu21;


//--------------------------22-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblETCweibo;
@property (strong, nonatomic) IBOutlet UITextField *txt221;
@property (strong, nonatomic) IBOutlet UITextField *txt222;
@property (strong, nonatomic) IBOutlet UITextField *txt223;
@property (strong, nonatomic) IBOutlet UITextField *txt224;
@property (strong, nonatomic) IBOutlet UITextField *txt225;
@property (strong, nonatomic) IBOutlet UITextField *txt226;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu22;


//--------------------------23-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblETCshoufei;
@property (strong, nonatomic) IBOutlet UITextField *txt231;
@property (strong, nonatomic) IBOutlet UITextField *txt232;
@property (strong, nonatomic) IBOutlet UITextField *txt233;
@property (strong, nonatomic) IBOutlet UITextField *txt234;
@property (strong, nonatomic) IBOutlet UITextField *txt235;
@property (strong, nonatomic) IBOutlet UITextField *txt236;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu23;


//--------------------------24-----------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblETCkongtiao;
@property (strong, nonatomic) IBOutlet UITextField *txt241;
@property (strong, nonatomic) IBOutlet UITextField *txt242;
@property (strong, nonatomic) IBOutlet UITextField *txt243;
@property (strong, nonatomic) IBOutlet UITextField *txt244;
@property (strong, nonatomic) IBOutlet UITextField *txt245;
@property (strong, nonatomic) IBOutlet UITextField *txt246;
@property (strong, nonatomic) IBOutlet UITextField *txtbeizhu24;



@end
