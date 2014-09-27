//
//  WanghaoViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-25.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WanghaoDAC.h"

@interface WanghaoViewController : UIViewController
{
    NSString *strTunnelID;
    NSString *strjianchaType;
    NSString *strSortID;
    NSString *strjianchaPro;
    NSString *strSizeParas;
    NSString *strUnits;
    NSString *strTotalNum;
    NSString *strBadNum;
    NSString *strBadDate;
    NSString *strCompleteRate;
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
@property (strong, nonatomic) IBOutlet UILabel *lblSort25;
@property (strong, nonatomic) IBOutlet UILabel *lblSort26;
@property (strong, nonatomic) IBOutlet UILabel *lblSort27;
@property (strong, nonatomic) IBOutlet UILabel *lblSort28;
@property (strong, nonatomic) IBOutlet UILabel *lblSort29;
@property (strong, nonatomic) IBOutlet UILabel *lblSort30;


#pragma mark - 供配电------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian1;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian2;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian3;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian4;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian5;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian6;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian7;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian8;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian9;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian10;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian11;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian12;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian13;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian14;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian15;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian16;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian17;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian18;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian19;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian20;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian21;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian22;
@property (strong, nonatomic) IBOutlet UILabel *lblGongpeidian23;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA9;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA10;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA11;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA12;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA13;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA14;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA15;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA16;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA17;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA18;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA19;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA20;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA21;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA22;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA23;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB9;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB10;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB11;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB12;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB13;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB14;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB15;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB16;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB17;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB18;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB19;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB20;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB21;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB22;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB23;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD9;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD10;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD11;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD12;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD13;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD14;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD15;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD16;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD17;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD18;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD19;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD20;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD21;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD22;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD23;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE9;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE10;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE11;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE12;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE13;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE14;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE15;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE16;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE17;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE18;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE19;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE20;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE21;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE22;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE23;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC9;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC10;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC11;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC12;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC13;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC14;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC15;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC16;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC17;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC18;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC19;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC20;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC21;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC22;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC23;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF9;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF10;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF11;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF12;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF13;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF14;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF15;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF16;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF17;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF18;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF19;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF20;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF21;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF22;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF23;



#pragma mark - 通风设施--------------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng1;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng2;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng3;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng4;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng5;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng6;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng7;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA7;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB7;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD7;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE7;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC7;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF7;

#pragma mark - 监控设施--------------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong1;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong2;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong3;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong4;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong5;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong6;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong7;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong8;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong9;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong10;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong11;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong12;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong13;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong14;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong15;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong16;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong17;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong18;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong19;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong20;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong21;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong22;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong23;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong24;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong25;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong26;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong27;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong28;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong29;
@property (strong, nonatomic) IBOutlet UILabel *lblJiankong30;

@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA1;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA2;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA3;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA4;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA5;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA6;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA7;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA8;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA9;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA10;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA11;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA12;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA13;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA14;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA15;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA16;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA17;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA18;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA19;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA20;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA21;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA22;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA23;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA24;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA25;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA26;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA27;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA28;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA29;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongA30;

@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB1;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB2;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB3;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB4;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB5;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB6;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB7;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB8;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB9;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB10;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB11;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB12;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB13;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB14;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB15;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB16;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB17;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB18;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB19;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB20;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB21;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB22;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB23;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB24;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB25;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB26;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB27;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB28;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB29;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongB30;

@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD1;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD2;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD3;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD4;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD5;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD6;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD7;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD8;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD9;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD10;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD11;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD12;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD13;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD14;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD15;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD16;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD17;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD18;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD19;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD20;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD21;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD22;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD23;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD24;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD25;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD26;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD27;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD28;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD29;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongD30;

@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE1;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE2;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE3;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE4;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE5;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE6;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE7;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE8;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE9;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE10;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE11;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE12;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE13;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE14;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE15;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE16;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE17;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE18;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE19;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE20;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE21;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE22;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE23;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE24;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE25;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE26;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE27;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE28;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE29;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongE30;

@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC1;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC2;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC3;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC4;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC5;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC6;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC7;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC8;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC9;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC10;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC11;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC12;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC13;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC14;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC15;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC16;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC17;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC18;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC19;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC20;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC21;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC22;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC23;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC24;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC25;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC26;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC27;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC28;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC29;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongC30;

@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF1;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF2;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF3;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF4;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF5;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF6;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF7;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF8;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF9;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF10;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF11;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF12;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF13;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF14;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF15;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF16;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF17;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF18;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF19;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF20;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF21;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF22;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF23;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF24;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF25;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF26;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF27;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF28;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF29;
@property (strong, nonatomic) IBOutlet UITextField *txtJiankongF30;

#pragma mark - 照明设施--------------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming1;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming2;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming3;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming4;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming5;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming6;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming7;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming8;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming9;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming10;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming11;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming12;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming13;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming14;
@property (strong, nonatomic) IBOutlet UILabel *lblZhaoming15;

@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA1;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA2;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA3;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA4;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA5;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA6;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA7;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA8;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA9;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA10;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA11;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA12;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA13;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA14;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingA15;

@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB1;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB2;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB3;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB4;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB5;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB6;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB7;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB8;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB9;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB10;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB11;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB12;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB13;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB14;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingB15;

@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD1;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD2;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD3;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD4;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD5;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD6;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD7;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD8;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD9;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD10;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD11;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD12;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD13;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD14;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingD15;

@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE1;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE2;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE3;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE4;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE5;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE6;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE7;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE8;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE9;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE10;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE11;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE12;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE13;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE14;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingE15;

@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC1;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC2;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC3;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC4;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC5;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC6;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC7;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC8;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC9;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC10;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC11;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC12;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC13;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC14;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingC15;

@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF1;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF2;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF3;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF4;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF5;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF6;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF7;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF8;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF9;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF10;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF11;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF12;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF13;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF14;
@property (strong, nonatomic) IBOutlet UITextField *txtZhaomingF15;

#pragma mark - 消防设施--------------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang1;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang2;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang3;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang4;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang5;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang6;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang7;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang8;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang9;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang10;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang11;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang12;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang13;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang14;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang15;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang16;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang17;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang18;
@property (strong, nonatomic) IBOutlet UILabel *lblXiaofang19;

@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA1;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA2;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA3;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA4;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA5;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA6;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA7;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA8;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA9;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA10;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA11;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA12;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA13;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA14;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA15;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA16;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA17;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA18;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangA19;

@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB1;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB2;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB3;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB4;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB5;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB6;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB7;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB8;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB9;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB10;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB11;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB12;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB13;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB14;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB15;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB16;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB17;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB18;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangB19;

@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD1;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD2;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD3;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD4;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD5;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD6;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD7;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD8;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD9;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD10;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD11;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD12;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD13;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD14;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD15;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD16;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD17;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD18;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangD19;

@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE1;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE2;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE3;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE4;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE5;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE6;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE7;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE8;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE9;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE10;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE11;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE12;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE13;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE14;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE15;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE16;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE17;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE18;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangE19;

@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC1;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC2;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC3;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC4;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC5;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC6;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC7;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC8;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC9;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC10;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC11;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC12;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC13;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC14;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC15;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC16;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC17;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC18;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangC19;

@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF1;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF2;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF3;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF4;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF5;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF6;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF7;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF8;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF9;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF10;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF11;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF12;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF13;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF14;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF15;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF16;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF17;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF18;
@property (strong, nonatomic) IBOutlet UITextField *txtXiaofangF19;































































@end
