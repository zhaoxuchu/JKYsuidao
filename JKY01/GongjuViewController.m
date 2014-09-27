//
//  GongjuViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-24.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "GongjuViewController.h"
#import "GongjuDAC.h"
#import "ErrLog.h"
#import "UserInfo.h"

@interface GongjuViewController ()

@end

@implementation GongjuViewController

#pragma mark - 属性
@synthesize lblSort1,lblSort2,lblSort3,lblSort4,lblSort5,lblSort6,lblSort7;
@synthesize lblDiangonggongju,lblgaoyachaozuo,lblanquanfanghu,lblceshiyiqi,lblgaokongzuoye,lblqitaleibie,lblqingjiegongju;
@synthesize lblgongjuxiang,lblxiaofangyuanzheng,lblyandianbi,lblgaoyaduanlu,lbljuyuanxie,lbljueyuanbang,lbljueyuanshoutao,lblfangguangfu,lblanquanmao,lblhumujing,lblxiaofanggongju,lblyingjixiang,lblwangyongbiao,lbljueyuanbiao,lbljiedidianzu,lblzhaoduji,lblfengsuji,lblshengjiji,lblwenduceliang,lblqita,lblanquandai,lblgaokongzuoyeche,lblshoudiantong,txtOther,txtqingjiegongju,txtdiangonggongju,txtxiaofangyuan,txtgaoyayandian,txtgaoyanduanlu,txtjueyuanxie,txtjueyuanbang,txtjueyuanshoutao,txtfangguangfu,txtanquanmao,txthumujing,txtxiaofanggongju,txtyingjixiang,txtwangyongbiao,txtjueyaunbiao,txtjiedidianzu,txtzhaoduji,txtfengsuji,txtshengjiji,txtwendingceliang,txtqita,txtgaokongzuoye,txtgaokongzuoyeche,txtshoudiantong,txtOtherContent,txtqingjiegongjuContent,lblDangwei;
@synthesize segDiangong,segXiaofangyuan,seggaoyayandian,seggaoyaduanlu,segjueyuanxie,segjueyuanbang,segjueyuanshoutao,segfangguangfu,seganquanmao,segfumujing,segxiaofanggongju,segyingjixiang,segwangyongbiao,segjueyuanbiao,segjiedidianzu,segzhaodusheji,segfengsuji,segfengjiji,segwengduceliang,seganquandai,seggaokongzuoye,segshoudiantong;
@synthesize lblbeizhu;
@synthesize txtbeizhu1,txtbeizhu2,txtbeizhu3,txtbeizhu4,txtbeizhu5,txtbeizhu6,txtbeizhu7,txtbeizhu8,txtbeizhu9,txtbeizhu10,txtbeizhu11,txtbeizhu12,txtbeizhu13,txtbeizhu14,txtbeizhu15,txtbeizhu16,txtbeizhu17,txtbeizhu18,txtbeizhu19,txtbeizhu20,txtbeizhu21,txtbeizhu22,txtbeizhu23,txtbeizhu24,txtbeizhu25;
@synthesize txtqita1 , txtqita2 , txtqita3 , txtqita5;



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
    
    checker = [[CheckerViewController alloc] initWithNibName:@"CheckerViewController" bundle:nil];
    checker.view.frame = CGRectMake(20, 1140, 650, 50);
    [self addChildViewController:checker];
    self.view.clipsToBounds = true;
    [self.view addSubview:checker.view];
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
        [self AddData5] &&
        [self AddData6] &&
        [self AddData7])
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
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckProType = [self CheckEmpty:lblDiangonggongju.text];
    strCheckProName = [self CheckEmpty:lblgongjuxiang.text];
    strSettingNum = [self CheckEmpty:txtdiangonggongju.text];
    strUnit = @"个";
    switch (segDiangong.selectedSegmentIndex) {
        case 0:
            strIsGood = [segDiangong titleForSegmentAtIndex:segDiangong.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segDiangong titleForSegmentAtIndex:segDiangong.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segDiangong titleForSegmentAtIndex:segDiangong.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu1.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strTbFlg = @"0";
    strUploadflg = @"0";
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第1-2组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckProType = [self CheckEmpty:lblDiangonggongju.text];
    strCheckProName = [self CheckEmpty:lblxiaofangyuanzheng.text];
    strSettingNum = [self CheckEmpty:txtxiaofangyuan.text];
    strUnit = @"支";
    switch (segXiaofangyuan.selectedSegmentIndex) {
        case 0:
            strIsGood = [segXiaofangyuan titleForSegmentAtIndex:segXiaofangyuan.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segXiaofangyuan titleForSegmentAtIndex:segXiaofangyuan.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segXiaofangyuan titleForSegmentAtIndex:segXiaofangyuan.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }

    strRemark = [self CheckEmpty:txtbeizhu2.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;

    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];

    
    // 添加第1-3组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckProType = [self CheckEmpty:lblDiangonggongju.text];
    strCheckProName = @"其他：";
    strSettingNum = [self CheckEmpty:txtqita1.text];
    strUnit = @"-";
    strIsGood = @"-";
    strIsBad = @"-";
    strBadContent = @"-";
    strRemark = @"-";
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return add;
}

// 添加第二组数据
-(Boolean)AddData2
{
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProType = [self CheckEmpty:lblgaoyachaozuo.text];
    strCheckProName = [self CheckEmpty:lblyandianbi.text];
    strSettingNum = [self CheckEmpty:txtgaoyayandian.text];
    strUnit = @"支";
    switch (seggaoyayandian.selectedSegmentIndex) {
        case 0:
            strIsGood = [seggaoyayandian titleForSegmentAtIndex:seggaoyayandian.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [seggaoyayandian titleForSegmentAtIndex:seggaoyayandian.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [seggaoyayandian titleForSegmentAtIndex:seggaoyayandian.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu3.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strTbFlg = @"0";
    strUploadflg = @"0";
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第2-2组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProType = [self CheckEmpty:lblgaoyachaozuo.text];
    strCheckProName = [self CheckEmpty:lblgaoyaduanlu.text];
    strSettingNum = [self CheckEmpty:txtgaoyanduanlu.text];
    strUnit = @"个";
    switch (seggaoyaduanlu.selectedSegmentIndex) {
        case 0:
            strIsGood = [seggaoyaduanlu titleForSegmentAtIndex:seggaoyaduanlu.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [seggaoyaduanlu titleForSegmentAtIndex:seggaoyaduanlu.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [seggaoyaduanlu titleForSegmentAtIndex:seggaoyaduanlu.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu4.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第2-3组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProType = [self CheckEmpty:lblgaoyachaozuo.text];
    strCheckProName = @"其他：";
    strSettingNum = [self CheckEmpty:txtqita2.text];
    strUnit = @"-";
    strIsGood = @"-";
    strIsBad = @"-";
    strBadContent = @"-";
    strRemark = @"-";
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return add;
}


// 添加第三组数据
-(Boolean)AddData3
{
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProType = [self CheckEmpty:lblanquanfanghu.text];
    strCheckProName = [self CheckEmpty:lbljuyuanxie.text];
    strSettingNum = [self CheckEmpty:txtjueyuanxie.text];
    strUnit = @"双";
    switch (segjueyuanxie.selectedSegmentIndex) {
        case 0:
            strIsGood = [segjueyuanxie titleForSegmentAtIndex:segjueyuanxie.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segjueyuanxie titleForSegmentAtIndex:segjueyuanxie.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segjueyuanxie titleForSegmentAtIndex:segjueyuanxie.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu5.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strTbFlg = @"0";
    strUploadflg = @"0";
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第3-2组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProType = [self CheckEmpty:lblanquanfanghu.text];
    strCheckProName = [self CheckEmpty:lbljueyuanbang.text];
    strSettingNum = [self CheckEmpty:txtjueyuanbang.text];
    strUnit = @"根";
    switch (seggaoyaduanlu.selectedSegmentIndex) {
        case 0:
            strIsGood = [segjueyuanbang titleForSegmentAtIndex:segjueyuanbang.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segjueyuanbang titleForSegmentAtIndex:segjueyuanbang.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segjueyuanbang titleForSegmentAtIndex:segjueyuanbang.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu6.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第3-3组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProType = [self CheckEmpty:lblanquanfanghu.text];
    strCheckProName = [self CheckEmpty:lbljueyuanshoutao.text];
    strSettingNum = [self CheckEmpty:txtjueyuanshoutao.text];
    strUnit = @"双";
    switch (segjueyuanshoutao.selectedSegmentIndex) {
        case 0:
            strIsGood = [segjueyuanshoutao titleForSegmentAtIndex:segjueyuanshoutao.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segjueyuanshoutao titleForSegmentAtIndex:segjueyuanshoutao.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segjueyuanshoutao titleForSegmentAtIndex:segjueyuanshoutao.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu7.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];

    
    // 添加第3-4组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProType = [self CheckEmpty:lblanquanfanghu.text];
    strCheckProName = [self CheckEmpty:lblfangguangfu.text];
    strSettingNum = [self CheckEmpty:txtfangguangfu.text];
    strUnit = @"双";
    switch (segfangguangfu.selectedSegmentIndex) {
        case 0:
            strIsGood = [segfangguangfu titleForSegmentAtIndex:segfangguangfu.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segfangguangfu titleForSegmentAtIndex:segfangguangfu.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segfangguangfu titleForSegmentAtIndex:segfangguangfu.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu8.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 添加第3-5组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProType = [self CheckEmpty:lblanquanfanghu.text];
    strCheckProName = [self CheckEmpty:lblanquanmao.text];
    strSettingNum = [self CheckEmpty:txtanquanmao.text];
    strUnit = @"双";
    switch (seganquanmao.selectedSegmentIndex) {
        case 0:
            strIsGood = [seganquanmao titleForSegmentAtIndex:seganquanmao.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [seganquanmao titleForSegmentAtIndex:seganquanmao.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [seganquanmao titleForSegmentAtIndex:seganquanmao.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu9.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];

    // 添加第3-6组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProType = [self CheckEmpty:lblanquanfanghu.text];
    strCheckProName = [self CheckEmpty:lblhumujing.text];
    strSettingNum = [self CheckEmpty:txthumujing.text];
    strUnit = @"双";
    switch (segfumujing.selectedSegmentIndex) {
        case 0:
            strIsGood = [segfumujing titleForSegmentAtIndex:segfumujing.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segfumujing titleForSegmentAtIndex:segfumujing.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segfumujing titleForSegmentAtIndex:segfumujing.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu10.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 添加第3-7组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProType = [self CheckEmpty:lblanquanfanghu.text];
    strCheckProName = [self CheckEmpty:lblxiaofanggongju.text];
    strSettingNum = [self CheckEmpty:txtxiaofanggongju.text];
    strUnit = @"双";
    switch (segxiaofanggongju.selectedSegmentIndex) {
        case 0:
            strIsGood = [segxiaofanggongju titleForSegmentAtIndex:segxiaofanggongju.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segxiaofanggongju titleForSegmentAtIndex:segxiaofanggongju.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segxiaofanggongju titleForSegmentAtIndex:segxiaofanggongju.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu11.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第3-8组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProType = [self CheckEmpty:lblanquanfanghu.text];
    strCheckProName = [self CheckEmpty:lblyingjixiang.text];
    strSettingNum = [self CheckEmpty:txtyingjixiang.text];
    strUnit = @"双";
    switch (segyingjixiang.selectedSegmentIndex) {
        case 0:
            strIsGood = [segyingjixiang titleForSegmentAtIndex:segyingjixiang.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segyingjixiang titleForSegmentAtIndex:segyingjixiang.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segyingjixiang titleForSegmentAtIndex:segyingjixiang.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu12.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 添加第3-9组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProType = [self CheckEmpty:lblanquanfanghu.text];
    strCheckProName = @"其他：";
    strSettingNum = [self CheckEmpty:txtqita3.text];
    strUnit = @"-";
    strIsGood = @"-";
    strIsBad = @"-";
    strBadContent = @"-";
    strRemark = @"-";
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];

    return add;
}

// 添加第四组数据
-(Boolean)AddData4
{
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblceshiyiqi.text];
    strCheckProName = [self CheckEmpty:lblwangyongbiao.text];
    strSettingNum = [self CheckEmpty:txtdiangonggongju.text];
    strUnit = @"台";
    switch (segwangyongbiao.selectedSegmentIndex) {
        case 0:
            strIsGood = [segwangyongbiao titleForSegmentAtIndex:segwangyongbiao.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segwangyongbiao titleForSegmentAtIndex:segwangyongbiao.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segwangyongbiao titleForSegmentAtIndex:segwangyongbiao.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu13.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strTbFlg = @"0";
    strUploadflg = @"0";
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第4-2组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblceshiyiqi.text];
    strCheckProName = [self CheckEmpty:lbljueyuanbiao.text];
    strSettingNum = [self CheckEmpty:txtjueyaunbiao.text];
    strUnit = @"台";
    switch (segjueyuanbiao.selectedSegmentIndex) {
        case 0:
            strIsGood = [segjueyuanbiao titleForSegmentAtIndex:segjueyuanbiao.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segjueyuanbiao titleForSegmentAtIndex:segjueyuanbiao.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segjueyuanbiao titleForSegmentAtIndex:segjueyuanbiao.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu14.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第4-3组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblceshiyiqi.text];
    strCheckProName = [self CheckEmpty:lbljiedidianzu.text];
    strSettingNum = [self CheckEmpty:txtjiedidianzu.text];
    strUnit = @"台";
    switch (segjiedidianzu.selectedSegmentIndex) {
        case 0:
            strIsGood = [segjiedidianzu titleForSegmentAtIndex:segjiedidianzu.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segjiedidianzu titleForSegmentAtIndex:segjiedidianzu.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segjiedidianzu titleForSegmentAtIndex:segjiedidianzu.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu15.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 添加第4-4组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblceshiyiqi.text];
    strCheckProName = [self CheckEmpty:lblzhaoduji.text];
    strSettingNum = [self CheckEmpty:txtzhaoduji.text];
    strUnit = @"台";
    switch (segzhaodusheji.selectedSegmentIndex) {
        case 0:
            strIsGood = [segzhaodusheji titleForSegmentAtIndex:segzhaodusheji.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segzhaodusheji titleForSegmentAtIndex:segzhaodusheji.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segzhaodusheji titleForSegmentAtIndex:segzhaodusheji.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu16.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第4-5组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblceshiyiqi.text];
    strCheckProName = [self CheckEmpty:lblfengsuji.text];
    strSettingNum = [self CheckEmpty:txtfengsuji.text];
    strUnit = @"台";
    switch (segfengsuji.selectedSegmentIndex) {
        case 0:
            strIsGood = [segfengsuji titleForSegmentAtIndex:segfengsuji.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segfengsuji titleForSegmentAtIndex:segfengsuji.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segfengsuji titleForSegmentAtIndex:segfengsuji.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu17.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第4-6组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblceshiyiqi.text];
    strCheckProName = [self CheckEmpty:lblshengjiji.text];
    strSettingNum = [self CheckEmpty:txtshengjiji.text];
    strUnit = @"台";
    switch (segfengjiji.selectedSegmentIndex) {
        case 0:
            strIsGood = [segfengjiji titleForSegmentAtIndex:segfengjiji.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segfengjiji titleForSegmentAtIndex:segfengjiji.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segfengjiji titleForSegmentAtIndex:segfengjiji.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu18.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第4-7组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblceshiyiqi.text];
    strCheckProName = [self CheckEmpty:lblwenduceliang.text];
    strSettingNum = [self CheckEmpty:txtwendingceliang.text];
    strUnit = @"台";
    switch (segwengduceliang.selectedSegmentIndex) {
        case 0:
            strIsGood = [segwengduceliang titleForSegmentAtIndex:segwengduceliang.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segwengduceliang titleForSegmentAtIndex:segwengduceliang.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segwengduceliang titleForSegmentAtIndex:segwengduceliang.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu19.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第4-8组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblceshiyiqi.text];
    strCheckProName = [self CheckEmpty:lblqita.text];
    strSettingNum = [self CheckEmpty:txtqita.text];
    strUnit = @"-";
    strIsGood = @"-";
    strIsBad = @"-";
    strBadContent = @"-";
    strRemark = [self CheckEmpty:txtbeizhu20.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return add;
}


// 添加第五组数据
-(Boolean)AddData5
{
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort5.text];
    strCheckProType = [self CheckEmpty:lblgaokongzuoye.text];
    strCheckProName = [self CheckEmpty:lblanquandai.text];
    strSettingNum = [self CheckEmpty:txtdiangonggongju.text];
    strUnit = @"副";
    switch (seganquandai.selectedSegmentIndex) {
        case 0:
            strIsGood = [seganquandai titleForSegmentAtIndex:seganquandai.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [seganquandai titleForSegmentAtIndex:seganquandai.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [seganquandai titleForSegmentAtIndex:seganquandai.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu21.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strTbFlg = @"0";
    strUploadflg = @"0";
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第5-2组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort5.text];
    strCheckProType = [self CheckEmpty:lblgaokongzuoye.text];
    strCheckProName = [self CheckEmpty:lblgaokongzuoyeche.text];
    strSettingNum = [self CheckEmpty:txtgaokongzuoyeche.text];
    strUnit = @"辆";
    switch (seggaokongzuoye.selectedSegmentIndex) {
        case 0:
            strIsGood = [seggaokongzuoye titleForSegmentAtIndex:seggaokongzuoye.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [seggaokongzuoye titleForSegmentAtIndex:seggaokongzuoye.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [seggaokongzuoye titleForSegmentAtIndex:seggaokongzuoye.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu22.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 添加第5-3组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort5.text];
    strCheckProType = [self CheckEmpty:lblgaokongzuoye.text];
    strCheckProName = @"其他：";
    strSettingNum = [self CheckEmpty:txtqita5.text];
    strUnit = @"-";
    strIsGood = @"-";
    strIsBad = @"-";
    strBadContent = @"-";
    strRemark = @"-";
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];

    return add;
}




// 添加第六组数据
-(Boolean)AddData6
{
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort6.text];
    strCheckProType = [self CheckEmpty:lblqitaleibie.text];
    strCheckProName = [self CheckEmpty:lblshoudiantong.text];
    strSettingNum = [self CheckEmpty:txtshoudiantong.text];
    strUnit = @"个";
    switch (segshoudiantong.selectedSegmentIndex) {
        case 0:
            strIsGood = [segshoudiantong titleForSegmentAtIndex:segshoudiantong.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segshoudiantong titleForSegmentAtIndex:segshoudiantong.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segshoudiantong titleForSegmentAtIndex:segshoudiantong.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu23.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strTbFlg = @"0";
    strUploadflg = @"0";
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第6-2组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort6.text];
    strCheckProType = [self CheckEmpty:lblqitaleibie.text];
    strCheckProName = [self CheckEmpty:txtOther.text];
    strSettingNum = [self CheckEmpty:txtOtherContent.text];
    strUnit = @"-";
    strIsGood = @"-";
    strIsBad = @"-";
    strBadContent = @"-";
    
    strRemark = [self CheckEmpty:txtbeizhu24.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return add;
}


// 添加第7组数据
-(Boolean)AddData7
{
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort7.text];
    strCheckProType = [self CheckEmpty:lblqingjiegongju.text];
    strCheckProName = [self CheckEmpty:txtqingjiegongju.text];
    strSettingNum = [self CheckEmpty:txtqingjiegongjuContent.text];
    strIsGood = @"-";
    strIsBad = @"-";
    strBadContent = @"-";
    
    strRemark = [self CheckEmpty:txtbeizhu25.text];
    strAddUser = [self CheckEmpty:[UserInfo getUserName]];
    strCheck = checker.getjianceName;
    strRecord = checker.getjiluName;
    strCheckAagin = checker.getfuheName;
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strDate =locationString;
    strAddDate = locationString;
    strTbFlg = @"0";
    strUploadflg = @"0";
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];

    return add;
}










































@end
