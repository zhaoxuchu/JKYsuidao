//
//  WanghaoViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-25.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "WanghaoViewController.h"

@interface WanghaoViewController ()

@end

@implementation WanghaoViewController

#pragma mark - 供配电
@synthesize lblSort1,lblSort2,lblSort3,lblSort4,lblSort5,lblSort6,lblSort7,lblSort8,lblSort9,lblSort10,lblSort11,lblSort12,lblSort13,lblSort14,lblSort15,lblSort16,lblSort17,lblSort18,lblSort19,lblSort20,lblSort21,lblSort22,lblSort23,lblSort24,lblSort25,lblSort26,lblSort27,lblSort28,lblSort29,lblSort30;
@synthesize lblGongpeidian1,
lblGongpeidian2,
lblGongpeidian3,
lblGongpeidian4,
lblGongpeidian5,
lblGongpeidian6,
lblGongpeidian7,
lblGongpeidian8,
lblGongpeidian9,
lblGongpeidian10,
lblGongpeidian11,
lblGongpeidian12,
lblGongpeidian13,
lblGongpeidian14,
lblGongpeidian15,
lblGongpeidian16,
lblGongpeidian17,
lblGongpeidian18,
lblGongpeidian19,
lblGongpeidian20,
lblGongpeidian21,
lblGongpeidian22,
lblGongpeidian23;
@synthesize txtgongpeidianA1,txtgongpeidianA2,txtgongpeidianA3,txtgongpeidianA4,txtgongpeidianA5,txtgongpeidianA6,txtgongpeidianA7,txtgongpeidianA8,txtgongpeidianA9,txtgongpeidianA10,txtgongpeidianA11,txtgongpeidianA12,txtgongpeidianA13,txtgongpeidianA14,txtgongpeidianA15,txtgongpeidianA16,txtgongpeidianA17,txtgongpeidianA18,txtgongpeidianA19,txtgongpeidianA20,txtgongpeidianA21,txtgongpeidianA22,txtgongpeidianA23;
@synthesize txtgongpeidianB1,txtgongpeidianB2,txtgongpeidianB3,txtgongpeidianB4,txtgongpeidianB5,txtgongpeidianB6,txtgongpeidianB7,txtgongpeidianB8,txtgongpeidianB9,txtgongpeidianB10,txtgongpeidianB11,txtgongpeidianB12,txtgongpeidianB13,txtgongpeidianB14,txtgongpeidianB15,txtgongpeidianB16,txtgongpeidianB17,txtgongpeidianB18,txtgongpeidianB19,txtgongpeidianB20,txtgongpeidianB21,txtgongpeidianB22,txtgongpeidianB23;
@synthesize txtgongpeidianC1,txtgongpeidianC2,txtgongpeidianC3,txtgongpeidianC4,txtgongpeidianC5,txtgongpeidianC6,txtgongpeidianC7,txtgongpeidianC8,txtgongpeidianC9,txtgongpeidianC10,txtgongpeidianC11,txtgongpeidianC12,txtgongpeidianC13,txtgongpeidianC14,txtgongpeidianC15,txtgongpeidianC16,txtgongpeidianC17,txtgongpeidianC18,txtgongpeidianC19,txtgongpeidianC20,txtgongpeidianC21,txtgongpeidianC22,txtgongpeidianC23;
@synthesize txtgongpeidianD1,txtgongpeidianD2,txtgongpeidianD3,txtgongpeidianD4,txtgongpeidianD5,txtgongpeidianD6,txtgongpeidianD7,txtgongpeidianD8,txtgongpeidianD9,txtgongpeidianD10,txtgongpeidianD11,txtgongpeidianD12,txtgongpeidianD13,txtgongpeidianD14,txtgongpeidianD15,txtgongpeidianD16,txtgongpeidianD17,txtgongpeidianD18,txtgongpeidianD19,txtgongpeidianD20,txtgongpeidianD21,txtgongpeidianD22,txtgongpeidianD23;
@synthesize txtgongpeidianE1,txtgongpeidianE2,txtgongpeidianE3,txtgongpeidianE4,txtgongpeidianE5,txtgongpeidianE6,txtgongpeidianE7,txtgongpeidianE8,txtgongpeidianE9,txtgongpeidianE10,txtgongpeidianE11,txtgongpeidianE12,txtgongpeidianE13,txtgongpeidianE14,txtgongpeidianE15,txtgongpeidianE16,txtgongpeidianE17,txtgongpeidianE18,txtgongpeidianE19,txtgongpeidianE20,txtgongpeidianE21,txtgongpeidianE22,txtgongpeidianE23;
@synthesize txtgongpeidianF1,txtgongpeidianF2,txtgongpeidianF3,txtgongpeidianF4,txtgongpeidianF5,txtgongpeidianF6,txtgongpeidianF7,txtgongpeidianF8,txtgongpeidianF9,txtgongpeidianF10,txtgongpeidianF11,txtgongpeidianF12,txtgongpeidianF13,txtgongpeidianF14,txtgongpeidianF15,txtgongpeidianF16,txtgongpeidianF17,txtgongpeidianF18,txtgongpeidianF19,txtgongpeidianF20,txtgongpeidianF21,txtgongpeidianF22,txtgongpeidianF23;

#pragma mark - 通风设施
@synthesize lblTongfeng1 , lblTongfeng2 , lblTongfeng3 , lblTongfeng4 , lblTongfeng5, lblTongfeng6, lblTongfeng7;
@synthesize txtTongfengA1,txtTongfengA2,txtTongfengA3,txtTongfengA4,txtTongfengA5,txtTongfengA6,txtTongfengA7;
@synthesize txtTongfengB1,txtTongfengB2,txtTongfengB3,txtTongfengB4,txtTongfengB5,txtTongfengB6,txtTongfengB7;
@synthesize txtTongfengD1,txtTongfengD2,txtTongfengD3,txtTongfengD4,txtTongfengD5,txtTongfengD6,txtTongfengD7;
@synthesize txtTongfengE1,txtTongfengE2,txtTongfengE3,txtTongfengE4,txtTongfengE5,txtTongfengE6,txtTongfengE7;
@synthesize txtTongfengC1,txtTongfengC2,txtTongfengC3,txtTongfengC4,txtTongfengC5,txtTongfengC6,txtTongfengC7;
@synthesize txtTongfengF1,txtTongfengF2,txtTongfengF3,txtTongfengF4,txtTongfengF5,txtTongfengF6,txtTongfengF7;

