//
//  WanghaoSANViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-4-4.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "WanghaoSANViewController.h"

@interface WanghaoSANViewController ()

@end

@implementation WanghaoSANViewController
#pragma mark - 供配电
@synthesize lblSort1,lblSort2,lblSort3,lblSort4,lblSort5,lblSort6,lblSort7,lblSort8,lblSort9,lblSort10,lblSort11,lblSort12,lblSort13,lblSort14,lblSort15,lblSort16,lblSort17,lblSort18,lblSort19,lblSort20,lblSort21,lblSort22,lblSort23,lblSort24,lblSort25,lblSort26,lblSort27,lblSort28,lblSort29,lblSort30,lblSort31,lblSort32,lblSort33,lblSort34,lblSort35,lblSort36,lblSort37,lblSort38,lblSort39,lblSort40;
@synthesize lblGongpeidian1,
lblGongpeidian2,
lblGongpeidian3,
lblGongpeidian4,
lblGongpeidian5,
lblGongpeidian6,
lblGongpeidian7,
lblGongpeidian8,
lblGongpeidian9;
@synthesize txtgongpeidianA1,txtgongpeidianA2,txtgongpeidianA3,txtgongpeidianA4,txtgongpeidianA5,txtgongpeidianA6,txtgongpeidianA7,txtgongpeidianA8,txtgongpeidianA9;
@synthesize txtgongpeidianB1,txtgongpeidianB2,txtgongpeidianB3,txtgongpeidianB4,txtgongpeidianB5,txtgongpeidianB6,txtgongpeidianB7,txtgongpeidianB8,txtgongpeidianB9;
@synthesize txtgongpeidianC1,txtgongpeidianC2,txtgongpeidianC3,txtgongpeidianC4,txtgongpeidianC5,txtgongpeidianC6,txtgongpeidianC7,txtgongpeidianC8,txtgongpeidianC9;
@synthesize txtgongpeidianD1,txtgongpeidianD2,txtgongpeidianD3,txtgongpeidianD4,txtgongpeidianD5,txtgongpeidianD6,txtgongpeidianD7,txtgongpeidianD8,txtgongpeidianD9;
@synthesize txtgongpeidianE1,txtgongpeidianE2,txtgongpeidianE3,txtgongpeidianE4,txtgongpeidianE5,txtgongpeidianE6,txtgongpeidianE7,txtgongpeidianE8,txtgongpeidianE9;
@synthesize txtgongpeidianF1,txtgongpeidianF2,txtgongpeidianF3,txtgongpeidianF4,txtgongpeidianF5,txtgongpeidianF6,txtgongpeidianF7,txtgongpeidianF8,txtgongpeidianF9;
#pragma mark - 通风设施
@synthesize lblTongfeng1 , lblTongfeng2 , lblTongfeng3 , lblTongfeng4 , lblTongfeng5, lblTongfeng6, lblTongfeng7,lblTongfeng8,lblTongfeng9,lblTongfeng10,lblTongfeng11 , lblTongfeng12 , lblTongfeng13 , lblTongfeng14 , lblTongfeng15, lblTongfeng16, lblTongfeng17,lblTongfeng18,lblTongfeng19,lblTongfeng20,lblTongfeng21,lblTongfeng22,lblTongfeng23;
@synthesize txtTongfengA1,txtTongfengA2,txtTongfengA3,txtTongfengA4,txtTongfengA5,txtTongfengA6,txtTongfengA7,txtTongfengA8,txtTongfengA9,txtTongfengA10,txtTongfengA11,txtTongfengA12,txtTongfengA13,txtTongfengA14,txtTongfengA15,txtTongfengA16,txtTongfengA17,txtTongfengA18,txtTongfengA19,txtTongfengA20,txtTongfengA21,txtTongfengA22,txtTongfengA23;
@synthesize txtTongfengB1,txtTongfengB2,txtTongfengB3,txtTongfengB4,txtTongfengB5,txtTongfengB6,txtTongfengB7,txtTongfengB8,txtTongfengB9,txtTongfengB10,txtTongfengB11,txtTongfengB12,txtTongfengB13,txtTongfengB14,txtTongfengB15,txtTongfengB16,txtTongfengB17,txtTongfengB18,txtTongfengB19,txtTongfengB20,txtTongfengB21,txtTongfengB22,txtTongfengB23;
@synthesize txtTongfengD1,txtTongfengD2,txtTongfengD3,txtTongfengD4,txtTongfengD5,txtTongfengD6,txtTongfengD7,txtTongfengD8,txtTongfengD9,txtTongfengD10,txtTongfengD11,txtTongfengD12,txtTongfengD13,txtTongfengD14,txtTongfengD15,txtTongfengD16,txtTongfengD17,txtTongfengD18,txtTongfengD19,txtTongfengD20,txtTongfengD21,txtTongfengD22,txtTongfengD23;
@synthesize txtTongfengE1,txtTongfengE2,txtTongfengE3,txtTongfengE4,txtTongfengE5,txtTongfengE6,txtTongfengE7,txtTongfengE8,txtTongfengE9,txtTongfengE10,txtTongfengE11,txtTongfengE12,txtTongfengE13,txtTongfengE14,txtTongfengE15,txtTongfengE16,txtTongfengE17,txtTongfengE18,txtTongfengE19,txtTongfengE20,txtTongfengE21,txtTongfengE22,txtTongfengE23;
@synthesize txtTongfengC1,txtTongfengC2,txtTongfengC3,txtTongfengC4,txtTongfengC5,txtTongfengC6,txtTongfengC7,txtTongfengC8,txtTongfengC9,txtTongfengC10,txtTongfengC11,txtTongfengC12,txtTongfengC13,txtTongfengC14,txtTongfengC15,txtTongfengC16,txtTongfengC17,txtTongfengC18,txtTongfengC19,txtTongfengC20,txtTongfengC21,txtTongfengC22,txtTongfengC23;
@synthesize txtTongfengF1,txtTongfengF2,txtTongfengF3,txtTongfengF4,txtTongfengF5,txtTongfengF6,txtTongfengF7,txtTongfengF8,txtTongfengF9,txtTongfengF10,txtTongfengF11,txtTongfengF12,txtTongfengF13,txtTongfengF14,txtTongfengF15,txtTongfengF16,txtTongfengF17,txtTongfengF18,txtTongfengF19,txtTongfengF20,txtTongfengF21,txtTongfengF22,txtTongfengF23;

