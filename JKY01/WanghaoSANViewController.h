//
//  WanghaoSANViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-4-4.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WanghaoDAC.h"

@interface WanghaoSANViewController : UIViewController
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
@property (strong, nonatomic) IBOutlet UILabel *lblSort31;
@property (strong, nonatomic) IBOutlet UILabel *lblSort32;
@property (strong, nonatomic) IBOutlet UILabel *lblSort33;
@property (strong, nonatomic) IBOutlet UILabel *lblSort34;
@property (strong, nonatomic) IBOutlet UILabel *lblSort35;
@property (strong, nonatomic) IBOutlet UILabel *lblSort36;
@property (strong, nonatomic) IBOutlet UILabel *lblSort37;
@property (strong, nonatomic) IBOutlet UILabel *lblSort38;
@property (strong, nonatomic) IBOutlet UILabel *lblSort39;
@property (strong, nonatomic) IBOutlet UILabel *lblSort40;

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


@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianA9;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianB9;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianD9;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianE9;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianC9;

@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF1;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF2;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF3;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF4;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF5;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF6;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF7;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF8;
@property (strong, nonatomic) IBOutlet UITextField *txtgongpeidianF9;

#pragma mark - 通风设施--------------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng1;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng2;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng3;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng4;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng5;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng6;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng7;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng8;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng9;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng10;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng11;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng12;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng13;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng14;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng15;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng16;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng17;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng18;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng19;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng20;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng21;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng22;
@property (strong, nonatomic) IBOutlet UILabel *lblTongfeng23;


@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA15;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA16;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA17;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA18;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA19;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA20;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA21;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA22;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengA23;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB15;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB16;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB17;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB18;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB19;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB20;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB21;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB22;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengB23;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD15;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD16;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD17;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD18;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD19;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD20;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD21;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD22;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengD23;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE15;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE16;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE17;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE18;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE19;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE20;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE21;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE22;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengE23;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC15;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC16;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC17;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC18;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC19;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC20;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC21;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC22;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengC23;

@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF15;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF16;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF17;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF18;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF19;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF20;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF21;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF22;
@property (strong, nonatomic) IBOutlet UITextField *txtTongfengF23;


#pragma mark - 通信设施--------------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing1;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing2;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing3;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing4;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing5;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing6;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing7;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing8;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing9;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing10;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing11;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing12;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing13;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing14;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing15;


@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingA15;

@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingB15;


@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingD15;


@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingE15;


@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingC15;


@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF1;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF2;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF3;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF4;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF5;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF6;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF7;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF8;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF9;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF10;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF11;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF12;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF13;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF14;
@property (strong, nonatomic) IBOutlet UITextField *txtTongxingF15;


#pragma mark - 收费设施--------------------------------------------------------------------------------------------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei1;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei2;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei3;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei4;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei5;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei6;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei7;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei8;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei9;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei10;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei11;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei12;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei13;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei14;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei15;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei16;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei17;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei18;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei19;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei20;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei21;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei22;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei23;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei24;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei25;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei26;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei27;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei28;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei29;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei30;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei31;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei32;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei33;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei34;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei35;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei36;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei37;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei38;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei39;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei40;


@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA1;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA2;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA3;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA4;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA5;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA6;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA7;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA8;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA9;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA10;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA11;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA12;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA13;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA14;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA15;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA16;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA17;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA18;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA19;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA20;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA21;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA22;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA23;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA24;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA25;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA26;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA27;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA28;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA29;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA30;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA31;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA32;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA33;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA34;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA35;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA36;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA37;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA38;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA39;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiA40;


@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB1;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB2;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB3;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB4;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB5;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB6;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB7;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB8;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB9;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB10;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB11;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB12;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB13;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB14;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB15;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB16;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB17;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB18;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB19;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB20;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB21;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB22;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB23;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB24;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB25;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB26;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB27;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB28;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB29;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB30;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB31;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB32;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB33;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB34;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB35;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB36;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB37;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB38;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB39;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiB40;


@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD1;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD2;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD3;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD4;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD5;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD6;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD7;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD8;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD9;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD10;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD11;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD12;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD13;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD14;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD15;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD16;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD17;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD18;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD19;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD20;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD21;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD22;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD23;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD24;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD25;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD26;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD27;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD28;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD29;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD30;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD31;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD32;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD33;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD34;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD35;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD36;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD37;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD38;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD39;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiD40;

@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE1;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE2;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE3;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE4;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE5;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE6;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE7;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE8;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE9;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE10;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE11;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE12;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE13;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE14;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE15;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE16;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE17;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE18;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE19;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE20;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE21;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE22;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE23;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE24;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE25;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE26;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE27;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE28;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE29;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE30;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE31;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE32;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE33;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE34;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE35;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE36;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE37;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE38;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE39;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiE40;

@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC1;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC2;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC3;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC4;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC5;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC6;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC7;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC8;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC9;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC10;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC11;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC12;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC13;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC14;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC15;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC16;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC17;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC18;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC19;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC20;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC21;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC22;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC23;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC24;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC25;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC26;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC27;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC28;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC29;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC30;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC31;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC32;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC33;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC34;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC35;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC36;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC37;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC38;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC39;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiC40;

@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF1;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF2;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF3;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF4;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF5;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF6;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF7;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF8;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF9;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF10;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF11;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF12;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF13;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF14;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF15;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF16;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF17;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF18;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF19;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF20;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF21;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF22;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF23;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF24;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF25;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF26;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF27;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF28;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF29;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF30;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF31;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF32;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF33;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF34;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF35;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF36;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF37;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF38;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF39;
@property (strong, nonatomic) IBOutlet UITextField *txtshoufeiF40;






































@end