#pragma mark - 监控设施
@synthesize lblJiankong1,lblJiankong2,lblJiankong3,lblJiankong4,lblJiankong5,lblJiankong6,lblJiankong7,lblJiankong8,lblJiankong9,lblJiankong10,lblJiankong11,lblJiankong12,lblJiankong13,lblJiankong14,lblJiankong15,lblJiankong16,lblJiankong17,lblJiankong18,lblJiankong19,lblJiankong20,lblJiankong21,lblJiankong22,lblJiankong23,lblJiankong24,lblJiankong25,lblJiankong26,lblJiankong27,lblJiankong28,lblJiankong29,lblJiankong30;
@synthesize txtJiankongA1,txtJiankongA2,txtJiankongA3,txtJiankongA4,txtJiankongA5,txtJiankongA6,txtJiankongA7,txtJiankongA8,txtJiankongA9,txtJiankongA10,txtJiankongA11,txtJiankongA12,txtJiankongA13,txtJiankongA14,txtJiankongA15,txtJiankongA16,txtJiankongA17,txtJiankongA18,txtJiankongA19,txtJiankongA20,txtJiankongA21,txtJiankongA22,txtJiankongA23,txtJiankongA24,txtJiankongA25,txtJiankongA26,txtJiankongA27,txtJiankongA28,txtJiankongA29,txtJiankongA30;
@synthesize txtJiankongB1,txtJiankongB2,txtJiankongB3,txtJiankongB4,txtJiankongB5,txtJiankongB6,txtJiankongB7,txtJiankongB8,txtJiankongB9,txtJiankongB10,txtJiankongB11,txtJiankongB12,txtJiankongB13,txtJiankongB14,txtJiankongB15,txtJiankongB16,txtJiankongB17,txtJiankongB18,txtJiankongB19,txtJiankongB20,txtJiankongB21,txtJiankongB22,txtJiankongB23,txtJiankongB24,txtJiankongB25,txtJiankongB26,txtJiankongB27,txtJiankongB28,txtJiankongB29,txtJiankongB30;
@synthesize txtJiankongD1,txtJiankongD2,txtJiankongD3,txtJiankongD4,txtJiankongD5,txtJiankongD6,txtJiankongD7,txtJiankongD8,txtJiankongD9,txtJiankongD10,txtJiankongD11,txtJiankongD12,txtJiankongD13,txtJiankongD14,txtJiankongD15,txtJiankongD16,txtJiankongD17,txtJiankongD18,txtJiankongD19,txtJiankongD20,txtJiankongD21,txtJiankongD22,txtJiankongD23,txtJiankongD24,txtJiankongD25,txtJiankongD26,txtJiankongD27,txtJiankongD28,txtJiankongD29,txtJiankongD30;
@synthesize txtJiankongE1,txtJiankongE2,txtJiankongE3,txtJiankongE4,txtJiankongE5,txtJiankongE6,txtJiankongE7,txtJiankongE8,txtJiankongE9,txtJiankongE10,txtJiankongE11,txtJiankongE12,txtJiankongE13,txtJiankongE14,txtJiankongE15,txtJiankongE16,txtJiankongE17,txtJiankongE18,txtJiankongE19,txtJiankongE20,txtJiankongE21,txtJiankongE22,txtJiankongE23,txtJiankongE24,txtJiankongE25,txtJiankongE26,txtJiankongE27,txtJiankongE28,txtJiankongE29,txtJiankongE30;
@synthesize txtJiankongC1,txtJiankongC2,txtJiankongC3,txtJiankongC4,txtJiankongC5,txtJiankongC6,txtJiankongC7,txtJiankongC8,txtJiankongC9,txtJiankongC10,txtJiankongC11,txtJiankongC12,txtJiankongC13,txtJiankongC14,txtJiankongC15,txtJiankongC16,txtJiankongC17,txtJiankongC18,txtJiankongC19,txtJiankongC20,txtJiankongC21,txtJiankongC22,txtJiankongC23,txtJiankongC24,txtJiankongC25,txtJiankongC26,txtJiankongC27,txtJiankongC28,txtJiankongC29,txtJiankongC30;
@synthesize txtJiankongF1,txtJiankongF2,txtJiankongF3,txtJiankongF4,txtJiankongF5,txtJiankongF6,txtJiankongF7,txtJiankongF8,txtJiankongF9,txtJiankongF10,txtJiankongF11,txtJiankongF12,txtJiankongF13,txtJiankongF14,txtJiankongF15,txtJiankongF16,txtJiankongF17,txtJiankongF18,txtJiankongF19,txtJiankongF20,txtJiankongF21,txtJiankongF22,txtJiankongF23,txtJiankongF24,txtJiankongF25,txtJiankongF26,txtJiankongF27,txtJiankongF28,txtJiankongF29,txtJiankongF30;

#pragma mark - 照明设施
@synthesize lblZhaoming1,lblZhaoming2,lblZhaoming3,lblZhaoming4,lblZhaoming5,lblZhaoming6,lblZhaoming7,lblZhaoming8,lblZhaoming9,lblZhaoming10,lblZhaoming11,lblZhaoming12,lblZhaoming13,lblZhaoming14,lblZhaoming15;
@synthesize txtZhaomingA1,txtZhaomingA2,txtZhaomingA3,txtZhaomingA4,txtZhaomingA5,txtZhaomingA6,txtZhaomingA7,txtZhaomingA8,txtZhaomingA9,txtZhaomingA10,txtZhaomingA11,txtZhaomingA12,txtZhaomingA13,txtZhaomingA14,txtZhaomingA15;
@synthesize txtZhaomingB1,txtZhaomingB2,txtZhaomingB3,txtZhaomingB4,txtZhaomingB5,txtZhaomingB6,txtZhaomingB7,txtZhaomingB8,txtZhaomingB9,txtZhaomingB10,txtZhaomingB11,txtZhaomingB12,txtZhaomingB13,txtZhaomingB14,txtZhaomingB15;
@synthesize txtZhaomingD1,txtZhaomingD2,txtZhaomingD3,txtZhaomingD4,txtZhaomingD5,txtZhaomingD6,txtZhaomingD7,txtZhaomingD8,txtZhaomingD9,txtZhaomingD10,txtZhaomingD11,txtZhaomingD12,txtZhaomingD13,txtZhaomingD14,txtZhaomingD15;
@synthesize txtZhaomingE1,txtZhaomingE2,txtZhaomingE3,txtZhaomingE4,txtZhaomingE5,txtZhaomingE6,txtZhaomingE7,txtZhaomingE8,txtZhaomingE9,txtZhaomingE10,txtZhaomingE11,txtZhaomingE12,txtZhaomingE13,txtZhaomingE14,txtZhaomingE15;
@synthesize txtZhaomingC1,txtZhaomingC2,txtZhaomingC3,txtZhaomingC4,txtZhaomingC5,txtZhaomingC6,txtZhaomingC7,txtZhaomingC8,txtZhaomingC9,txtZhaomingC10,txtZhaomingC11,txtZhaomingC12,txtZhaomingC13,txtZhaomingC14,txtZhaomingC15;
@synthesize txtZhaomingF1,txtZhaomingF2,txtZhaomingF3,txtZhaomingF4,txtZhaomingF5,txtZhaomingF6,txtZhaomingF7,txtZhaomingF8,txtZhaomingF9,txtZhaomingF10,txtZhaomingF11,txtZhaomingF12,txtZhaomingF13,txtZhaomingF14,txtZhaomingF15;