#pragma mark - 通信设施--------------------------------------------------------------------------------------------------------------------------------------------
@synthesize lblTongxing1,
lblTongxing2,
lblTongxing3,
lblTongxing4,
lblTongxing5,
lblTongxing6,
lblTongxing7,
lblTongxing8,
lblTongxing9,
lblTongxing10,
lblTongxing11,
lblTongxing12,
lblTongxing13,
lblTongxing14,
lblTongxing15;
@synthesize txtTongxingA1,
txtTongxingA2,
txtTongxingA3,
txtTongxingA4,
txtTongxingA5,
txtTongxingA6,
txtTongxingA7,
txtTongxingA8,
txtTongxingA9,
txtTongxingA10,
txtTongxingA11,
txtTongxingA12,
txtTongxingA13,
txtTongxingA14,
txtTongxingA15;
@synthesize txtTongxingB1,
txtTongxingB2,
txtTongxingB3,
txtTongxingB4,
txtTongxingB5,
txtTongxingB6,
txtTongxingB7,
txtTongxingB8,
txtTongxingB9,
txtTongxingB10,
txtTongxingB11,
txtTongxingB12,
txtTongxingB13,
txtTongxingB14,
txtTongxingB15;
@synthesize txtTongxingD1,
txtTongxingD2,
txtTongxingD3,
txtTongxingD4,
txtTongxingD5,
txtTongxingD6,
txtTongxingD7,
txtTongxingD8,
txtTongxingD9,
txtTongxingD10,
txtTongxingD11,
txtTongxingD12,
txtTongxingD13,
txtTongxingD14,
txtTongxingD15;
@synthesize txtTongxingE1,
txtTongxingE2,
txtTongxingE3,
txtTongxingE4,
txtTongxingE5,
txtTongxingE6,
txtTongxingE7,
txtTongxingE8,
txtTongxingE9,
txtTongxingE10,
txtTongxingE11,
txtTongxingE12,
txtTongxingE13,
txtTongxingE14,
txtTongxingE15;
@synthesize txtTongxingC1,
txtTongxingC2,
txtTongxingC3,
txtTongxingC4,
txtTongxingC5,
txtTongxingC6,
txtTongxingC7,
txtTongxingC8,
txtTongxingC9,
txtTongxingC10,
txtTongxingC11,
txtTongxingC12,
txtTongxingC13,
txtTongxingC14,
txtTongxingC15;
@synthesize txtTongxingF1,
txtTongxingF2,
txtTongxingF3,
txtTongxingF4,
txtTongxingF5,
txtTongxingF6,
txtTongxingF7,
txtTongxingF8,
txtTongxingF9,
txtTongxingF10,
txtTongxingF11,
txtTongxingF12,
txtTongxingF13,
txtTongxingF14,
txtTongxingF15;
#pragma mark - 收费设施--------------------------------------------------------------------------------------------------------------------------------------------
@synthesize lblShoufei1,
lblShoufei2,
lblShoufei3,
lblShoufei4,
lblShoufei5,
lblShoufei6,
lblShoufei7,
lblShoufei8,
lblShoufei9,
lblShoufei10,
lblShoufei11,
lblShoufei12,
lblShoufei13,
lblShoufei14,
lblShoufei15,
lblShoufei16,
lblShoufei17,
lblShoufei18,
lblShoufei19,
lblShoufei20,
lblShoufei21,
lblShoufei22,
lblShoufei23,
lblShoufei24,
lblShoufei25,
lblShoufei26,
lblShoufei27,
lblShoufei28,
lblShoufei29,
lblShoufei30,
lblShoufei31,
lblShoufei32,
lblShoufei33,
lblShoufei34,
lblShoufei35,
lblShoufei36,
lblShoufei37,
lblShoufei38,
lblShoufei39,
lblShoufei40;
@synthesize txtshoufeiA1,
txtshoufeiA2,
txtshoufeiA3,
txtshoufeiA4,
txtshoufeiA5,
txtshoufeiA6,
txtshoufeiA7,
txtshoufeiA8,
txtshoufeiA9,
txtshoufeiA10,
txtshoufeiA11,
txtshoufeiA12,
txtshoufeiA13,
txtshoufeiA14,
txtshoufeiA15,
txtshoufeiA16,
txtshoufeiA17,
txtshoufeiA18,
txtshoufeiA19,
txtshoufeiA20,
txtshoufeiA21,
txtshoufeiA22,
txtshoufeiA23,
txtshoufeiA24,
txtshoufeiA25,
txtshoufeiA26,
txtshoufeiA27,
txtshoufeiA28,
txtshoufeiA29,
txtshoufeiA30,
txtshoufeiA31,
txtshoufeiA32,
txtshoufeiA33,
txtshoufeiA34,
txtshoufeiA35,
txtshoufeiA36,
txtshoufeiA37,
txtshoufeiA38,
txtshoufeiA39,
txtshoufeiA40;
@synthesize txtshoufeiB1,
txtshoufeiB2,
txtshoufeiB3,
txtshoufeiB4,
txtshoufeiB5,
txtshoufeiB6,
txtshoufeiB7,
txtshoufeiB8,
txtshoufeiB9,
txtshoufeiB10,
txtshoufeiB11,
txtshoufeiB12,
txtshoufeiB13,
txtshoufeiB14,
txtshoufeiB15,
txtshoufeiB16,
txtshoufeiB17,
txtshoufeiB18,
txtshoufeiB19,
txtshoufeiB20,
txtshoufeiB21,
txtshoufeiB22,
txtshoufeiB23,
txtshoufeiB24,
txtshoufeiB25,
txtshoufeiB26,
txtshoufeiB27,
txtshoufeiB28,
txtshoufeiB29,
txtshoufeiB30,
txtshoufeiB31,
txtshoufeiB32,
txtshoufeiB33,
txtshoufeiB34,
txtshoufeiB35,
txtshoufeiB36,
txtshoufeiB37,
txtshoufeiB38,
txtshoufeiB39,
txtshoufeiB40;
@synthesize txtshoufeiD1,
txtshoufeiD2,
txtshoufeiD3,
txtshoufeiD4,
txtshoufeiD5,
txtshoufeiD6,
txtshoufeiD7,
txtshoufeiD8,
txtshoufeiD9,
txtshoufeiD10,
txtshoufeiD11,
txtshoufeiD12,
txtshoufeiD13,
txtshoufeiD14,
txtshoufeiD15,
txtshoufeiD16,
txtshoufeiD17,
txtshoufeiD18,
txtshoufeiD19,
txtshoufeiD20,
txtshoufeiD21,
txtshoufeiD22,
txtshoufeiD23,
txtshoufeiD24,
txtshoufeiD25,
txtshoufeiD26,
txtshoufeiD27,
txtshoufeiD28,
txtshoufeiD29,
txtshoufeiD30,
txtshoufeiD31,
txtshoufeiD32,
txtshoufeiD33,
txtshoufeiD34,
txtshoufeiD35,
txtshoufeiD36,
txtshoufeiD37,
txtshoufeiD38,
txtshoufeiD39,
txtshoufeiD40;
@synthesize txtshoufeiE1,
txtshoufeiE2,
txtshoufeiE3,
txtshoufeiE4,
txtshoufeiE5,
txtshoufeiE6,
txtshoufeiE7,
txtshoufeiE8,
txtshoufeiE9,
txtshoufeiE10,
txtshoufeiE11,
txtshoufeiE12,
txtshoufeiE13,
txtshoufeiE14,
txtshoufeiE15,
txtshoufeiE16,
txtshoufeiE17,
txtshoufeiE18,
txtshoufeiE19,
txtshoufeiE20,
txtshoufeiE21,
txtshoufeiE22,
txtshoufeiE23,
txtshoufeiE24,
txtshoufeiE25,
txtshoufeiE26,
txtshoufeiE27,
txtshoufeiE28,
txtshoufeiE29,
txtshoufeiE30,
txtshoufeiE31,
txtshoufeiE32,
txtshoufeiE33,
txtshoufeiE34,
txtshoufeiE35,
txtshoufeiE36,
txtshoufeiE37,
txtshoufeiE38,
txtshoufeiE39,
txtshoufeiE40;
@synthesize txtshoufeiC1,
txtshoufeiC2,
txtshoufeiC3,
txtshoufeiC4,
txtshoufeiC5,
txtshoufeiC6,
txtshoufeiC7,
txtshoufeiC8,
txtshoufeiC9,
txtshoufeiC10,
txtshoufeiC11,
txtshoufeiC12,
txtshoufeiC13,
txtshoufeiC14,
txtshoufeiC15,
txtshoufeiC16,
txtshoufeiC17,
txtshoufeiC18,
txtshoufeiC19,
txtshoufeiC20,
txtshoufeiC21,
txtshoufeiC22,
txtshoufeiC23,
txtshoufeiC24,
txtshoufeiC25,
txtshoufeiC26,
txtshoufeiC27,
txtshoufeiC28,
txtshoufeiC29,
txtshoufeiC30,
txtshoufeiC31,
txtshoufeiC32,
txtshoufeiC33,
txtshoufeiC34,
txtshoufeiC35,
txtshoufeiC36,
txtshoufeiC37,
txtshoufeiC38,
txtshoufeiC39,
txtshoufeiC40;
@synthesize txtshoufeiF1,
txtshoufeiF2,
txtshoufeiF3,
txtshoufeiF4,
txtshoufeiF5,
txtshoufeiF6,
txtshoufeiF7,
txtshoufeiF8,
txtshoufeiF9,
txtshoufeiF10,
txtshoufeiF11,
txtshoufeiF12,
txtshoufeiF13,
txtshoufeiF14,
txtshoufeiF15,
txtshoufeiF16,
txtshoufeiF17,
txtshoufeiF18,
txtshoufeiF19,
txtshoufeiF20,
txtshoufeiF21,
txtshoufeiF22,
txtshoufeiF23,
txtshoufeiF24,
txtshoufeiF25,
txtshoufeiF26,
txtshoufeiF27,
txtshoufeiF28,
txtshoufeiF29,
txtshoufeiF30,
txtshoufeiF31,
txtshoufeiF32,
txtshoufeiF33,
txtshoufeiF34,
txtshoufeiF35,
txtshoufeiF36,
txtshoufeiF37,
txtshoufeiF38,
txtshoufeiF39,
txtshoufeiF40;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSave:(UIButton *)sender {
    
    if ([self AddData1] &&
        [self AddData2] &&
        [self AddData3] &&
        [self AddData4])
    {
        
    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[ErrLog GetOptTitle]  message:[ErrLog Getexception] delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];

}



