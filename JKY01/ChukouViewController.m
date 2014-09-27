//
//  ChukouViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-4-3.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "ChukouViewController.h"
#import "ErrLog.h"
#import "SYSCarCheckDAC.h"

@interface ChukouViewController ()

@end

@implementation ChukouViewController
@synthesize lblSort1,
lblSort2,
lblSort3,
lblSort4,
lblSort5,
lblSort6,
lblSort7,
lblSort8,
lblSort9,
lblSort10,
lblSort11,
lblSort12,
lblSort13,
lblSort14,
lblSort15,
lblSort16,
lblSort17,
lblSort18,
lblSort19,
lblSort20,
lblSort21,
lblSort22,
lblSort23,
lblSort24,
lblSort25,
lblSort26,
lblSort27;
@synthesize lblshoufeiting,
txt11,
txt12,
txt13,
txt14,
txt15,
txt16,
txtbeizhu1;
@synthesize lbltingneipeidianxiang,
txt21,
txt22,
txt23,
txt24,
txt25,
txt26,
txtbeizhu2;
@synthesize lbltingneishiyingqi,
txt31,
txt32,
txt33,
txt34,
txt35,
txt36,
txtbeizhu3;
@synthesize lblchedaoji,
txt41,
txt42,
txt43,
txt44,
txt45,
txt46,
txtbeizhu4;
@synthesize lblshoufeixianshiqi,
txt51,
txt52,
txt53,
txt54,
txt55,
txt56,
txtbeizhu5;
@synthesize lblshoufeijianpang,
txt61,
txt62,
txt63,
txt64,
txt65,
txt66,
txtbeizhu6;
@synthesize lbldukaqi,
txt71,
txt72,
txt73,
txt74,
txt75,
txt76,
txtbeizhu7;
@synthesize lblduijiangdianhua,
txt81,
txt82,
txt83,
txt84,
txt85,
txt86,
txtbeizhu8;
@synthesize lbljiaotabaojingqi,
txt91,
txt92,
txt93,
txt94,
txt95,
txt96,
txtbeizhu9;
@synthesize lblshengguangbaojingqi,
txt101,
txt102,
txt103,
txt104,
txt105,
txt106,
txtbeizhu10;
@synthesize lbltingneishexiangji,
txt111,
txt112,
txt113,
txt114,
txt115,
txt116,
txtbeizhu11;
@synthesize lblchedaoshexiangji,
txt121,
txt122,
txt123,
txt124,
txt125,
txt126,
txtbeizhu12;
@synthesize lblchepaishibie,
txt131,
txt132,
txt133,
txt134,
txt135,
txt136,
txtbeizhu13;
@synthesize lblchedaolangganji,
txt141,
txt142,
txt143,
txt144,
txt145,
txt146,
txtbeizhu14;
@synthesize lblcheliangjiance,
txt151,
txt152,
txt153,
txt154,
txt155,
txt156,
txtbeizhu15;
@synthesize lblshoudong,
txt161,
txt162,
txt163,
txt164,
txt165,
txt166,
txtbeizhu16;
@synthesize lblwudeng,
txt171,
txt172,
txt173,
txt174,
txt175,
txt176,
txtbeizhu17;
@synthesize lblchedaotongxingdeng,
txt181,
txt182,
txt183,
txt184,
txt185,
txt186,
txtbeizhu18;
@synthesize lblchedaozhishideng,
txt191,
txt192,
txt193,
txt194,
txt195,
txt196,
txtbeizhu19;
@synthesize lblkongtiao,
txt201,
txt202,
txt203,
txt204,
txt205,
txt206,
txtbeizhu20;
@synthesize lblfeier,
txt211,
txt212,
txt213,
txt214,
txt215,
txt216,
txtbeizhu21;
@synthesize lblpiaoju,
txt221,
txt222,
txt223,
txt224,
txt225,
txt226,
txtbeizhu22;
@synthesize lbljizhongcheng,
txt231,
txt232,
txt233,
txt234,
txt235,
txt236,
txtbeizhu23;
@synthesize lblETC,
txt241,
txt242,
txt243,
txt244,
txt245,
txt246,
txtbeizhu24;
@synthesize lblETCweibo,
txt251,
txt252,
txt253,
txt254,
txt255,
txt256,
txtbeizhu25;
@synthesize lblETCshoufei,
txt261,
txt262,
txt263,
txt264,
txt265,
txt266,
txtbeizhu26;
@synthesize lblbianxieshoufei,
txt271,
txt272,
txt273,
txt274,
txt275,
txt276,
txtbeizhu27;




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
    
    
    if ([self AddData1] )
    {
        
    }
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[ErrLog GetOptTitle]  message:[ErrLog Getexception] delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alert show];
    
}

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