#pragma mark - 消防设备
@synthesize lblXiaofang1,lblXiaofang2,lblXiaofang3,lblXiaofang4,lblXiaofang5,lblXiaofang6,lblXiaofang7,lblXiaofang8,lblXiaofang9,lblXiaofang10,lblXiaofang11,lblXiaofang12,lblXiaofang13,lblXiaofang14,lblXiaofang15,lblXiaofang16,lblXiaofang17,lblXiaofang18,lblXiaofang19;
@synthesize txtXiaofangA1,txtXiaofangA2,txtXiaofangA3,txtXiaofangA4,txtXiaofangA5,txtXiaofangA6,txtXiaofangA7,txtXiaofangA8,txtXiaofangA9,txtXiaofangA10,txtXiaofangA11,txtXiaofangA12,txtXiaofangA13,txtXiaofangA14,txtXiaofangA15,txtXiaofangA16,txtXiaofangA17,txtXiaofangA18,txtXiaofangA19;
@synthesize txtXiaofangB1,txtXiaofangB2,txtXiaofangB3,txtXiaofangB4,txtXiaofangB5,txtXiaofangB6,txtXiaofangB7,txtXiaofangB8,txtXiaofangB9,txtXiaofangB10,txtXiaofangB11,txtXiaofangB12,txtXiaofangB13,txtXiaofangB14,txtXiaofangB15,txtXiaofangB16,txtXiaofangB17,txtXiaofangB18,txtXiaofangB19;
@synthesize txtXiaofangD1,txtXiaofangD2,txtXiaofangD3,txtXiaofangD4,txtXiaofangD5,txtXiaofangD6,txtXiaofangD7,txtXiaofangD8,txtXiaofangD9,txtXiaofangD10,txtXiaofangD11,txtXiaofangD12,txtXiaofangD13,txtXiaofangD14,txtXiaofangD15,txtXiaofangD16,txtXiaofangD17,txtXiaofangD18,txtXiaofangD19;
@synthesize txtXiaofangE1,txtXiaofangE2,txtXiaofangE3,txtXiaofangE4,txtXiaofangE5,txtXiaofangE6,txtXiaofangE7,txtXiaofangE8,txtXiaofangE9,txtXiaofangE10,txtXiaofangE11,txtXiaofangE12,txtXiaofangE13,txtXiaofangE14,txtXiaofangE15,txtXiaofangE16,txtXiaofangE17,txtXiaofangE18,txtXiaofangE19;
@synthesize txtXiaofangC1,txtXiaofangC2,txtXiaofangC3,txtXiaofangC4,txtXiaofangC5,txtXiaofangC6,txtXiaofangC7,txtXiaofangC8,txtXiaofangC9,txtXiaofangC10,txtXiaofangC11,txtXiaofangC12,txtXiaofangC13,txtXiaofangC14,txtXiaofangC15,txtXiaofangC16,txtXiaofangC17,txtXiaofangC18,txtXiaofangC19;
@synthesize txtXiaofangF1,txtXiaofangF2,txtXiaofangF3,txtXiaofangF4,txtXiaofangF5,txtXiaofangF6,txtXiaofangF7,txtXiaofangF8,txtXiaofangF9,txtXiaofangF10,txtXiaofangF11,txtXiaofangF12,txtXiaofangF13,txtXiaofangF14,txtXiaofangF15,txtXiaofangF16,txtXiaofangF17,txtXiaofangF18,txtXiaofangF19;


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
        [self AddData4] &&
        [self AddData5])
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 10
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort10.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian10.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA10.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB10.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD10.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE10.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC10.text];
    strRemark = [self CheckEmpty:txtgongpeidianF10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 11
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort11.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian11.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA11.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB11.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD11.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE11.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC11.text];
    strRemark = [self CheckEmpty:txtgongpeidianF11.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 12
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort12.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian12.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA12.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB12.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD12.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE12.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC12.text];
    strRemark = [self CheckEmpty:txtgongpeidianF12.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 13
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort13.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian13.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA13.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB13.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD13.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE13.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC13.text];
    strRemark = [self CheckEmpty:txtgongpeidianF13.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 14
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort14.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian14.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA14.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB14.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD14.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE1.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC14.text];
    strRemark = [self CheckEmpty:txtgongpeidianF14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 15
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort15.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian15.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA15.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB15.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD15.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE15.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC15.text];
    strRemark = [self CheckEmpty:txtgongpeidianF15.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 16
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort16.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian16.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA16.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB16.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD16.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE16.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC16.text];
    strRemark = [self CheckEmpty:txtgongpeidianF16.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 17
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort17.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian17.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA17.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB17.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD17.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE17.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC17.text];
    strRemark = [self CheckEmpty:txtgongpeidianF17.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 18
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort18.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian18.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA18.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB18.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD18.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE18.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC18.text];
    strRemark = [self CheckEmpty:txtgongpeidianF18.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 19
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort19.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian19.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA19.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB19.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD19.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE19.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC19.text];
    strRemark = [self CheckEmpty:txtgongpeidianF19.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 20
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort20.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian20.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA20.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB20.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD20.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE20.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC20.text];
    strRemark = [self CheckEmpty:txtgongpeidianF20.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 21
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort21.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian21.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA21.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB21.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD21.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE21.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC21.text];
    strRemark = [self CheckEmpty:txtgongpeidianF21.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 22
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort22.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian22.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA22.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB22.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD22.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE22.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC22.text];
    strRemark = [self CheckEmpty:txtgongpeidianF22.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 23
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort23.text];
    strjianchaType =@"供配电设施";
    strjianchaPro =[self CheckEmpty:lblGongpeidian23.text];
    strSizeParas =[self CheckEmpty:txtgongpeidianA23.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtgongpeidianB23.text];
    strBadNum = [self CheckEmpty:txtgongpeidianD23.text];
    strBadDate =[self CheckEmpty:txtgongpeidianE23.text];
    strCompleteRate = [self CheckEmpty:txtgongpeidianC23.text];
    strRemark = [self CheckEmpty:txtgongpeidianF23.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strTbFlg = @"0";
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
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong1.text];
    strSizeParas =[self CheckEmpty:txtJiankongA1.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB1.text];
    strBadNum = [self CheckEmpty:txtJiankongD1.text];
    strBadDate =[self CheckEmpty:txtJiankongE1.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC1.text];
    strRemark = [self CheckEmpty:txtJiankongF1.text];
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
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    WanghaoDAC *rc = [WanghaoDAC alloc];
    Boolean add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 2
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort2.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong2.text];
    strSizeParas =[self CheckEmpty:txtJiankongA2.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB2.text];
    strBadNum = [self CheckEmpty:txtJiankongD2.text];
    strBadDate =[self CheckEmpty:txtJiankongE2.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC2.text];
    strRemark = [self CheckEmpty:txtJiankongF2.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 3
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort3.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong3.text];
    strSizeParas =[self CheckEmpty:txtJiankongA3.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB3.text];
    strBadNum = [self CheckEmpty:txtJiankongD3.text];
    strBadDate =[self CheckEmpty:txtJiankongE3.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC3.text];
    strRemark = [self CheckEmpty:txtJiankongF3.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 4
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort4.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong4.text];
    strSizeParas =[self CheckEmpty:txtJiankongA4.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB4.text];
    strBadNum = [self CheckEmpty:txtJiankongD4.text];
    strBadDate =[self CheckEmpty:txtJiankongE4.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC4.text];
    strRemark = [self CheckEmpty:txtJiankongF4.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 5
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort5.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong5.text];
    strSizeParas =[self CheckEmpty:txtJiankongA5.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB5.text];
    strBadNum = [self CheckEmpty:txtJiankongD5.text];
    strBadDate =[self CheckEmpty:txtJiankongE5.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC5.text];
    strRemark = [self CheckEmpty:txtJiankongF5.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 6
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort6.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong6.text];
    strSizeParas =[self CheckEmpty:txtJiankongA6.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB6.text];
    strBadNum = [self CheckEmpty:txtJiankongD6.text];
    strBadDate =[self CheckEmpty:txtJiankongE6.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC6.text];
    strRemark = [self CheckEmpty:txtJiankongF6.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 7
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort7.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong7.text];
    strSizeParas =[self CheckEmpty:txtJiankongA7.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB7.text];
    strBadNum = [self CheckEmpty:txtJiankongD7.text];
    strBadDate =[self CheckEmpty:txtJiankongE7.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC7.text];
    strRemark = [self CheckEmpty:txtJiankongF7.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 8
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort8.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong8.text];
    strSizeParas =[self CheckEmpty:txtJiankongA8.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB8.text];
    strBadNum = [self CheckEmpty:txtJiankongD8.text];
    strBadDate =[self CheckEmpty:txtJiankongE8.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC8.text];
    strRemark = [self CheckEmpty:txtJiankongF8.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 9
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort9.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong9.text];
    strSizeParas =[self CheckEmpty:txtJiankongA9.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB9.text];
    strBadNum = [self CheckEmpty:txtJiankongD9.text];
    strBadDate =[self CheckEmpty:txtJiankongE9.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC9.text];
    strRemark = [self CheckEmpty:txtJiankongF9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 10
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort10.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong10.text];
    strSizeParas =[self CheckEmpty:txtJiankongA10.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB10.text];
    strBadNum = [self CheckEmpty:txtJiankongD10.text];
    strBadDate =[self CheckEmpty:txtJiankongE10.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC10.text];
    strRemark = [self CheckEmpty:txtJiankongF10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 11
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort11.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong11.text];
    strSizeParas =[self CheckEmpty:txtJiankongA11.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB11.text];
    strBadNum = [self CheckEmpty:txtJiankongD11.text];
    strBadDate =[self CheckEmpty:txtJiankongE11.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC11.text];
    strRemark = [self CheckEmpty:txtJiankongF11.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 12
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort12.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong12.text];
    strSizeParas =[self CheckEmpty:txtJiankongA12.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB12.text];
    strBadNum = [self CheckEmpty:txtJiankongD12.text];
    strBadDate =[self CheckEmpty:txtJiankongE12.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC12.text];
    strRemark = [self CheckEmpty:txtJiankongF12.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 13
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort13.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong13.text];
    strSizeParas =[self CheckEmpty:txtJiankongA13.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB13.text];
    strBadNum = [self CheckEmpty:txtJiankongD13.text];
    strBadDate =[self CheckEmpty:txtJiankongE13.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC13.text];
    strRemark = [self CheckEmpty:txtJiankongF13.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 14
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort14.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong14.text];
    strSizeParas =[self CheckEmpty:txtJiankongA14.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB14.text];
    strBadNum = [self CheckEmpty:txtJiankongD14.text];
    strBadDate =[self CheckEmpty:txtJiankongE14.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC14.text];
    strRemark = [self CheckEmpty:txtJiankongF14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 15
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort15.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong15.text];
    strSizeParas =[self CheckEmpty:txtJiankongA15.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB15.text];
    strBadNum = [self CheckEmpty:txtJiankongD15.text];
    strBadDate =[self CheckEmpty:txtJiankongE15.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC15.text];
    strRemark = [self CheckEmpty:txtJiankongF15.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 16
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort16.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong16.text];
    strSizeParas =[self CheckEmpty:txtJiankongA16.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB16.text];
    strBadNum = [self CheckEmpty:txtJiankongD16.text];
    strBadDate =[self CheckEmpty:txtJiankongE16.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC16.text];
    strRemark = [self CheckEmpty:txtJiankongF16.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 17
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort17.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong17.text];
    strSizeParas =[self CheckEmpty:txtJiankongA17.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB17.text];
    strBadNum = [self CheckEmpty:txtJiankongD17.text];
    strBadDate =[self CheckEmpty:txtJiankongE17.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC17.text];
    strRemark = [self CheckEmpty:txtJiankongF17.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 18
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort18.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong18.text];
    strSizeParas =[self CheckEmpty:txtJiankongA18.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB18.text];
    strBadNum = [self CheckEmpty:txtJiankongD18.text];
    strBadDate =[self CheckEmpty:txtJiankongE18.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC18.text];
    strRemark = [self CheckEmpty:txtJiankongF18.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 19
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort19.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong19.text];
    strSizeParas =[self CheckEmpty:txtJiankongA19.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB19.text];
    strBadNum = [self CheckEmpty:txtJiankongD19.text];
    strBadDate =[self CheckEmpty:txtJiankongE19.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC19.text];
    strRemark = [self CheckEmpty:txtJiankongF19.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 20
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort20.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong20.text];
    strSizeParas =[self CheckEmpty:txtJiankongA20.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB20.text];
    strBadNum = [self CheckEmpty:txtJiankongD20.text];
    strBadDate =[self CheckEmpty:txtJiankongE20.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC20.text];
    strRemark = [self CheckEmpty:txtJiankongF20.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 21
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort21.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong21.text];
    strSizeParas =[self CheckEmpty:txtJiankongA21.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB21.text];
    strBadNum = [self CheckEmpty:txtJiankongD21.text];
    strBadDate =[self CheckEmpty:txtJiankongE21.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC21.text];
    strRemark = [self CheckEmpty:txtJiankongF21.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 22
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort22.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong22.text];
    strSizeParas =[self CheckEmpty:txtJiankongA22.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB22.text];
    strBadNum = [self CheckEmpty:txtJiankongD22.text];
    strBadDate =[self CheckEmpty:txtJiankongE22.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC22.text];
    strRemark = [self CheckEmpty:txtJiankongF22.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 23
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort23.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong23.text];
    strSizeParas =[self CheckEmpty:txtJiankongA23.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB23.text];
    strBadNum = [self CheckEmpty:txtJiankongD23.text];
    strBadDate =[self CheckEmpty:txtJiankongE23.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC23.text];
    strRemark = [self CheckEmpty:txtJiankongF23.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 24
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort24.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong24.text];
    strSizeParas =[self CheckEmpty:txtJiankongA24.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB24.text];
    strBadNum = [self CheckEmpty:txtJiankongD24.text];
    strBadDate =[self CheckEmpty:txtJiankongE24.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC24.text];
    strRemark = [self CheckEmpty:txtJiankongF24.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 25
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort25.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong25.text];
    strSizeParas =[self CheckEmpty:txtJiankongA25.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB25.text];
    strBadNum = [self CheckEmpty:txtJiankongD25.text];
    strBadDate =[self CheckEmpty:txtJiankongE25.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC25.text];
    strRemark = [self CheckEmpty:txtJiankongF25.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 26
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort26.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong26.text];
    strSizeParas =[self CheckEmpty:txtJiankongA26.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB26.text];
    strBadNum = [self CheckEmpty:txtJiankongD26.text];
    strBadDate =[self CheckEmpty:txtJiankongE26.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC26.text];
    strRemark = [self CheckEmpty:txtJiankongF26.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 27
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort27.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong27.text];
    strSizeParas =[self CheckEmpty:txtJiankongA27.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB27.text];
    strBadNum = [self CheckEmpty:txtJiankongD27.text];
    strBadDate =[self CheckEmpty:txtJiankongE27.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC27.text];
    strRemark = [self CheckEmpty:txtJiankongF27.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 28
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort28.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong28.text];
    strSizeParas =[self CheckEmpty:txtJiankongA28.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB28.text];
    strBadNum = [self CheckEmpty:txtJiankongD28.text];
    strBadDate =[self CheckEmpty:txtJiankongE28.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC28.text];
    strRemark = [self CheckEmpty:txtJiankongF28.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 29
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort29.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong29.text];
    strSizeParas =[self CheckEmpty:txtJiankongA29.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB29.text];
    strBadNum = [self CheckEmpty:txtJiankongD29.text];
    strBadDate =[self CheckEmpty:txtJiankongE29.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC29.text];
    strRemark = [self CheckEmpty:txtJiankongF29.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 30
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort30.text];
    strjianchaType =@"监控设施";
    strjianchaPro =[self CheckEmpty:lblJiankong30.text];
    strSizeParas =[self CheckEmpty:txtJiankongA30.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtJiankongB30.text];
    strBadNum = [self CheckEmpty:txtJiankongD30.text];
    strBadDate =[self CheckEmpty:txtJiankongE30.text];
    strCompleteRate = [self CheckEmpty:txtJiankongC30.text];
    strRemark = [self CheckEmpty:txtJiankongF30.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
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
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming1.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA1.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB1.text];
    strBadNum = [self CheckEmpty:txtZhaomingD1.text];
    strBadDate =[self CheckEmpty:txtZhaomingE1.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC1.text];
    strRemark = [self CheckEmpty:txtZhaomingF1.text];
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
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    WanghaoDAC *rc = [WanghaoDAC alloc];
    Boolean add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 2
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort2.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming2.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA2.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB2.text];
    strBadNum = [self CheckEmpty:txtZhaomingD2.text];
    strBadDate =[self CheckEmpty:txtZhaomingE2.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC2.text];
    strRemark = [self CheckEmpty:txtZhaomingF2.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 3
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort3.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming3.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA3.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB3.text];
    strBadNum = [self CheckEmpty:txtZhaomingD3.text];
    strBadDate =[self CheckEmpty:txtZhaomingE3.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC3.text];
    strRemark = [self CheckEmpty:txtZhaomingF3.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 4
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort4.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming4.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA4.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB4.text];
    strBadNum = [self CheckEmpty:txtZhaomingD4.text];
    strBadDate =[self CheckEmpty:txtZhaomingE4.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC4.text];
    strRemark = [self CheckEmpty:txtZhaomingF4.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 5
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort5.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming5.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA5.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB5.text];
    strBadNum = [self CheckEmpty:txtZhaomingD5.text];
    strBadDate =[self CheckEmpty:txtZhaomingE5.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC5.text];
    strRemark = [self CheckEmpty:txtZhaomingF5.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 6
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort6.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming6.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA6.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB6.text];
    strBadNum = [self CheckEmpty:txtZhaomingD6.text];
    strBadDate =[self CheckEmpty:txtZhaomingE6.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC6.text];
    strRemark = [self CheckEmpty:txtZhaomingF6.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 7
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort7.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming7.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA7.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB7.text];
    strBadNum = [self CheckEmpty:txtZhaomingD7.text];
    strBadDate =[self CheckEmpty:txtZhaomingE7.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC7.text];
    strRemark = [self CheckEmpty:txtZhaomingF7.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 8
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort8.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming8.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA8.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB8.text];
    strBadNum = [self CheckEmpty:txtZhaomingD8.text];
    strBadDate =[self CheckEmpty:txtZhaomingE8.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC8.text];
    strRemark = [self CheckEmpty:txtZhaomingF8.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 9
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort9.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming9.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA9.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB9.text];
    strBadNum = [self CheckEmpty:txtZhaomingD9.text];
    strBadDate =[self CheckEmpty:txtZhaomingE9.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC9.text];
    strRemark = [self CheckEmpty:txtZhaomingF9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 10
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort10.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming10.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA10.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB10.text];
    strBadNum = [self CheckEmpty:txtZhaomingD10.text];
    strBadDate =[self CheckEmpty:txtZhaomingE10.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC10.text];
    strRemark = [self CheckEmpty:txtZhaomingF10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 11
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort11.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming11.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA11.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB11.text];
    strBadNum = [self CheckEmpty:txtZhaomingD11.text];
    strBadDate =[self CheckEmpty:txtZhaomingE11.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC11.text];
    strRemark = [self CheckEmpty:txtZhaomingF11.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 12
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort12.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming12.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA12.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB12.text];
    strBadNum = [self CheckEmpty:txtZhaomingD12.text];
    strBadDate =[self CheckEmpty:txtZhaomingE12.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC12.text];
    strRemark = [self CheckEmpty:txtZhaomingF12.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 13
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort13.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming13.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA13.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB13.text];
    strBadNum = [self CheckEmpty:txtZhaomingD13.text];
    strBadDate =[self CheckEmpty:txtZhaomingE13.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC13.text];
    strRemark = [self CheckEmpty:txtZhaomingF13.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 14
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort14.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming14.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA14.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB14.text];
    strBadNum = [self CheckEmpty:txtZhaomingD14.text];
    strBadDate =[self CheckEmpty:txtZhaomingE14.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC14.text];
    strRemark = [self CheckEmpty:txtZhaomingF14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 15
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort15.text];
    strjianchaType =@"照明设施";
    strjianchaPro =[self CheckEmpty:lblZhaoming15.text];
    strSizeParas =[self CheckEmpty:txtZhaomingA15.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtZhaomingB15.text];
    strBadNum = [self CheckEmpty:txtZhaomingD15.text];
    strBadDate =[self CheckEmpty:txtZhaomingE15.text];
    strCompleteRate = [self CheckEmpty:txtZhaomingC15.text];
    strRemark = [self CheckEmpty:txtZhaomingF15.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return add;
}