// 添加第一组数据
-(Boolean)AddData1
{
    // 1
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort1.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian1.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA1.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB1.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD1.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE1.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC1.text];
    strRemark = [self CheckEmpty:txtgongpeidianF1.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    WanghaoDAC *rc = [WanghaoDAC alloc];
    Boolean add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 2
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort2.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian2.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA2.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB2.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD2.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE2.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC2.text];
    strRemark = [self CheckEmpty:txtgongpeidianF2.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 3
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort3.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian3.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA3.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB3.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD3.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE3.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC3.text];
    strRemark = [self CheckEmpty:txtgongpeidianF3.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 4
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort4.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian4.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA4.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB4.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD4.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE4.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC4.text];
    strRemark = [self CheckEmpty:txtgongpeidianF4.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 5
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort5.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian5.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA5.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB5.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD5.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE5.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC5.text];
    strRemark = [self CheckEmpty:txtgongpeidianF5.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 6
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort6.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian6.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA6.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB6.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD6.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE6.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC6.text];
    strRemark = [self CheckEmpty:txtgongpeidianF6.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 7
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort7.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian7.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA7.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB7.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD7.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE7.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC7.text];
    strRemark = [self CheckEmpty:txtgongpeidianF7.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 8
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort8.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian8.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA8.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB8.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD8.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE8.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC8.text];
    strRemark = [self CheckEmpty:txtgongpeidianF8.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 9
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort9.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian9.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA9.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB9.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD9.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE9.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC9.text];
    strRemark = [self CheckEmpty:txtgongpeidianF9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return add;
    
}


// 添加第二组数据
-(Boolean)AddData2
{
    // 1
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort1.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng1.text];
    strSizeParas =[self CheckEmpty:txtTongfengA1.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB1.text];
    strBadNum = [self CheckEmpty:txtTongfengD1.text];
    strBadDate =[self CheckEmpty:txtTongfengE1.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC1.text];
    strRemark = [self CheckEmpty:txtTongfengF1.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    WanghaoDAC *rc = [WanghaoDAC alloc];
    Boolean add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 2
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort2.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng2.text];
    strSizeParas =[self CheckEmpty:txtTongfengA2.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB2.text];
    strBadNum = [self CheckEmpty:txtTongfengD2.text];
    strBadDate =[self CheckEmpty:txtTongfengE2.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC2.text];
    strRemark = [self CheckEmpty:txtTongfengF2.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 3
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort3.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng3.text];
    strSizeParas =[self CheckEmpty:txtTongfengA3.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB3.text];
    strBadNum = [self CheckEmpty:txtTongfengD3.text];
    strBadDate =[self CheckEmpty:txtTongfengE3.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC3.text];
    strRemark = [self CheckEmpty:txtTongfengF3.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 4
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort4.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng4.text];
    strSizeParas =[self CheckEmpty:txtTongfengA4.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB4.text];
    strBadNum = [self CheckEmpty:txtTongfengD4.text];
    strBadDate =[self CheckEmpty:txtTongfengE4.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC4.text];
    strRemark = [self CheckEmpty:txtTongfengF4.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 5
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort5.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng5.text];
    strSizeParas =[self CheckEmpty:txtTongfengA5.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB5.text];
    strBadNum = [self CheckEmpty:txtTongfengD5.text];
    strBadDate =[self CheckEmpty:txtTongfengE5.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC5.text];
    strRemark = [self CheckEmpty:txtTongfengF5.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 6
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort6.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng6.text];
    strSizeParas =[self CheckEmpty:txtTongfengA6.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB6.text];
    strBadNum = [self CheckEmpty:txtTongfengD6.text];
    strBadDate =[self CheckEmpty:txtTongfengE6.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC6.text];
    strRemark = [self CheckEmpty:txtTongfengF6.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 7
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort7.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng7.text];
    strSizeParas =[self CheckEmpty:txtTongfengA7.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB7.text];
    strBadNum = [self CheckEmpty:txtTongfengD7.text];
    strBadDate =[self CheckEmpty:txtTongfengE7.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC7.text];
    strRemark = [self CheckEmpty:txtTongfengF7.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 8
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort8.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng8.text];
    strSizeParas =[self CheckEmpty:txtTongfengA8.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB8.text];
    strBadNum = [self CheckEmpty:txtTongfengD8.text];
    strBadDate =[self CheckEmpty:txtTongfengE8.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC8.text];
    strRemark = [self CheckEmpty:txtTongfengF8.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 9
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort9.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng9.text];
    strSizeParas =[self CheckEmpty:txtTongfengA9.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB9.text];
    strBadNum = [self CheckEmpty:txtTongfengD9.text];
    strBadDate =[self CheckEmpty:txtTongfengE9.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC9.text];
    strRemark = [self CheckEmpty:txtTongfengF9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 10
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort10.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng10.text];
    strSizeParas =[self CheckEmpty:txtTongfengA10.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB10.text];
    strBadNum = [self CheckEmpty:txtTongfengD10.text];
    strBadDate =[self CheckEmpty:txtTongfengE10.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC10.text];
    strRemark = [self CheckEmpty:txtTongfengF10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 11
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort11.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng11.text];
    strSizeParas =[self CheckEmpty:txtTongfengA11.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB11.text];
    strBadNum = [self CheckEmpty:txtTongfengD11.text];
    strBadDate =[self CheckEmpty:txtTongfengE11.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC11.text];
    strRemark = [self CheckEmpty:txtTongfengF11.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 12
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort12.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng12.text];
    strSizeParas =[self CheckEmpty:txtTongfengA12.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB12.text];
    strBadNum = [self CheckEmpty:txtTongfengD12.text];
    strBadDate =[self CheckEmpty:txtTongfengE12.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC12.text];
    strRemark = [self CheckEmpty:txtTongfengF12.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 13
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort13.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng13.text];
    strSizeParas =[self CheckEmpty:txtTongfengA13.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB13.text];
    strBadNum = [self CheckEmpty:txtTongfengD13.text];
    strBadDate =[self CheckEmpty:txtTongfengE13.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC13.text];
    strRemark = [self CheckEmpty:txtTongfengF13.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 14
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort14.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng14.text];
    strSizeParas =[self CheckEmpty:txtTongfengA14.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB14.text];
    strBadNum = [self CheckEmpty:txtTongfengD14.text];
    strBadDate =[self CheckEmpty:txtTongfengE14.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC14.text];
    strRemark = [self CheckEmpty:txtTongfengF14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 15
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort15.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng15.text];
    strSizeParas =[self CheckEmpty:txtTongfengA15.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB15.text];
    strBadNum = [self CheckEmpty:txtTongfengD15.text];
    strBadDate =[self CheckEmpty:txtTongfengE15.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC15.text];
    strRemark = [self CheckEmpty:txtTongfengF15.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 16
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort16.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng16.text];
    strSizeParas =[self CheckEmpty:txtTongfengA16.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB16.text];
    strBadNum = [self CheckEmpty:txtTongfengD16.text];
    strBadDate =[self CheckEmpty:txtTongfengE16.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC16.text];
    strRemark = [self CheckEmpty:txtTongfengF16.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 17
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort17.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng17.text];
    strSizeParas =[self CheckEmpty:txtTongfengA17.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB17.text];
    strBadNum = [self CheckEmpty:txtTongfengD17.text];
    strBadDate =[self CheckEmpty:txtTongfengE17.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC17.text];
    strRemark = [self CheckEmpty:txtTongfengF17.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 18
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort18.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng18.text];
    strSizeParas =[self CheckEmpty:txtTongfengA18.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB18.text];
    strBadNum = [self CheckEmpty:txtTongfengD18.text];
    strBadDate =[self CheckEmpty:txtTongfengE18.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC18.text];
    strRemark = [self CheckEmpty:txtTongfengF18.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 19
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort19.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng19.text];
    strSizeParas =[self CheckEmpty:txtTongfengA19.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB19.text];
    strBadNum = [self CheckEmpty:txtTongfengD19.text];
    strBadDate =[self CheckEmpty:txtTongfengE19.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC19.text];
    strRemark = [self CheckEmpty:txtTongfengF19.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 20
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort20.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng20.text];
    strSizeParas =[self CheckEmpty:txtTongfengA20.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB20.text];
    strBadNum = [self CheckEmpty:txtTongfengD20.text];
    strBadDate =[self CheckEmpty:txtTongfengE20.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC20.text];
    strRemark = [self CheckEmpty:txtTongfengF20.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 21
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort21.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng21.text];
    strSizeParas =[self CheckEmpty:txtTongfengA21.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB21.text];
    strBadNum = [self CheckEmpty:txtTongfengD21.text];
    strBadDate =[self CheckEmpty:txtTongfengE21.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC21.text];
    strRemark = [self CheckEmpty:txtTongfengF21.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 22
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort22.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng22.text];
    strSizeParas =[self CheckEmpty:txtTongfengA22.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB22.text];
    strBadNum = [self CheckEmpty:txtTongfengD22.text];
    strBadDate =[self CheckEmpty:txtTongfengE22.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC22.text];
    strRemark = [self CheckEmpty:txtTongfengF22.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 23
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort23.text];
    strjianchaType =@"通风设备";
    strjianchaPro =[self CheckEmpty:lblTongfeng23.text];
    strSizeParas =[self CheckEmpty:txtTongfengA23.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongfengB23.text];
    strBadNum = [self CheckEmpty:txtTongfengD23.text];
    strBadDate =[self CheckEmpty:txtTongfengE23.text];
    strCompleteRate = [self CheckEmpty:txtTongfengC23.text];
    strRemark = [self CheckEmpty:txtTongfengF23.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return add;
}