// 添加第一组数据
-(Boolean)AddData1
{
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];;
    strCheckPro = [self CheckEmpty:lblshoufeiting.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt11.text];
    Num2 = [self CheckEmpty:txt12.text];
    Num3 = [self CheckEmpty:txt13.text];
    Num4 = [self CheckEmpty:txt14.text];
    Num5 = [self CheckEmpty:txt15.text];
    Num6 = [self CheckEmpty:txt16.text];
    strRemark = [self CheckEmpty:txtbeizhu1.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    SYSCarCheckDAC *cc = [SYSCarCheckDAC alloc];
    Boolean add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    
    // 第2组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];;
    strCheckPro = [self CheckEmpty:lbltingneipeidianxiang.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt21.text];
    Num2 = [self CheckEmpty:txt22.text];
    Num3 = [self CheckEmpty:txt23.text];
    Num4 = [self CheckEmpty:txt24.text];
    Num5 = [self CheckEmpty:txt25.text];
    Num6 = [self CheckEmpty:txt26.text];
    strRemark = [self CheckEmpty:txtbeizhu2.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第3组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];;
    strCheckPro = [self CheckEmpty:lbltingneishiyingqi.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt31.text];
    Num2 = [self CheckEmpty:txt32.text];
    Num3 = [self CheckEmpty:txt33.text];
    Num4 = [self CheckEmpty:txt34.text];
    Num5 = [self CheckEmpty:txt35.text];
    Num6 = [self CheckEmpty:txt36.text];
    strRemark = [self CheckEmpty:txtbeizhu3.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第4组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];;
    strCheckPro = [self CheckEmpty:lblchedaoji.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt41.text];
    Num2 = [self CheckEmpty:txt42.text];
    Num3 = [self CheckEmpty:txt43.text];
    Num4 = [self CheckEmpty:txt44.text];
    Num5 = [self CheckEmpty:txt45.text];
    Num6 = [self CheckEmpty:txt46.text];
    strRemark = [self CheckEmpty:txtbeizhu4.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第5组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort5.text];;
    strCheckPro = [self CheckEmpty:lblshoufeixianshiqi.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt51.text];
    Num2 = [self CheckEmpty:txt52.text];
    Num3 = [self CheckEmpty:txt53.text];
    Num4 = [self CheckEmpty:txt54.text];
    Num5 = [self CheckEmpty:txt55.text];
    Num6 = [self CheckEmpty:txt56.text];
    strRemark = [self CheckEmpty:txtbeizhu5.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第6组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort6.text];;
    strCheckPro = [self CheckEmpty:lblshoufeijianpang.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt61.text];
    Num2 = [self CheckEmpty:txt62.text];
    Num3 = [self CheckEmpty:txt63.text];
    Num4 = [self CheckEmpty:txt64.text];
    Num5 = [self CheckEmpty:txt65.text];
    Num6 = [self CheckEmpty:txt66.text];
    strRemark = [self CheckEmpty:txtbeizhu6.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第7组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort7.text];;
    strCheckPro = [self CheckEmpty:lbldukaqi.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt71.text];
    Num2 = [self CheckEmpty:txt72.text];
    Num3 = [self CheckEmpty:txt73.text];
    Num4 = [self CheckEmpty:txt74.text];
    Num5 = [self CheckEmpty:txt75.text];
    Num6 = [self CheckEmpty:txt76.text];
    strRemark = [self CheckEmpty:txtbeizhu7.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第8组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort8.text];;
    strCheckPro = [self CheckEmpty:lblduijiangdianhua.text];
    strUnit = @"部";
    Num1 = [self CheckEmpty:txt81.text];
    Num2 = [self CheckEmpty:txt82.text];
    Num3 = [self CheckEmpty:txt83.text];
    Num4 = [self CheckEmpty:txt84.text];
    Num5 = [self CheckEmpty:txt85.text];
    Num6 = [self CheckEmpty:txt86.text];
    strRemark = [self CheckEmpty:txtbeizhu8.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第9组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort9.text];;
    strCheckPro = [self CheckEmpty:lbljiaotabaojingqi.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt91.text];
    Num2 = [self CheckEmpty:txt92.text];
    Num3 = [self CheckEmpty:txt93.text];
    Num4 = [self CheckEmpty:txt94.text];
    Num5 = [self CheckEmpty:txt95.text];
    Num6 = [self CheckEmpty:txt96.text];
    strRemark = [self CheckEmpty:txtbeizhu9.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第10组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort10.text];;
    strCheckPro = [self CheckEmpty:lblshengguangbaojingqi.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt101.text];
    Num2 = [self CheckEmpty:txt102.text];
    Num3 = [self CheckEmpty:txt103.text];
    Num4 = [self CheckEmpty:txt104.text];
    Num5 = [self CheckEmpty:txt105.text];
    Num6 = [self CheckEmpty:txt106.text];
    strRemark = [self CheckEmpty:txtbeizhu10.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第11组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort11.text];;
    strCheckPro = [self CheckEmpty:lbltingneishexiangji.text];
    strUnit = @"台";
    Num1 = [self CheckEmpty:txt111.text];
    Num2 = [self CheckEmpty:txt112.text];
    Num3 = [self CheckEmpty:txt113.text];
    Num4 = [self CheckEmpty:txt114.text];
    Num5 = [self CheckEmpty:txt115.text];
    Num6 = [self CheckEmpty:txt116.text];
    strRemark = [self CheckEmpty:txtbeizhu11.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    
    // 第12组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort12.text];;
    strCheckPro = [self CheckEmpty:lblchedaoshexiangji.text];
    strUnit = @"台";
    Num1 = [self CheckEmpty:txt121.text];
    Num2 = [self CheckEmpty:txt122.text];
    Num3 = [self CheckEmpty:txt123.text];
    Num4 = [self CheckEmpty:txt124.text];
    Num5 = [self CheckEmpty:txt125.text];
    Num6 = [self CheckEmpty:txt126.text];
    strRemark = [self CheckEmpty:txtbeizhu12.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    
    // 第13组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort13.text];;
    strCheckPro = [self CheckEmpty:lblchepaishibie.text];
    strUnit = @"套";
    Num1 = [self CheckEmpty:txt131.text];
    Num2 = [self CheckEmpty:txt132.text];
    Num3 = [self CheckEmpty:txt133.text];
    Num4 = [self CheckEmpty:txt134.text];
    Num5 = [self CheckEmpty:txt135.text];
    Num6 = [self CheckEmpty:txt136.text];
    strRemark = [self CheckEmpty:txtbeizhu13.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    
    // 第14组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort14.text];;
    strCheckPro = [self CheckEmpty:lblchedaolangganji.text];
    strUnit = @"套";
    Num1 = [self CheckEmpty:txt141.text];
    Num2 = [self CheckEmpty:txt142.text];
    Num3 = [self CheckEmpty:txt143.text];
    Num4 = [self CheckEmpty:txt144.text];
    Num5 = [self CheckEmpty:txt145.text];
    Num6 = [self CheckEmpty:txt146.text];
    strRemark = [self CheckEmpty:txtbeizhu14.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第15组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort15.text];;
    strCheckPro = [self CheckEmpty:lblcheliangjiance.text];
    strUnit = @"套";
    Num1 = [self CheckEmpty:txt151.text];
    Num2 = [self CheckEmpty:txt152.text];
    Num3 = [self CheckEmpty:txt153.text];
    Num4 = [self CheckEmpty:txt154.text];
    Num5 = [self CheckEmpty:txt155.text];
    Num6 = [self CheckEmpty:txt156.text];
    strRemark = [self CheckEmpty:txtbeizhu15.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第16组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort16.text];;
    strCheckPro = [self CheckEmpty:lblshoudong.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt161.text];
    Num2 = [self CheckEmpty:txt162.text];
    Num3 = [self CheckEmpty:txt163.text];
    Num4 = [self CheckEmpty:txt164.text];
    Num5 = [self CheckEmpty:txt165.text];
    Num6 = [self CheckEmpty:txt166.text];
    strRemark = [self CheckEmpty:txtbeizhu16.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第17组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort17.text];;
    strCheckPro = [self CheckEmpty:lblwudeng.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt171.text];
    Num2 = [self CheckEmpty:txt172.text];
    Num3 = [self CheckEmpty:txt173.text];
    Num4 = [self CheckEmpty:txt174.text];
    Num5 = [self CheckEmpty:txt175.text];
    Num6 = [self CheckEmpty:txt176.text];
    strRemark = [self CheckEmpty:txtbeizhu17.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第18组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort18.text];;
    strCheckPro = [self CheckEmpty:lblchedaotongxingdeng.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt181.text];
    Num2 = [self CheckEmpty:txt182.text];
    Num3 = [self CheckEmpty:txt183.text];
    Num4 = [self CheckEmpty:txt184.text];
    Num5 = [self CheckEmpty:txt185.text];
    Num6 = [self CheckEmpty:txt186.text];
    strRemark = [self CheckEmpty:txtbeizhu18.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第19组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort19.text];;
    strCheckPro = [self CheckEmpty:lblchedaozhishideng.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt191.text];
    Num2 = [self CheckEmpty:txt192.text];
    Num3 = [self CheckEmpty:txt193.text];
    Num4 = [self CheckEmpty:txt194.text];
    Num5 = [self CheckEmpty:txt195.text];
    Num6 = [self CheckEmpty:txt196.text];
    strRemark = [self CheckEmpty:txtbeizhu19.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];

    
    // 第20组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort20.text];;
    strCheckPro = [self CheckEmpty:lblkongtiao.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt201.text];
    Num2 = [self CheckEmpty:txt202.text];
    Num3 = [self CheckEmpty:txt203.text];
    Num4 = [self CheckEmpty:txt204.text];
    Num5 = [self CheckEmpty:txt205.text];
    Num6 = [self CheckEmpty:txt206.text];
    strRemark = [self CheckEmpty:txtbeizhu20.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    

    // 第21组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort21.text];;
    strCheckPro = [self CheckEmpty:lblfeier.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt211.text];
    Num2 = [self CheckEmpty:txt212.text];
    Num3 = [self CheckEmpty:txt213.text];
    Num4 = [self CheckEmpty:txt214.text];
    Num5 = [self CheckEmpty:txt215.text];
    Num6 = [self CheckEmpty:txt216.text];
    strRemark = [self CheckEmpty:txtbeizhu21.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第22组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort22.text];;
    strCheckPro = [self CheckEmpty:lblpiaoju.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt221.text];
    Num2 = [self CheckEmpty:txt222.text];
    Num3 = [self CheckEmpty:txt223.text];
    Num4 = [self CheckEmpty:txt224.text];
    Num5 = [self CheckEmpty:txt225.text];
    Num6 = [self CheckEmpty:txt226.text];
    strRemark = [self CheckEmpty:txtbeizhu22.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第23组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort23.text];;
    strCheckPro = [self CheckEmpty:lbljizhongcheng.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt231.text];
    Num2 = [self CheckEmpty:txt232.text];
    Num3 = [self CheckEmpty:txt233.text];
    Num4 = [self CheckEmpty:txt234.text];
    Num5 = [self CheckEmpty:txt235.text];
    Num6 = [self CheckEmpty:txt236.text];
    strRemark = [self CheckEmpty:txtbeizhu23.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第24组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort24.text];;
    strCheckPro = [self CheckEmpty:lblETC.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt241.text];
    Num2 = [self CheckEmpty:txt242.text];
    Num3 = [self CheckEmpty:txt243.text];
    Num4 = [self CheckEmpty:txt244.text];
    Num5 = [self CheckEmpty:txt245.text];
    Num6 = [self CheckEmpty:txt246.text];
    strRemark = [self CheckEmpty:txtbeizhu24.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第25组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort25.text];;
    strCheckPro = [self CheckEmpty:lblETCweibo.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt251.text];
    Num2 = [self CheckEmpty:txt252.text];
    Num3 = [self CheckEmpty:txt253.text];
    Num4 = [self CheckEmpty:txt254.text];
    Num5 = [self CheckEmpty:txt255.text];
    Num6 = [self CheckEmpty:txt256.text];
    strRemark = [self CheckEmpty:txtbeizhu25.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第26组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort26.text];;
    strCheckPro = [self CheckEmpty:lblETCshoufei.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt261.text];
    Num2 = [self CheckEmpty:txt262.text];
    Num3 = [self CheckEmpty:txt263.text];
    Num4 = [self CheckEmpty:txt264.text];
    Num5 = [self CheckEmpty:txt265.text];
    Num6 = [self CheckEmpty:txt266.text];
    strRemark = [self CheckEmpty:txtbeizhu26.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    // 第27组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort27.text];;
    strCheckPro = [self CheckEmpty:lblbianxieshoufei.text];
    strUnit = @"个";
    Num1 = [self CheckEmpty:txt271.text];
    Num2 = [self CheckEmpty:txt272.text];
    Num3 = [self CheckEmpty:txt273.text];
    Num4 = [self CheckEmpty:txt274.text];
    Num5 = [self CheckEmpty:txt275.text];
    Num6 = [self CheckEmpty:txt276.text];
    strRemark = [self CheckEmpty:txtbeizhu27.text];
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    senddate=[NSDate date];
    dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSCarCheckDAC alloc];
    add = [cc AddChukouCarCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro Unit:strUnit Num1:Num1 Num2:Num2 Num3:Num3 Num4:Num4 Num5:Num5 Num6:Num6 Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate flg:@"1" Uploadflg:strUploadflg];
    
    return add;
    
}


































@end