// 添加第5组数据
-(Boolean)AddData5
{
    // 1
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort1.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang1.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA1.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB1.text];
    strBadNum = [self CheckEmpty:txtXiaofangD1.text];
    strBadDate =[self CheckEmpty:txtXiaofangE1.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC1.text];
    strRemark = [self CheckEmpty:txtXiaofangF1.text];
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
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    WanghaoDAC *rc = [WanghaoDAC alloc];
    Boolean add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 2
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort2.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang2.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA2.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB2.text];
    strBadNum = [self CheckEmpty:txtXiaofangD2.text];
    strBadDate =[self CheckEmpty:txtXiaofangE2.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC2.text];
    strRemark = [self CheckEmpty:txtXiaofangF2.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 3
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort3.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang3.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA3.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB3.text];
    strBadNum = [self CheckEmpty:txtXiaofangD3.text];
    strBadDate =[self CheckEmpty:txtXiaofangE3.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC3.text];
    strRemark = [self CheckEmpty:txtXiaofangF3.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 4
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort4.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang4.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA4.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB4.text];
    strBadNum = [self CheckEmpty:txtXiaofangD4.text];
    strBadDate =[self CheckEmpty:txtXiaofangE4.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC4.text];
    strRemark = [self CheckEmpty:txtXiaofangF4.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 5
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort5.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang5.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA5.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB5.text];
    strBadNum = [self CheckEmpty:txtXiaofangD5.text];
    strBadDate =[self CheckEmpty:txtXiaofangE5.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC5.text];
    strRemark = [self CheckEmpty:txtXiaofangF5.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 6
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort6.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang6.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA6.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB6.text];
    strBadNum = [self CheckEmpty:txtXiaofangD6.text];
    strBadDate =[self CheckEmpty:txtXiaofangE6.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC6.text];
    strRemark = [self CheckEmpty:txtXiaofangF6.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 7
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort7.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang7.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA7.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB7.text];
    strBadNum = [self CheckEmpty:txtXiaofangD7.text];
    strBadDate =[self CheckEmpty:txtXiaofangE7.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC7.text];
    strRemark = [self CheckEmpty:txtXiaofangF7.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 8
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort8.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang8.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA8.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB8.text];
    strBadNum = [self CheckEmpty:txtXiaofangD8.text];
    strBadDate =[self CheckEmpty:txtXiaofangE8.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC8.text];
    strRemark = [self CheckEmpty:txtXiaofangF8.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 9
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort9.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang9.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA9.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB9.text];
    strBadNum = [self CheckEmpty:txtXiaofangD9.text];
    strBadDate =[self CheckEmpty:txtXiaofangE9.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC9.text];
    strRemark = [self CheckEmpty:txtXiaofangF9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 10
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort10.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang10.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA10.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB10.text];
    strBadNum = [self CheckEmpty:txtXiaofangD10.text];
    strBadDate =[self CheckEmpty:txtXiaofangE10.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC10.text];
    strRemark = [self CheckEmpty:txtXiaofangF10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 11
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort11.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang11.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA11.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB11.text];
    strBadNum = [self CheckEmpty:txtXiaofangD11.text];
    strBadDate =[self CheckEmpty:txtXiaofangE11.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC11.text];
    strRemark = [self CheckEmpty:txtXiaofangF11.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 12
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort12.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang12.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA12.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB12.text];
    strBadNum = [self CheckEmpty:txtXiaofangD12.text];
    strBadDate =[self CheckEmpty:txtXiaofangE12.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC12.text];
    strRemark = [self CheckEmpty:txtXiaofangF12.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 13
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort13.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang13.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA13.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB13.text];
    strBadNum = [self CheckEmpty:txtXiaofangD13.text];
    strBadDate =[self CheckEmpty:txtXiaofangE13.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC13.text];
    strRemark = [self CheckEmpty:txtXiaofangF13.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 14
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort14.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang14.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA14.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB14.text];
    strBadNum = [self CheckEmpty:txtXiaofangD14.text];
    strBadDate =[self CheckEmpty:txtXiaofangE14.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC14.text];
    strRemark = [self CheckEmpty:txtXiaofangF14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 15
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort15.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang15.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA15.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB15.text];
    strBadNum = [self CheckEmpty:txtXiaofangD15.text];
    strBadDate =[self CheckEmpty:txtXiaofangE15.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC15.text];
    strRemark = [self CheckEmpty:txtXiaofangF15.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 16
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort16.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang16.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA16.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB16.text];
    strBadNum = [self CheckEmpty:txtXiaofangD16.text];
    strBadDate =[self CheckEmpty:txtXiaofangE16.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC16.text];
    strRemark = [self CheckEmpty:txtXiaofangF16.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 17
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort17.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang17.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA17.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB17.text];
    strBadNum = [self CheckEmpty:txtXiaofangD17.text];
    strBadDate =[self CheckEmpty:txtXiaofangE17.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC17.text];
    strRemark = [self CheckEmpty:txtXiaofangF17.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 18
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort18.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang18.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA18.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB18.text];
    strBadNum = [self CheckEmpty:txtXiaofangD18.text];
    strBadDate =[self CheckEmpty:txtXiaofangE18.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC18.text];
    strRemark = [self CheckEmpty:txtXiaofangF18.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [WanghaoDAC alloc];
    add = [rc AddEquipmentWithTunnelID:strTunnelID jianchaType:strjianchaType SortID:strSortID jianchaPro:strjianchaPro SizeParas:strSizeParas Units:strUnits TotalNum:strTotalNum BadNum:strBadNum BadDate:strBadDate CompleteRate:strCompleteRate Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 19
    strTunnelID = @"1";
    strSortID =[self CheckEmpty:lblSort19.text];
    strjianchaType =@"消防及救援设施";
    strjianchaPro =[self CheckEmpty:lblXiaofang19.text];
    strSizeParas =[self CheckEmpty:txtXiaofangA19.text];
    strUnits = @"台";
    strTotalNum = [self CheckEmpty:txtXiaofangB19.text];
    strBadNum = [self CheckEmpty:txtXiaofangD19.text];
    strBadDate =[self CheckEmpty:txtXiaofangE19.text];
    strCompleteRate = [self CheckEmpty:txtXiaofangC19.text];
    strRemark = [self CheckEmpty:txtXiaofangF19.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
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
    
    if([txtid isEqualToString:@"txtgongpeidianE10"])
    {
        txtgongpeidianC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB10.text BadNum:txtgongpeidianD10.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE11"])
    {
        txtgongpeidianC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB11.text BadNum:txtgongpeidianD11.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE12"])
    {
        txtgongpeidianC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB12.text BadNum:txtgongpeidianD12.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE13"])
    {
        txtgongpeidianC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB13.text BadNum:txtgongpeidianD13.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE14"])
    {
        txtgongpeidianC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB14.text BadNum:txtgongpeidianD14.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE15"])
    {
        txtgongpeidianC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB15.text BadNum:txtgongpeidianD15.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE16"])
    {
        txtgongpeidianC16.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB16.text BadNum:txtgongpeidianD16.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE17"])
    {
        txtgongpeidianC17.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB17.text BadNum:txtgongpeidianD17.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE18"])
    {
        txtgongpeidianC18.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB18.text BadNum:txtgongpeidianD18.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE19"])
    {
        txtgongpeidianC19.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB19.text BadNum:txtgongpeidianD19.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE20"])
    {
        txtgongpeidianC20.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB20.text BadNum:txtgongpeidianD20.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE21"])
    {
        txtgongpeidianC21.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB21.text BadNum:txtgongpeidianD21.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE22"])
    {
        txtgongpeidianC22.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB22.text BadNum:txtgongpeidianD22.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianE23"])
    {
        txtgongpeidianC23.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtgongpeidianB23.text BadNum:txtgongpeidianD23.text]];
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
    // 通风设备end------------------------------------------------------------------------------------------------------------------------
    
    
    // 监控star-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtJiankongE1"])
    {
        txtJiankongC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB1.text BadNum:txtJiankongD1.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE2"])
    {
        txtJiankongC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB2.text BadNum:txtJiankongD2.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE3"])
    {
        txtJiankongC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB3.text BadNum:txtJiankongD3.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE4"])
    {
        txtJiankongC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB4.text BadNum:txtJiankongD4.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE5"])
    {
        txtJiankongC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB5.text BadNum:txtJiankongD5.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE6"])
    {
        txtJiankongC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB6.text BadNum:txtJiankongD6.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE7"])
    {
        txtJiankongC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB7.text BadNum:txtJiankongD7.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE8"])
    {
        txtJiankongC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB8.text BadNum:txtJiankongD8.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE9"])
    {
        txtJiankongC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB9.text BadNum:txtJiankongD9.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE10"])
    {
        txtJiankongC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB10.text BadNum:txtJiankongD10.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE11"])
    {
        txtJiankongC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB11.text BadNum:txtJiankongD11.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE12"])
    {
        txtJiankongC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB12.text BadNum:txtJiankongD12.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE13"])
    {
        txtJiankongC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB13.text BadNum:txtJiankongD13.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE14"])
    {
        txtJiankongC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB14.text BadNum:txtJiankongD14.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE15"])
    {
        txtJiankongC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB15.text BadNum:txtJiankongD15.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE16"])
    {
        txtJiankongC16.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB16.text BadNum:txtJiankongD16.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE17"])
    {
        txtJiankongC17.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB17.text BadNum:txtJiankongD17.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE18"])
    {
        txtJiankongC18.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB18.text BadNum:txtJiankongD18.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE19"])
    {
        txtJiankongC19.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB19.text BadNum:txtJiankongD19.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE20"])
    {
        txtJiankongC20.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB20.text BadNum:txtJiankongD20.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE21"])
    {
        txtJiankongC21.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB21.text BadNum:txtJiankongD21.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE22"])
    {
        txtJiankongC22.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB22.text BadNum:txtJiankongD22.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE23"])
    {
        txtJiankongC23.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB23.text BadNum:txtJiankongD23.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE24"])
    {
        txtJiankongC24.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB24.text BadNum:txtJiankongD24.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE25"])
    {
        txtJiankongC25.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB25.text BadNum:txtJiankongD25.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE26"])
    {
        txtJiankongC26.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB26.text BadNum:txtJiankongD26.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE27"])
    {
        txtJiankongC27.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB27.text BadNum:txtJiankongD27.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE28"])
    {
        txtJiankongC28.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB28.text BadNum:txtJiankongD28.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE29"])
    {
        txtJiankongC29.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB29.text BadNum:txtJiankongD29.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongE30"])
    {
        txtJiankongC30.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtJiankongB30.text BadNum:txtJiankongD30.text]];
    }
    // 监控end -----------------------------------------------------------------------------------------------------------------------
    
    
    
    
    // 照明start-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtZhaomingE1"])
    {
        txtZhaomingC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB1.text BadNum:txtZhaomingD1.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE2"])
    {
        txtZhaomingC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB2.text BadNum:txtZhaomingD2.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE3"])
    {
        txtZhaomingC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB3.text BadNum:txtZhaomingD3.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE4"])
    {
        txtZhaomingC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB4.text BadNum:txtZhaomingD4.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE5"])
    {
        txtZhaomingC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB5.text BadNum:txtZhaomingD5.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE6"])
    {
        txtZhaomingC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB6.text BadNum:txtZhaomingD6.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE7"])
    {
        txtZhaomingC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB7.text BadNum:txtZhaomingD7.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE8"])
    {
        txtZhaomingC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB8.text BadNum:txtZhaomingD8.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE9"])
    {
        txtZhaomingC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB9.text BadNum:txtZhaomingD9.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE10"])
    {
        txtZhaomingC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB10.text BadNum:txtZhaomingD10.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE11"])
    {
        txtZhaomingC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB11.text BadNum:txtZhaomingD11.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE12"])
    {
        txtZhaomingC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB12.text BadNum:txtZhaomingD12.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE13"])
    {
        txtZhaomingC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB13.text BadNum:txtZhaomingD13.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE14"])
    {
        txtZhaomingC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB14.text BadNum:txtZhaomingD14.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingE15"])
    {
        txtZhaomingC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtZhaomingB15.text BadNum:txtZhaomingD15.text]];
    }
    // 照明end  -----------------------------------------------------------------------------------------------------------------------
    
    

    // 消防start-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtXiaofangE1"])
    {
        txtXiaofangC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB1.text BadNum:txtXiaofangD1.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE2"])
    {
        txtXiaofangC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB2.text BadNum:txtXiaofangD2.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE3"])
    {
        txtXiaofangC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB3.text BadNum:txtXiaofangD3.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE4"])
    {
        txtXiaofangC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB4.text BadNum:txtXiaofangD4.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE5"])
    {
        txtXiaofangC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB5.text BadNum:txtXiaofangD5.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE6"])
    {
        txtXiaofangC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB6.text BadNum:txtXiaofangD6.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE7"])
    {
        txtXiaofangC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB7.text BadNum:txtXiaofangD7.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE8"])
    {
        txtXiaofangC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB8.text BadNum:txtXiaofangD8.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE9"])
    {
        txtXiaofangC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB9.text BadNum:txtXiaofangD9.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE10"])
    {
        txtXiaofangC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB10.text BadNum:txtXiaofangD10.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE11"])
    {
        txtXiaofangC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB11.text BadNum:txtXiaofangD11.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE12"])
    {
        txtXiaofangC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB12.text BadNum:txtXiaofangD12.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE13"])
    {
        txtXiaofangC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB13.text BadNum:txtXiaofangD13.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE14"])
    {
        txtXiaofangC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB1.text BadNum:txtXiaofangD14.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE15"])
    {
        txtXiaofangC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB15.text BadNum:txtXiaofangD15.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE16"])
    {
        txtXiaofangC16.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB16.text BadNum:txtXiaofangD16.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE17"])
    {
        txtXiaofangC17.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB17.text BadNum:txtXiaofangD17.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE18"])
    {
        txtXiaofangC18.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB18.text BadNum:txtXiaofangD18.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangE19"])
    {
        txtXiaofangC19.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateAWithTotalNum:txtXiaofangB19.text BadNum:txtXiaofangD19.text]];
    }
    
    // 消防end  -----------------------------------------------------------------------------------------------------------------------

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
    
    if([txtid isEqualToString:@"txtgongpeidianD10"])
    {
        txtgongpeidianC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB10.text BadNum:txtgongpeidianD10.text BadDate:txtgongpeidianE10.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD11"])
    {
        txtgongpeidianC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB11.text BadNum:txtgongpeidianD11.text BadDate:txtgongpeidianE11.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD12"])
    {
        txtgongpeidianC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB12.text BadNum:txtgongpeidianD12.text BadDate:txtgongpeidianE12.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD13"])
    {
        txtgongpeidianC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB13.text BadNum:txtgongpeidianD13.text BadDate:txtgongpeidianE13.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD14"])
    {
        txtgongpeidianC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB14.text BadNum:txtgongpeidianD14.text BadDate:txtgongpeidianE14.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD15"])
    {
        txtgongpeidianC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB15.text BadNum:txtgongpeidianD15.text BadDate:txtgongpeidianE15.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD16"])
    {
        txtgongpeidianC16.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB16.text BadNum:txtgongpeidianD16.text BadDate:txtgongpeidianE16.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD17"])
    {
        txtgongpeidianC17.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB17.text BadNum:txtgongpeidianD17.text BadDate:txtgongpeidianE17.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD18"])
    {
        txtgongpeidianC18.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB18.text BadNum:txtgongpeidianD18.text BadDate:txtgongpeidianE18.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD19"])
    {
        txtgongpeidianC19.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB19.text BadNum:txtgongpeidianD19.text BadDate:txtgongpeidianE19.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD20"])
    {
        txtgongpeidianC20.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB20.text BadNum:txtgongpeidianD20.text BadDate:txtgongpeidianE20.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD21"])
    {
        txtgongpeidianC21.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB21.text BadNum:txtgongpeidianD21.text BadDate:txtgongpeidianE21.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD22"])
    {
        txtgongpeidianC22.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB22.text BadNum:txtgongpeidianD22.text BadDate:txtgongpeidianE22.text]];
    }
    
    if([txtid isEqualToString:@"txtgongpeidianD23"])
    {
        txtgongpeidianC23.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtgongpeidianB23.text BadNum:txtgongpeidianD23.text BadDate:txtgongpeidianE23.text]];
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
    // 通风设备end-----------------------------------------------------------------------------------------------------------------------
    
    
    // 监控star-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtJiankongD1"])
    {
        txtJiankongC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB1.text BadNum:txtJiankongD1.text BadDate:txtJiankongE1.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD2"])
    {
        txtJiankongC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB2.text BadNum:txtJiankongD2.text BadDate:txtJiankongE2.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD3"])
    {
        txtJiankongC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB3.text BadNum:txtJiankongD3.text BadDate:txtJiankongE3.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD4"])
    {
        txtJiankongC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB4.text BadNum:txtJiankongD4.text BadDate:txtJiankongE4.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD5"])
    {
        txtJiankongC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB5.text BadNum:txtJiankongD5.text BadDate:txtJiankongE5.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD6"])
    {
        txtJiankongC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB6.text BadNum:txtJiankongD6.text BadDate:txtJiankongE6.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD7"])
    {
        txtJiankongC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB7.text BadNum:txtJiankongD7.text BadDate:txtJiankongE7.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD8"])
    {
        txtJiankongC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB8.text BadNum:txtJiankongD8.text BadDate:txtJiankongE8.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD9"])
    {
        txtJiankongC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB9.text BadNum:txtJiankongD9.text BadDate:txtJiankongE9.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD10"])
    {
        txtJiankongC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB10.text BadNum:txtJiankongD10.text BadDate:txtJiankongE10.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD11"])
    {
        txtJiankongC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB11.text BadNum:txtJiankongD11.text BadDate:txtJiankongE11.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD12"])
    {
        txtJiankongC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB12.text BadNum:txtJiankongD12.text BadDate:txtJiankongE12.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD13"])
    {
        txtJiankongC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB13.text BadNum:txtJiankongD13.text BadDate:txtJiankongE13.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD14"])
    {
        txtJiankongC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB14.text BadNum:txtJiankongD14.text BadDate:txtJiankongE14.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD15"])
    {
        txtJiankongC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB15.text BadNum:txtJiankongD15.text BadDate:txtJiankongE15.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD16"])
    {
        txtJiankongC16.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB16.text BadNum:txtJiankongD16.text BadDate:txtJiankongE16.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD17"])
    {
        txtJiankongC17.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB17.text BadNum:txtJiankongD17.text BadDate:txtJiankongE17.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD18"])
    {
        txtJiankongC18.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB18.text BadNum:txtJiankongD18.text BadDate:txtJiankongE18.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD19"])
    {
        txtJiankongC19.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB19.text BadNum:txtJiankongD19.text BadDate:txtJiankongE19.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD20"])
    {
        txtJiankongC20.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB20.text BadNum:txtJiankongD20.text BadDate:txtJiankongE20.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD21"])
    {
        txtJiankongC21.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB21.text BadNum:txtJiankongD21.text BadDate:txtJiankongE21.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD22"])
    {
        txtJiankongC22.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB22.text BadNum:txtJiankongD22.text BadDate:txtJiankongE22.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD23"])
    {
        txtJiankongC23.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB23.text BadNum:txtJiankongD23.text BadDate:txtJiankongE23.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD24"])
    {
        txtJiankongC24.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB24.text BadNum:txtJiankongD24.text BadDate:txtJiankongE24.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD25"])
    {
        txtJiankongC25.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB25.text BadNum:txtJiankongD25.text BadDate:txtJiankongE25.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD26"])
    {
        txtJiankongC26.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB26.text BadNum:txtJiankongD26.text BadDate:txtJiankongE26.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD27"])
    {
        txtJiankongC27.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB27.text BadNum:txtJiankongD27.text BadDate:txtJiankongE27.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD28"])
    {
        txtJiankongC28.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB28.text BadNum:txtJiankongD28.text BadDate:txtJiankongE28.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD29"])
    {
        txtJiankongC29.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB29.text BadNum:txtJiankongD29.text BadDate:txtJiankongE29.text]];
    }
    
    if([txtid isEqualToString:@"txtJiankongD30"])
    {
        txtJiankongC30.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtJiankongB30.text BadNum:txtJiankongD30.text BadDate:txtJiankongE30.text]];
    }
    
    // 监控end -----------------------------------------------------------------------------------------------------------------------
    
    // 照明start-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtZhaomingD1"])
    {
        txtZhaomingC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB1.text BadNum:txtZhaomingD1.text BadDate:txtZhaomingE1.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD2"])
    {
        txtZhaomingC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB2.text BadNum:txtZhaomingD2.text BadDate:txtZhaomingE2.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD3"])
    {
        txtZhaomingC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB3.text BadNum:txtZhaomingD3.text BadDate:txtZhaomingE3.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD4"])
    {
        txtZhaomingC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB4.text BadNum:txtZhaomingD4.text BadDate:txtZhaomingE4.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD5"])
    {
        txtZhaomingC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB5.text BadNum:txtZhaomingD5.text BadDate:txtZhaomingE5.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD6"])
    {
        txtZhaomingC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB6.text BadNum:txtZhaomingD6.text BadDate:txtZhaomingE6.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD7"])
    {
        txtZhaomingC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB7.text BadNum:txtZhaomingD7.text BadDate:txtZhaomingE7.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD8"])
    {
        txtZhaomingC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB8.text BadNum:txtZhaomingD8.text BadDate:txtZhaomingE8.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD9"])
    {
        txtZhaomingC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB9.text BadNum:txtZhaomingD9.text BadDate:txtZhaomingE9.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD10"])
    {
        txtZhaomingC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB10.text BadNum:txtZhaomingD10.text BadDate:txtZhaomingE10.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD11"])
    {
        txtZhaomingC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB11.text BadNum:txtZhaomingD11.text BadDate:txtZhaomingE11.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD12"])
    {
        txtZhaomingC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB12.text BadNum:txtZhaomingD12.text BadDate:txtZhaomingE12.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD13"])
    {
        txtZhaomingC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB13.text BadNum:txtZhaomingD13.text BadDate:txtZhaomingE13.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD14"])
    {
        txtZhaomingC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB14.text BadNum:txtZhaomingD14.text BadDate:txtZhaomingE14.text]];
    }
    
    if([txtid isEqualToString:@"txtZhaomingD15"])
    {
        txtZhaomingC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtZhaomingB15.text BadNum:txtZhaomingD15.text BadDate:txtZhaomingE15.text]];
    }
    // 照明end  -----------------------------------------------------------------------------------------------------------------------
    
    
    // 消防start-----------------------------------------------------------------------------------------------------------------------
    if([txtid isEqualToString:@"txtXiaofangD1"])
    {
        txtXiaofangC1.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB1.text BadNum:txtXiaofangD1.text BadDate:txtXiaofangE1.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD2"])
    {
        txtXiaofangC2.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB2.text BadNum:txtXiaofangD2.text BadDate:txtXiaofangE2.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD3"])
    {
        txtXiaofangC3.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB3.text BadNum:txtXiaofangD3.text BadDate:txtXiaofangE3.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD4"])
    {
        txtXiaofangC4.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB4.text BadNum:txtXiaofangD4.text BadDate:txtXiaofangE4.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD5"])
    {
        txtXiaofangC5.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB5.text BadNum:txtXiaofangD5.text BadDate:txtXiaofangE5.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD6"])
    {
        txtXiaofangC6.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB6.text BadNum:txtXiaofangD6.text BadDate:txtXiaofangE6.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD7"])
    {
        txtXiaofangC7.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB7.text BadNum:txtXiaofangD7.text BadDate:txtXiaofangE7.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD8"])
    {
        txtXiaofangC8.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB8.text BadNum:txtXiaofangD8.text BadDate:txtXiaofangE8.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD9"])
    {
        txtXiaofangC9.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB9.text BadNum:txtXiaofangD9.text BadDate:txtXiaofangE9.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD10"])
    {
        txtXiaofangC10.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB10.text BadNum:txtXiaofangD10.text BadDate:txtXiaofangE10.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD11"])
    {
        txtXiaofangC11.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB11.text BadNum:txtXiaofangD11.text BadDate:txtXiaofangE11.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD12"])
    {
        txtXiaofangC12.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB12.text BadNum:txtXiaofangD12.text BadDate:txtXiaofangE12.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD13"])
    {
        txtXiaofangC13.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB13.text BadNum:txtXiaofangD13.text BadDate:txtXiaofangE13.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD14"])
    {
        txtXiaofangC14.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB14.text BadNum:txtXiaofangD14.text BadDate:txtXiaofangE14.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD15"])
    {
        txtXiaofangC15.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB15.text BadNum:txtXiaofangD15.text BadDate:txtXiaofangE15.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD16"])
    {
        txtXiaofangC16.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB16.text BadNum:txtXiaofangD16.text BadDate:txtXiaofangE16.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD17"])
    {
        txtXiaofangC17.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB17.text BadNum:txtXiaofangD17.text BadDate:txtXiaofangE17.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD18"])
    {
        txtXiaofangC18.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB18.text BadNum:txtXiaofangD18.text BadDate:txtXiaofangE18.text]];
    }
    
    if([txtid isEqualToString:@"txtXiaofangD19"])
    {
        txtXiaofangC19.text = [NSString stringWithFormat:@"%.2f", [self CompleteRateBWithTotalNum:txtXiaofangB19.text BadNum:txtXiaofangD19.text BadDate:txtXiaofangE19.text]];
    }
    
    // 消防end  -----------------------------------------------------------------------------------------------------------------------
    
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