// 添加第3组数据
-(Boolean)AddData3
{
    // 1
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort1.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing1.text];
    strSizeParas =[self CheckEmpty:txtTongxingA1.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB1.text];
    strBadNum = [self CheckEmpty:txtTongxingD1.text];
    strBadDate =[self CheckEmpty:txtTongxingE1.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC1.text];
    strRemark = [self CheckEmpty:txtTongxingF1.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    WanghaoDAC *rc = [WanghaoDAC alloc];
    Boolean add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 2
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort2.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing2.text];
    strSizeParas =[self CheckEmpty:txtTongxingA2.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB2.text];
    strBadNum = [self CheckEmpty:txtTongxingD2.text];
    strBadDate =[self CheckEmpty:txtTongxingE2.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC2.text];
    strRemark = [self CheckEmpty:txtTongxingF2.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 3
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort3.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing3.text];
    strSizeParas =[self CheckEmpty:txtTongxingA3.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB3.text];
    strBadNum = [self CheckEmpty:txtTongxingD3.text];
    strBadDate =[self CheckEmpty:txtTongxingE3.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC3.text];
    strRemark = [self CheckEmpty:txtTongxingF3.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 4
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort4.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing4.text];
    strSizeParas =[self CheckEmpty:txtTongxingA4.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB4.text];
    strBadNum = [self CheckEmpty:txtTongxingD4.text];
    strBadDate =[self CheckEmpty:txtTongxingE4.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC4.text];
    strRemark = [self CheckEmpty:txtTongxingF4.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 5
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort5.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing5.text];
    strSizeParas =[self CheckEmpty:txtTongxingA5.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB5.text];
    strBadNum = [self CheckEmpty:txtTongxingD5.text];
    strBadDate =[self CheckEmpty:txtTongxingE5.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC5.text];
    strRemark = [self CheckEmpty:txtTongxingF5.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 6
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort6.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing6.text];
    strSizeParas =[self CheckEmpty:txtTongxingA6.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB6.text];
    strBadNum = [self CheckEmpty:txtTongxingD6.text];
    strBadDate =[self CheckEmpty:txtTongxingE6.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC6.text];
    strRemark = [self CheckEmpty:txtTongxingF6.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 7
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort7.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing7.text];
    strSizeParas =[self CheckEmpty:txtTongxingA7.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB7.text];
    strBadNum = [self CheckEmpty:txtTongxingD7.text];
    strBadDate =[self CheckEmpty:txtTongxingE7.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC7.text];
    strRemark = [self CheckEmpty:txtTongxingF7.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 8
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort8.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing8.text];
    strSizeParas =[self CheckEmpty:txtTongxingA8.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB8.text];
    strBadNum = [self CheckEmpty:txtTongxingD8.text];
    strBadDate =[self CheckEmpty:txtTongxingE8.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC8.text];
    strRemark = [self CheckEmpty:txtTongxingF8.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 9
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort9.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing9.text];
    strSizeParas =[self CheckEmpty:txtTongxingA9.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB9.text];
    strBadNum = [self CheckEmpty:txtTongxingD9.text];
    strBadDate =[self CheckEmpty:txtTongxingE9.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC9.text];
    strRemark = [self CheckEmpty:txtTongxingF9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 10
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort10.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing10.text];
    strSizeParas =[self CheckEmpty:txtTongxingA10.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB10.text];
    strBadNum = [self CheckEmpty:txtTongxingD10.text];
    strBadDate =[self CheckEmpty:txtTongxingE10.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC10.text];
    strRemark = [self CheckEmpty:txtTongxingF10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 11
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort11.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing11.text];
    strSizeParas =[self CheckEmpty:txtTongxingA11.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB11.text];
    strBadNum = [self CheckEmpty:txtTongxingD11.text];
    strBadDate =[self CheckEmpty:txtTongxingE11.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC11.text];
    strRemark = [self CheckEmpty:txtTongxingF11.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 12
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort12.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing12.text];
    strSizeParas =[self CheckEmpty:txtTongxingA12.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB12.text];
    strBadNum = [self CheckEmpty:txtTongxingD12.text];
    strBadDate =[self CheckEmpty:txtTongxingE12.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC12.text];
    strRemark = [self CheckEmpty:txtTongxingF12.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 13
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort13.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing13.text];
    strSizeParas =[self CheckEmpty:txtTongxingA13.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB13.text];
    strBadNum = [self CheckEmpty:txtTongxingD13.text];
    strBadDate =[self CheckEmpty:txtTongxingE13.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC13.text];
    strRemark = [self CheckEmpty:txtTongxingF13.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 14
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort14.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing14.text];
    strSizeParas =[self CheckEmpty:txtTongxingA14.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB14.text];
    strBadNum = [self CheckEmpty:txtTongxingD14.text];
    strBadDate =[self CheckEmpty:txtTongxingE14.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC14.text];
    strRemark = [self CheckEmpty:txtTongxingF14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    

    // 15
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort15.text];
    strjianchaType =@"通信设施";
    strjianchaPro =[self CheckEmpty:lblTongxing15.text];
    strSizeParas =[self CheckEmpty:txtTongxingA15.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtTongxingB15.text];
    strBadNum = [self CheckEmpty:txtTongxingD15.text];
    strBadDate =[self CheckEmpty:txtTongxingE15.text];
    strCompleteRate = [self CheckEmpty:txtTongxingC15.text];
    strRemark = [self CheckEmpty:txtTongxingF15.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return add;
}



// 添加第4组数据
-(Boolean)AddData4
{
    // 1
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort1.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei1.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA1.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB1.text];
    strBadNum = [self CheckEmpty:txtshoufeiD1.text];
    strBadDate =[self CheckEmpty:txtshoufeiE1.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC1.text];
    strRemark = [self CheckEmpty:txtshoufeiF1.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    WanghaoDAC *rc = [WanghaoDAC alloc];
    Boolean add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 2
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort2.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei2.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA2.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB2.text];
    strBadNum = [self CheckEmpty:txtshoufeiD2.text];
    strBadDate =[self CheckEmpty:txtshoufeiE2.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC2.text];
    strRemark = [self CheckEmpty:txtshoufeiF2.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 3
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort3.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei3.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA3.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB3.text];
    strBadNum = [self CheckEmpty:txtshoufeiD3.text];
    strBadDate =[self CheckEmpty:txtshoufeiE3.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC3.text];
    strRemark = [self CheckEmpty:txtshoufeiF3.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 4
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort4.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei4.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA4.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB4.text];
    strBadNum = [self CheckEmpty:txtshoufeiD4.text];
    strBadDate =[self CheckEmpty:txtshoufeiE4.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC4.text];
    strRemark = [self CheckEmpty:txtshoufeiF4.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 5
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort5.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei5.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA5.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB5.text];
    strBadNum = [self CheckEmpty:txtshoufeiD5.text];
    strBadDate =[self CheckEmpty:txtshoufeiE5.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC5.text];
    strRemark = [self CheckEmpty:txtshoufeiF5.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 6
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort6.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei6.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA6.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB6.text];
    strBadNum = [self CheckEmpty:txtshoufeiD6.text];
    strBadDate =[self CheckEmpty:txtshoufeiE6.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC6.text];
    strRemark = [self CheckEmpty:txtshoufeiF6.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 7
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort7.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei7.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA7.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB7.text];
    strBadNum = [self CheckEmpty:txtshoufeiD7.text];
    strBadDate =[self CheckEmpty:txtshoufeiE7.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC7.text];
    strRemark = [self CheckEmpty:txtshoufeiF7.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 8
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort8.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei8.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA8.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB8.text];
    strBadNum = [self CheckEmpty:txtshoufeiD8.text];
    strBadDate =[self CheckEmpty:txtshoufeiE8.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC8.text];
    strRemark = [self CheckEmpty:txtshoufeiF8.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 9
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort9.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei9.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA9.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB9.text];
    strBadNum = [self CheckEmpty:txtshoufeiD9.text];
    strBadDate =[self CheckEmpty:txtshoufeiE9.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC9.text];
    strRemark = [self CheckEmpty:txtshoufeiF9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    
    // 10
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort10.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei10.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA10.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB10.text];
    strBadNum = [self CheckEmpty:txtshoufeiD10.text];
    strBadDate =[self CheckEmpty:txtshoufeiE10.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC10.text];
    strRemark = [self CheckEmpty:txtshoufeiF10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 11
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort11.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei11.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA11.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB11.text];
    strBadNum = [self CheckEmpty:txtshoufeiD11.text];
    strBadDate =[self CheckEmpty:txtshoufeiE11.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC11.text];
    strRemark = [self CheckEmpty:txtshoufeiF11.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 12
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort12.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei12.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA12.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB12.text];
    strBadNum = [self CheckEmpty:txtshoufeiD12.text];
    strBadDate =[self CheckEmpty:txtshoufeiE12.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC12.text];
    strRemark = [self CheckEmpty:txtshoufeiF12.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 13
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort13.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei13.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA13.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB13.text];
    strBadNum = [self CheckEmpty:txtshoufeiD13.text];
    strBadDate =[self CheckEmpty:txtshoufeiE13.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC13.text];
    strRemark = [self CheckEmpty:txtshoufeiF13.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 14
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort14.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei14.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA14.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB14.text];
    strBadNum = [self CheckEmpty:txtshoufeiD14.text];
    strBadDate =[self CheckEmpty:txtshoufeiE14.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC14.text];
    strRemark = [self CheckEmpty:txtshoufeiF14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 15
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort15.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei15.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA15.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB15.text];
    strBadNum = [self CheckEmpty:txtshoufeiD15.text];
    strBadDate =[self CheckEmpty:txtshoufeiE15.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC15.text];
    strRemark = [self CheckEmpty:txtshoufeiF15.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 16
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort16.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei16.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA16.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB16.text];
    strBadNum = [self CheckEmpty:txtshoufeiD16.text];
    strBadDate =[self CheckEmpty:txtshoufeiE16.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC16.text];
    strRemark = [self CheckEmpty:txtshoufeiF16.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 17
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort17.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei17.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA17.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB17.text];
    strBadNum = [self CheckEmpty:txtshoufeiD17.text];
    strBadDate =[self CheckEmpty:txtshoufeiE17.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC17.text];
    strRemark = [self CheckEmpty:txtshoufeiF17.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 18
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort18.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei18.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA18.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB18.text];
    strBadNum = [self CheckEmpty:txtshoufeiD18.text];
    strBadDate =[self CheckEmpty:txtshoufeiE18.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC18.text];
    strRemark = [self CheckEmpty:txtshoufeiF18.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 19
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort19.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei19.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA19.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB19.text];
    strBadNum = [self CheckEmpty:txtshoufeiD19.text];
    strBadDate =[self CheckEmpty:txtshoufeiE19.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC19.text];
    strRemark = [self CheckEmpty:txtshoufeiF19.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 20
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort20.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei20.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA20.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB20.text];
    strBadNum = [self CheckEmpty:txtshoufeiD20.text];
    strBadDate =[self CheckEmpty:txtshoufeiE20.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC20.text];
    strRemark = [self CheckEmpty:txtshoufeiF20.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 21
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort21.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei21.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA21.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB21.text];
    strBadNum = [self CheckEmpty:txtshoufeiD21.text];
    strBadDate =[self CheckEmpty:txtshoufeiE21.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC21.text];
    strRemark = [self CheckEmpty:txtshoufeiF21.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 22
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort22.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei22.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA22.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB22.text];
    strBadNum = [self CheckEmpty:txtshoufeiD22.text];
    strBadDate =[self CheckEmpty:txtshoufeiE22.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC22.text];
    strRemark = [self CheckEmpty:txtshoufeiF22.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 23
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort23.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei23.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA23.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB23.text];
    strBadNum = [self CheckEmpty:txtshoufeiD23.text];
    strBadDate =[self CheckEmpty:txtshoufeiE23.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC23.text];
    strRemark = [self CheckEmpty:txtshoufeiF23.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 24
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort24.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei24.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA24.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB24.text];
    strBadNum = [self CheckEmpty:txtshoufeiD24.text];
    strBadDate =[self CheckEmpty:txtshoufeiE24.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC24.text];
    strRemark = [self CheckEmpty:txtshoufeiF24.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 25
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort25.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei25.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA25.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB25.text];
    strBadNum = [self CheckEmpty:txtshoufeiD25.text];
    strBadDate =[self CheckEmpty:txtshoufeiE25.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC25.text];
    strRemark = [self CheckEmpty:txtshoufeiF25.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 26
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort26.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei26.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA26.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB26.text];
    strBadNum = [self CheckEmpty:txtshoufeiD26.text];
    strBadDate =[self CheckEmpty:txtshoufeiE26.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC26.text];
    strRemark = [self CheckEmpty:txtshoufeiF26.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 27
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort27.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei27.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA27.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB27.text];
    strBadNum = [self CheckEmpty:txtshoufeiD27.text];
    strBadDate =[self CheckEmpty:txtshoufeiE27.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC27.text];
    strRemark = [self CheckEmpty:txtshoufeiF27.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 28
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort28.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei28.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA28.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB28.text];
    strBadNum = [self CheckEmpty:txtshoufeiD28.text];
    strBadDate =[self CheckEmpty:txtshoufeiE28.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC28.text];
    strRemark = [self CheckEmpty:txtshoufeiF28.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 29
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort29.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei29.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA29.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB29.text];
    strBadNum = [self CheckEmpty:txtshoufeiD29.text];
    strBadDate =[self CheckEmpty:txtshoufeiE29.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC29.text];
    strRemark = [self CheckEmpty:txtshoufeiF29.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 30
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort30.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei30.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA30.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB30.text];
    strBadNum = [self CheckEmpty:txtshoufeiD30.text];
    strBadDate =[self CheckEmpty:txtshoufeiE30.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC30.text];
    strRemark = [self CheckEmpty:txtshoufeiF30.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 31
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort31.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei31.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA31.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB31.text];
    strBadNum = [self CheckEmpty:txtshoufeiD31.text];
    strBadDate =[self CheckEmpty:txtshoufeiE31.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC31.text];
    strRemark = [self CheckEmpty:txtshoufeiF31.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 32
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort32.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei32.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA32.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB32.text];
    strBadNum = [self CheckEmpty:txtshoufeiD32.text];
    strBadDate =[self CheckEmpty:txtshoufeiE32.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC32.text];
    strRemark = [self CheckEmpty:txtshoufeiF32.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 33
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort33.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei33.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA33.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB33.text];
    strBadNum = [self CheckEmpty:txtshoufeiD33.text];
    strBadDate =[self CheckEmpty:txtshoufeiE33.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC33.text];
    strRemark = [self CheckEmpty:txtshoufeiF33.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 34
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort34.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei34.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA34.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB34.text];
    strBadNum = [self CheckEmpty:txtshoufeiD34.text];
    strBadDate =[self CheckEmpty:txtshoufeiE34.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC34.text];
    strRemark = [self CheckEmpty:txtshoufeiF34.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 35
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort35.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei35.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA35.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB35.text];
    strBadNum = [self CheckEmpty:txtshoufeiD35.text];
    strBadDate =[self CheckEmpty:txtshoufeiE35.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC35.text];
    strRemark = [self CheckEmpty:txtshoufeiF35.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    
    // 36
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort36.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei36.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA36.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB36.text];
    strBadNum = [self CheckEmpty:txtshoufeiD36.text];
    strBadDate =[self CheckEmpty:txtshoufeiE36.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC36.text];
    strRemark = [self CheckEmpty:txtshoufeiF36.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 37
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort37.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei37.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA37.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB37.text];
    strBadNum = [self CheckEmpty:txtshoufeiD37.text];
    strBadDate =[self CheckEmpty:txtshoufeiE37.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC37.text];
    strRemark = [self CheckEmpty:txtshoufeiF37.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 38
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort38.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei38.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA38.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB38.text];
    strBadNum = [self CheckEmpty:txtshoufeiD38.text];
    strBadDate =[self CheckEmpty:txtshoufeiE38.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC38.text];
    strRemark = [self CheckEmpty:txtshoufeiF38.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 39
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort39.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei39.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA39.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB39.text];
    strBadNum = [self CheckEmpty:txtshoufeiD39.text];
    strBadDate =[self CheckEmpty:txtshoufeiE39.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC39.text];
    strRemark = [self CheckEmpty:txtshoufeiF39.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 40
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort40.text];
    strjianchaType =@"收费设施";
    strjianchaPro =[self CheckEmpty:lblShoufei40.text];
    strSizeParas =[self CheckEmpty:txtshoufeiA40.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtshoufeiB40.text];
    strBadNum = [self CheckEmpty:txtshoufeiD40.text];
    strBadDate =[self CheckEmpty:txtshoufeiE40.text];
    strCompleteRate = [self CheckEmpty:txtshoufeiC40.text];
    strRemark = [self CheckEmpty:txtshoufeiF40.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return  add;
    
}



#pragma mark - txt事件
- (IBAction)txtbadnum:(UITextField *)sender {
    NSString *txtid=sender.restorationIdentifier;
    
    // 供配电star-------------------------------------------------------------------------------------------------------------------------------------
    
    if([txtid isEqualToString:@"txtgongpeidianE1"])
    {
        txtgongpeidianC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB1.text BadNum:txtgongpeidianD1.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE2"])
    {
        txtgongpeidianC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB2.text BadNum:txtgongpeidianD2.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE3"])
    {
        txtgongpeidianC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB3.text BadNum:txtgongpeidianD3.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE4"])
    {
        txtgongpeidianC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB4.text BadNum:txtgongpeidianD4.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE5"])
    {
        txtgongpeidianC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB5.text BadNum:txtgongpeidianD5.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE6"])
    {
        txtgongpeidianC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB6.text BadNum:txtgongpeidianD6.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE7"])
    {
        txtgongpeidianC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB7.text BadNum:txtgongpeidianD7.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE8"])
    {
        txtgongpeidianC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB8.text BadNum:txtgongpeidianD8.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE9"])
    {
        txtgongpeidianC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB9.text BadNum:txtgongpeidianD9.text]];
    }
    // 供配电end-------------------------------------------------------------------------------------------------------------------------------------
    
    
    // 通风设备star-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtTongfengE1"])
    {
        txtTongfengC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB1.text BadNum:txtTongfengD1.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE2"])
    {
        txtTongfengC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB2.text BadNum:txtTongfengD2.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE3"])
    {
        txtTongfengC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB3.text BadNum:txtTongfengD3.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE4"])
    {
        txtTongfengC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB4.text BadNum:txtTongfengD4.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE5"])
    {
        txtTongfengC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB5.text BadNum:txtTongfengD5.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE6"])
    {
        txtTongfengC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB6.text BadNum:txtTongfengD6.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE7"])
    {
        txtTongfengC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB7.text BadNum:txtTongfengD7.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE8"])
    {
        txtTongfengC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB8.text BadNum:txtTongfengD8.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE9"])
    {
        txtTongfengC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB9.text BadNum:txtTongfengD9.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE10"])
    {
        txtTongfengC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB10.text BadNum:txtTongfengD10.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE11"])
    {
        txtTongfengC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB11.text BadNum:txtTongfengD11.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE12"])
    {
        txtTongfengC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB12.text BadNum:txtTongfengD12.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE13"])
    {
        txtTongfengC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB13.text BadNum:txtTongfengD13.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE14"])
    {
        txtTongfengC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB14.text BadNum:txtTongfengD14.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE15"])
    {
        txtTongfengC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB15.text BadNum:txtTongfengD15.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE16"])
    {
        txtTongfengC16.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB16.text BadNum:txtTongfengD16.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE17"])
    {
        txtTongfengC17.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB17.text BadNum:txtTongfengD17.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE18"])
    {
        txtTongfengC18.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB18.text BadNum:txtTongfengD18.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE19"])
    {
        txtTongfengC19.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB19.text BadNum:txtTongfengD19.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE20"])
    {
        txtTongfengC20.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB20.text BadNum:txtTongfengD20.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE21"])
    {
        txtTongfengC21.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB21.text BadNum:txtTongfengD21.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE22"])
    {
        txtTongfengC22.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB22.text BadNum:txtTongfengD22.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengE23"])
    {
        txtTongfengC23.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongfengB23.text BadNum:txtTongfengD23.text]];
    }
    // 通风设备end------------------------------------------------------------------------------------------------------------------------
    
    // 通信设施star-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtTongxingE1"])
    {
        txtTongxingC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB1.text BadNum:txtTongxingD1.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE2"])
    {
        txtTongxingC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB2.text BadNum:txtTongxingD2.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE3"])
    {
        txtTongxingC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB3.text BadNum:txtTongxingD3.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE4"])
    {
        txtTongxingC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB4.text BadNum:txtTongxingD4.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE5"])
    {
        txtTongxingC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB5.text BadNum:txtTongxingD5.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE6"])
    {
        txtTongxingC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB6.text BadNum:txtTongxingD6.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE7"])
    {
        txtTongxingC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB7.text BadNum:txtTongxingD7.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE8"])
    {
        txtTongxingC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB8.text BadNum:txtTongxingD8.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE9"])
    {
        txtTongxingC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB9.text BadNum:txtTongxingD9.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE10"])
    {
        txtTongxingC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB10.text BadNum:txtTongxingD10.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE11"])
    {
        txtTongxingC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB11.text BadNum:txtTongxingD11.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE12"])
    {
        txtTongxingC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB12.text BadNum:txtTongxingD12.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE13"])
    {
        txtTongxingC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB13.text BadNum:txtTongxingD13.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE14"])
    {
        txtTongxingC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB14.text BadNum:txtTongxingD14.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingE15"])
    {
        txtTongxingC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtTongxingB15.text BadNum:txtTongxingD15.text]];
    }
    
    // 通信设施end------------------------------------------------------------------------------------------------------------------------
    
    
    // 收费设施star-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtshoufeiE1"])
    {
        txtshoufeiC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB1.text BadNum:txtshoufeiD1.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE2"])
    {
        txtshoufeiC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB2.text BadNum:txtshoufeiD2.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE3"])
    {
        txtshoufeiC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB3.text BadNum:txtshoufeiD3.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE4"])
    {
        txtshoufeiC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB4.text BadNum:txtshoufeiD4.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE5"])
    {
        txtshoufeiC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB5.text BadNum:txtshoufeiD5.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE6"])
    {
        txtshoufeiC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB6.text BadNum:txtshoufeiD6.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE7"])
    {
        txtshoufeiC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB7.text BadNum:txtshoufeiD7.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE8"])
    {
        txtshoufeiC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB8.text BadNum:txtshoufeiD8.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE9"])
    {
        txtshoufeiC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB9.text BadNum:txtshoufeiD9.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE10"])
    {
        txtshoufeiC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB10.text BadNum:txtshoufeiD10.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE11"])
    {
        txtshoufeiC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB11.text BadNum:txtshoufeiD11.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE12"])
    {
        txtshoufeiC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB12.text BadNum:txtshoufeiD12.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE13"])
    {
        txtshoufeiC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB13.text BadNum:txtshoufeiD13.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE14"])
    {
        txtshoufeiC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB14.text BadNum:txtshoufeiD14.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE15"])
    {
        txtshoufeiC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB15.text BadNum:txtshoufeiD15.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE16"])
    {
        txtshoufeiC16.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB16.text BadNum:txtshoufeiD16.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE17"])
    {
        txtshoufeiC17.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB17.text BadNum:txtshoufeiD17.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE18"])
    {
        txtshoufeiC18.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB18.text BadNum:txtshoufeiD18.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE19"])
    {
        txtshoufeiC19.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB19.text BadNum:txtshoufeiD19.text]];
    }
    
    
    if([txtid isEqualToString:@"txtshoufeiE20"])
    {
        txtshoufeiC20.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB20.text BadNum:txtshoufeiD20.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE21"])
    {
        txtshoufeiC21.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB21.text BadNum:txtshoufeiD21.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE22"])
    {
        txtshoufeiC22.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB22.text BadNum:txtshoufeiD22.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE23"])
    {
        txtshoufeiC23.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB23.text BadNum:txtshoufeiD23.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE24"])
    {
        txtshoufeiC24.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB24.text BadNum:txtshoufeiD24.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE25"])
    {
        txtshoufeiC25.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB25.text BadNum:txtshoufeiD25.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE26"])
    {
        txtshoufeiC26.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB26.text BadNum:txtshoufeiD26.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE27"])
    {
        txtshoufeiC27.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB27.text BadNum:txtshoufeiD27.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE28"])
    {
        txtshoufeiC28.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB28.text BadNum:txtshoufeiD28.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE29"])
    {
        txtshoufeiC29.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB29.text BadNum:txtshoufeiD29.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE30"])
    {
        txtshoufeiC30.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB30.text BadNum:txtshoufeiD30.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE31"])
    {
        txtshoufeiC31.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB31.text BadNum:txtshoufeiD31.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE32"])
    {
        txtshoufeiC32.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB32.text BadNum:txtshoufeiD32.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE33"])
    {
        txtshoufeiC33.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB33.text BadNum:txtshoufeiD33.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE34"])
    {
        txtshoufeiC34.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB34.text BadNum:txtshoufeiD34.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE35"])
    {
        txtshoufeiC35.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB35.text BadNum:txtshoufeiD35.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE36"])
    {
        txtshoufeiC36.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB36.text BadNum:txtshoufeiD36.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE37"])
    {
        txtshoufeiC37.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB37.text BadNum:txtshoufeiD37.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE38"])
    {
        txtshoufeiC38.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB38.text BadNum:txtshoufeiD38.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE39"])
    {
        txtshoufeiC39.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB39.text BadNum:txtshoufeiD39.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiE40"])
    {
        txtshoufeiC40.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtshoufeiB40.text BadNum:txtshoufeiD40.text]];
    }
    
    // 收费设施end------------------------------------------------------------------------------------------------------------------------
}

- (IBAction)txtBadDate:(UITextField *)sender {
    
    NSString *txtid=sender.restorationIdentifier;
    
    // 供配电star-------------------------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtgongpeidianD1"])
    {
        txtgongpeidianC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB1.text BadNum:txtgongpeidianD1.text BadDate:txtgongpeidianE1.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD2"])
    {
        txtgongpeidianC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB2.text BadNum:txtgongpeidianD2.text BadDate:txtgongpeidianE2.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD3"])
    {
        txtgongpeidianC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB3.text BadNum:txtgongpeidianD3.text BadDate:txtgongpeidianE3.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD4"])
    {
        txtgongpeidianC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB4.text BadNum:txtgongpeidianD4.text BadDate:txtgongpeidianE4.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD5"])
    {
        txtgongpeidianC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB5.text BadNum:txtgongpeidianD5.text BadDate:txtgongpeidianE5.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD6"])
    {
        txtgongpeidianC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB6.text BadNum:txtgongpeidianD6.text BadDate:txtgongpeidianE6.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD7"])
    {
        txtgongpeidianC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB7.text BadNum:txtgongpeidianD7.text BadDate:txtgongpeidianE7.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD8"])
    {
        txtgongpeidianC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB8.text BadNum:txtgongpeidianD8.text BadDate:txtgongpeidianE8.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD9"])
    {
        txtgongpeidianC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB9.text BadNum:txtgongpeidianD9.text BadDate:txtgongpeidianE9.text]];
    }
    
    // 供配电end-------------------------------------------------------------------------------------------------------------------------------------
    
    // 通风设备star-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtTongfengD1"])
    {
        txtTongfengC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB1.text BadNum:txtTongfengD1.text BadDate:txtTongfengE1.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD2"])
    {
        txtTongfengC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB2.text BadNum:txtTongfengD2.text BadDate:txtTongfengE2.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD3"])
    {
        txtTongfengC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB3.text BadNum:txtTongfengD3.text BadDate:txtTongfengE3.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD4"])
    {
        txtTongfengC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB4.text BadNum:txtTongfengD4.text BadDate:txtTongfengE4.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD5"])
    {
        txtTongfengC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB5.text BadNum:txtTongfengD5.text BadDate:txtTongfengE5.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD6"])
    {
        txtTongfengC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB6.text BadNum:txtTongfengD6.text BadDate:txtTongfengE6.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD7"])
    {
        txtTongfengC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB7.text BadNum:txtTongfengD7.text BadDate:txtTongfengE7.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD8"])
    {
        txtTongfengC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB8.text BadNum:txtTongfengD8.text BadDate:txtTongfengE8.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD9"])
    {
        txtTongfengC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB9.text BadNum:txtTongfengD9.text BadDate:txtTongfengE9.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD10"])
    {
        txtTongfengC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB10.text BadNum:txtTongfengD10.text BadDate:txtTongfengE10.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD11"])
    {
        txtTongfengC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB11.text BadNum:txtTongfengD11.text BadDate:txtTongfengE11.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD12"])
    {
        txtTongfengC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB12.text BadNum:txtTongfengD12.text BadDate:txtTongfengE12.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD13"])
    {
        txtTongfengC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB13.text BadNum:txtTongfengD13.text BadDate:txtTongfengE13.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD14"])
    {
        txtTongfengC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB14.text BadNum:txtTongfengD14.text BadDate:txtTongfengE14.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD15"])
    {
        txtTongfengC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB15.text BadNum:txtTongfengD15.text BadDate:txtTongfengE15.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD16"])
    {
        txtTongfengC16.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB16.text BadNum:txtTongfengD16.text BadDate:txtTongfengE16.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD17"])
    {
        txtTongfengC17.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB17.text BadNum:txtTongfengD17.text BadDate:txtTongfengE17.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD18"])
    {
        txtTongfengC18.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB18.text BadNum:txtTongfengD18.text BadDate:txtTongfengE18.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD19"])
    {
        txtTongfengC19.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB19.text BadNum:txtTongfengD19.text BadDate:txtTongfengE19.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD20"])
    {
        txtTongfengC20.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB20.text BadNum:txtTongfengD20.text BadDate:txtTongfengE20.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD21"])
    {
        txtTongfengC21.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB21.text BadNum:txtTongfengD21.text BadDate:txtTongfengE21.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD22"])
    {
        txtTongfengC22.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB22.text BadNum:txtTongfengD22.text BadDate:txtTongfengE22.text]];
    }
    
    if([txtid isEqualToString:@"txtTongfengD23"])
    {
        txtTongfengC23.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongfengB23.text BadNum:txtTongfengD23.text BadDate:txtTongfengE23.text]];
    }
    
    // 通风设备end -----------------------------------------------------------------------------------------------------------------------
    
    
    
    // 通信设施star-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtTongxingD1"])
    {
        txtTongxingC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB1.text BadNum:txtTongxingD1.text BadDate:txtTongxingE1.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD2"])
    {
        txtTongxingC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB2.text BadNum:txtTongxingD2.text BadDate:txtTongxingE2.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD3"])
    {
        txtTongxingC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB3.text BadNum:txtTongxingD3.text BadDate:txtTongxingE3.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD4"])
    {
        txtTongxingC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB4.text BadNum:txtTongxingD4.text BadDate:txtTongxingE4.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD5"])
    {
        txtTongxingC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB5.text BadNum:txtTongxingD5.text BadDate:txtTongxingE5.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD6"])
    {
        txtTongxingC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB6.text BadNum:txtTongxingD6.text BadDate:txtTongxingE6.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD7"])
    {
        txtTongxingC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB7.text BadNum:txtTongxingD7.text BadDate:txtTongxingE7.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD8"])
    {
        txtTongxingC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB8.text BadNum:txtTongxingD8.text BadDate:txtTongxingE8.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD9"])
    {
        txtTongxingC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB9.text BadNum:txtTongxingD9.text BadDate:txtTongxingE9.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD10"])
    {
        txtTongxingC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB10.text BadNum:txtTongxingD10.text BadDate:txtTongxingE10.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD11"])
    {
        txtTongxingC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB11.text BadNum:txtTongxingD11.text BadDate:txtTongxingE11.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD12"])
    {
        txtTongxingC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB12.text BadNum:txtTongxingD12.text BadDate:txtTongxingE12.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD13"])
    {
        txtTongxingC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB13.text BadNum:txtTongxingD13.text BadDate:txtTongxingE13.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD14"])
    {
        txtTongxingC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB14.text BadNum:txtTongxingD14.text BadDate:txtTongxingE14.text]];
    }
    
    if([txtid isEqualToString:@"txtTongxingD15"])
    {
        txtTongxingC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtTongxingB15.text BadNum:txtTongxingD15.text BadDate:txtTongxingE15.text]];
    }
    
    // 通信设施end -----------------------------------------------------------------------------------------------------------------------
    
    // 收费设施start-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtshoufeiD1"])
    {
        txtshoufeiC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB1.text BadNum:txtshoufeiD1.text BadDate:txtshoufeiE1.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD2"])
    {
        txtshoufeiC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB2.text BadNum:txtshoufeiD2.text BadDate:txtshoufeiE2.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD3"])
    {
        txtshoufeiC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB3.text BadNum:txtshoufeiD3.text BadDate:txtshoufeiE3.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD4"])
    {
        txtshoufeiC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB4.text BadNum:txtshoufeiD4.text BadDate:txtshoufeiE4.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD5"])
    {
        txtshoufeiC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB5.text BadNum:txtshoufeiD5.text BadDate:txtshoufeiE5.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD6"])
    {
        txtshoufeiC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB6.text BadNum:txtshoufeiD6.text BadDate:txtshoufeiE6.text]];
    }

    if([txtid isEqualToString:@"txtshoufeiD7"])
    {
        txtshoufeiC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB7.text BadNum:txtshoufeiD7.text BadDate:txtshoufeiE7.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD8"])
    {
        txtshoufeiC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB8.text BadNum:txtshoufeiD8.text BadDate:txtshoufeiE8.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD9"])
    {
        txtshoufeiC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB9.text BadNum:txtshoufeiD9.text BadDate:txtshoufeiE9.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD10"])
    {
        txtshoufeiC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB10.text BadNum:txtshoufeiD10.text BadDate:txtshoufeiE10.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD11"])
    {
        txtshoufeiC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB11.text BadNum:txtshoufeiD11.text BadDate:txtshoufeiE11.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD12"])
    {
        txtshoufeiC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB12.text BadNum:txtshoufeiD12.text BadDate:txtshoufeiE12.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD13"])
    {
        txtshoufeiC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB13.text BadNum:txtshoufeiD13.text BadDate:txtshoufeiE13.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD14"])
    {
        txtshoufeiC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB14.text BadNum:txtshoufeiD14.text BadDate:txtshoufeiE14.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD15"])
    {
        txtshoufeiC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB15.text BadNum:txtshoufeiD15.text BadDate:txtshoufeiE15.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD16"])
    {
        txtshoufeiC16.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB16.text BadNum:txtshoufeiD16.text BadDate:txtshoufeiE16.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD17"])
    {
        txtshoufeiC17.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB17.text BadNum:txtshoufeiD17.text BadDate:txtshoufeiE17.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD18"])
    {
        txtshoufeiC18.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB18.text BadNum:txtshoufeiD18.text BadDate:txtshoufeiE18.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD19"])
    {
        txtshoufeiC19.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB19.text BadNum:txtshoufeiD19.text BadDate:txtshoufeiE19.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD20"])
    {
        txtshoufeiC20.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB20.text BadNum:txtshoufeiD20.text BadDate:txtshoufeiE20.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD21"])
    {
        txtshoufeiC21.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB21.text BadNum:txtshoufeiD21.text BadDate:txtshoufeiE21.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD22"])
    {
        txtshoufeiC22.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB22.text BadNum:txtshoufeiD22.text BadDate:txtshoufeiE22.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD23"])
    {
        txtshoufeiC23.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB23.text BadNum:txtshoufeiD23.text BadDate:txtshoufeiE23.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD24"])
    {
        txtshoufeiC24.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB24.text BadNum:txtshoufeiD24.text BadDate:txtshoufeiE24.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD25"])
    {
        txtshoufeiC25.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB25.text BadNum:txtshoufeiD25.text BadDate:txtshoufeiE25.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD26"])
    {
        txtshoufeiC26.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB26.text BadNum:txtshoufeiD26.text BadDate:txtshoufeiE26.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD27"])
    {
        txtshoufeiC27.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB27.text BadNum:txtshoufeiD27.text BadDate:txtshoufeiE27.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD28"])
    {
        txtshoufeiC28.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB28.text BadNum:txtshoufeiD28.text BadDate:txtshoufeiE28.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD29"])
    {
        txtshoufeiC29.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB29.text BadNum:txtshoufeiD29.text BadDate:txtshoufeiE29.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD30"])
    {
        txtshoufeiC30.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB30.text BadNum:txtshoufeiD30.text BadDate:txtshoufeiE30.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD31"])
    {
        txtshoufeiC31.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB31.text BadNum:txtshoufeiD31.text BadDate:txtshoufeiE31.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD32"])
    {
        txtshoufeiC32.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB32.text BadNum:txtshoufeiD32.text BadDate:txtshoufeiE32.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD33"])
    {
        txtshoufeiC33.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB33.text BadNum:txtshoufeiD33.text BadDate:txtshoufeiE33.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD34"])
    {
        txtshoufeiC34.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB34.text BadNum:txtshoufeiD34.text BadDate:txtshoufeiE34.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD35"])
    {
        txtshoufeiC35.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB35.text BadNum:txtshoufeiD35.text BadDate:txtshoufeiE35.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD36"])
    {
        txtshoufeiC36.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB36.text BadNum:txtshoufeiD36.text BadDate:txtshoufeiE36.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD37"])
    {
        txtshoufeiC37.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB37.text BadNum:txtshoufeiD37.text BadDate:txtshoufeiE37.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD38"])
    {
        txtshoufeiC38.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB38.text BadNum:txtshoufeiD38.text BadDate:txtshoufeiE38.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD39"])
    {
        txtshoufeiC39.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB39.text BadNum:txtshoufeiD39.text BadDate:txtshoufeiE39.text]];
    }
    
    if([txtid isEqualToString:@"txtshoufeiD40"])
    {
        txtshoufeiC40.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtshoufeiB40.text BadNum:txtshoufeiD40.text BadDate:txtshoufeiE40.text]];
    }
    
    // 收费设施end  -----------------------------------------------------------------------------------------------------------------------
}


#pragma mark - 共同函数
// 检查字符串
-(NSString *)CheckEmpty:(NSString *)strValue
{
    
    NSString *string = strValue;
    NSString *trimmedString = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    strValue = trimmedString;
    
    if([strValue isEqualToString:@""])
    {
        return @"-";
    }
    else
    {
        return strValue;
    }
}


// 设备完好率计算不带故障天数
-(float)CompleteRateAWithTotalNum:(NSString *)strTotalNum BadNum:(NSString*)strBadNum
{
    float totnum=0;
    float badnum=0;
    float rate=0;
    if([strTotalNum isEqualToString:@""] && [strBadNum isEqualToString:@""])
    {
        return 0;
    }
    else
    {
        totnum=[strTotalNum floatValue];
        badnum=[strBadNum floatValue];
        rate = ((totnum - badnum)/totnum)*100;
    }
    
    if (rate == -INFINITY) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"操作错误"  message:@"没有填写总台数，请先填写总台数在填写故障台数" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }
    
    return rate;
}

// 设备完好率计算带故障天数
-(float)CompleteRateBWithTotalNum:(NSString *)strTotalNum BadNum:(NSString*)strBadNum BadDate:(NSString*)strBadDate
{
    float totnum=0;
    float badnum=0;
    float BadDate=0;
    float rate=0;
    if([strTotalNum isEqualToString:@""] && [strBadNum isEqualToString:@""] && [strBadDate isEqualToString:@""])
    {
        return 0;
    }
    else
    {
        totnum=[strTotalNum floatValue];
        badnum=[strBadNum floatValue];
        BadDate=[strBadDate floatValue];
        rate =(1-(badnum*BadDate)/(totnum*BadDate))*100;
    }
    
    if (rate == NAN) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"操作错误"  message:@"没有填写总台数与故障台数，请先填写总台数与故障台数在填写故障天数" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }
    
    return rate;
    
}




















@end
