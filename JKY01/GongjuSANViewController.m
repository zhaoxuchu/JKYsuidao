//
//  GongjuSANViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-31.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "GongjuSANViewController.h"
#import "GongjuDAC.h"
#import "ErrLog.h"

@interface GongjuSANViewController ()

@end

@implementation GongjuSANViewController
@synthesize lblSort1,lblSort2,lblSort3,lblSort4;
@synthesize lblDiyapeidian,
lblSandaxitong,
lblQingjiegongju,
lblQita,
lblbeizhu,
lblgongjuxiang,
lblyandianbi,
lbljuyuanxie,
lbljuyuanbang,
lbljueyuanshoutao,
lblyingjixiang,
lblqita,
txtDiangonggongju,
txtyandianbi,
txtjueyuanxie,
txtjueyuanbang,
txtjueyuanshoutao,
txtyingjixiang,
txtqita,
segDiangonggongju,
segyandianbi,
segjueyuanxie,
segjueyuanbang,
segjueyuanshoutao,
segyingjixiang;

@synthesize lblwangyongbiao,
lblJueyuanbiao,
lblJiedidianzu,
lblzhaoduji,
lblLiangduji,
lblGuanggonglvji,
txtQita2,
txtwangyongbiao,
txtjueyuanbiao,
txtjiedidianzu,
txtzhaoduji,
txtliangduji,
txtguanggonglvji,
segwangyongbiao,
segjueyuanbiao,
segjiedidianzu,
segzhaoduji,
segliangduji,
segguanggonglvji;

@synthesize txtQingjiegongju , segQingjiegongju;
@synthesize txtqita41,
txtqita42,
txtqita43,
segqita41,
segqita42,
segqita43,
txtbeizhu1,
txtbeizhu2,
txtbeizhu3,
txtbeizhu4,
txtbeizhu5,
txtbeizhu6,
txtbeizhu7,
txtbeizhu8,
txtbeizhu9,
txtbeizhu10,
txtbeizhu11,
txtbeizhu12,
txtbeizhu13,
txtbeizhu14,
txtbeizhu15,
txtbeizhu16;



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
    strCheckProType = [self CheckEmpty:lblDiyapeidian.text];
    strCheckProName = [self CheckEmpty:lblgongjuxiang.text];
    strSettingNum = [self CheckEmpty:txtDiangonggongju.text];
    strUnit = @"个";
    switch (segDiangonggongju.selectedSegmentIndex) {
        case 0:
            strIsGood = [segDiangonggongju titleForSegmentAtIndex:segDiangonggongju.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segDiangonggongju titleForSegmentAtIndex:segDiangonggongju.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segDiangonggongju titleForSegmentAtIndex:segDiangonggongju.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu1.text];
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
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第1-2组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckProType = [self CheckEmpty:lblDiyapeidian.text];
    strCheckProName = [self CheckEmpty:lblyandianbi.text];
    strSettingNum = [self CheckEmpty:txtyandianbi.text];
    strUnit = @"支";
    switch (segyandianbi.selectedSegmentIndex) {
        case 0:
            strIsGood = [segyandianbi titleForSegmentAtIndex:segyandianbi.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segyandianbi titleForSegmentAtIndex:segyandianbi.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segyandianbi titleForSegmentAtIndex:segyandianbi.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu2.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第1-3组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckProType = [self CheckEmpty:lblDiyapeidian.text];
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
    strRemark = [self CheckEmpty:txtbeizhu3.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 添加第1-3-1组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckProType = [self CheckEmpty:lblDiyapeidian.text];
    strCheckProName = [self CheckEmpty:lbljuyuanbang.text];
    strSettingNum = [self CheckEmpty:txtjueyuanbang.text];
    strUnit = @"根";
    switch (segjueyuanbang.selectedSegmentIndex) {
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
    strRemark = [self CheckEmpty:txtbeizhu16.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    
    
    
    // 添加第1-4组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckProType = [self CheckEmpty:lblDiyapeidian.text];
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
    strRemark = [self CheckEmpty:txtbeizhu4.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 添加第1-5组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckProType = [self CheckEmpty:lblDiyapeidian.text];
    strCheckProName = [self CheckEmpty:lblyingjixiang.text];
    strSettingNum = [self CheckEmpty:txtyingjixiang.text];
    strUnit = @"个";
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
    strRemark = [self CheckEmpty:txtbeizhu5.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 添加第1-6组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckProType = [self CheckEmpty:lblDiyapeidian.text];
    strCheckProName = [self CheckEmpty:lblqita.text];
    strSettingNum = [self CheckEmpty:txtqita.text];
    strIsGood = @"-";
    strIsBad = @"-";
    strBadContent = @"-";
    strRemark = @"-";
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];

    return add;
}


// 添加第二组数据
-(Boolean)AddData2
{
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProType = [self CheckEmpty:lblSandaxitong.text];
    strCheckProName = [self CheckEmpty:lblwangyongbiao.text];
    strSettingNum = [self CheckEmpty:txtwangyongbiao.text];
    strUnit = @"支";
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
    
    strRemark = [self CheckEmpty:txtbeizhu6.text];
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
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第2-2组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProType = [self CheckEmpty:lblSandaxitong.text];
    strCheckProName = [self CheckEmpty:lblJueyuanbiao.text];
    strSettingNum = [self CheckEmpty:txtjueyuanbiao.text];
    strUnit = @"个";
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
    
    strRemark = [self CheckEmpty:txtbeizhu7.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第2-3组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProType = [self CheckEmpty:lblSandaxitong.text];
    strCheckProName = [self CheckEmpty:lblJiedidianzu.text];
    strSettingNum = [self CheckEmpty:txtjiedidianzu.text];
    strUnit = @"个";
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
    
    strRemark = [self CheckEmpty:txtbeizhu8.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第2-4组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProType = [self CheckEmpty:lblSandaxitong.text];
    strCheckProName = [self CheckEmpty:lblzhaoduji.text];
    strSettingNum = [self CheckEmpty:txtzhaoduji.text];
    strUnit = @"个";
    switch (segzhaoduji.selectedSegmentIndex) {
        case 0:
            strIsGood = [segzhaoduji titleForSegmentAtIndex:segzhaoduji.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segzhaoduji titleForSegmentAtIndex:segzhaoduji.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segzhaoduji titleForSegmentAtIndex:segzhaoduji.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第2-5组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProType = [self CheckEmpty:lblSandaxitong.text];
    strCheckProName = [self CheckEmpty:lblLiangduji.text];
    strSettingNum = [self CheckEmpty:txtliangduji.text];
    strUnit = @"个";
    switch (segliangduji.selectedSegmentIndex) {
        case 0:
            strIsGood = [segliangduji titleForSegmentAtIndex:segliangduji.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segliangduji titleForSegmentAtIndex:segliangduji.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segliangduji titleForSegmentAtIndex:segliangduji.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第2-6组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProType = [self CheckEmpty:lblSandaxitong.text];
    strCheckProName = [self CheckEmpty:lblGuanggonglvji.text];
    strSettingNum = [self CheckEmpty:txtguanggonglvji.text];
    strUnit = @"个";
    switch (segguanggonglvji.selectedSegmentIndex) {
        case 0:
            strIsGood = [segguanggonglvji titleForSegmentAtIndex:segguanggonglvji.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segguanggonglvji titleForSegmentAtIndex:segguanggonglvji.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segguanggonglvji titleForSegmentAtIndex:segguanggonglvji.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu11.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第2-7组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProType = [self CheckEmpty:lblSandaxitong.text];
    strCheckProName = [self CheckEmpty:lblQita.text];
    strSettingNum = [self CheckEmpty:txtQita2.text];
    strUnit = @"-";
    strIsGood = @"-";
    strIsBad = @"-";
    strBadContent = @"-";
    
    strRemark =  @"-";
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return add;
}


// 添加第三组数据
-(Boolean)AddData3
{
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProType = [self CheckEmpty:lblQingjiegongju.text];
    strCheckProName = @"-";
    strSettingNum = [self CheckEmpty:txtQingjiegongju.text];
    strUnit = @"套";
    switch (segQingjiegongju.selectedSegmentIndex) {
        case 0:
            strIsGood = [segQingjiegongju titleForSegmentAtIndex:segQingjiegongju.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segQingjiegongju titleForSegmentAtIndex:segQingjiegongju.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segQingjiegongju titleForSegmentAtIndex:segQingjiegongju.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu12.text];
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
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return  add;
}



// 添加第4组数据
-(Boolean)AddData4
{
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblQita.text];
    strCheckProName = @"-";
    strSettingNum = [self CheckEmpty:txtqita41.text];
    strUnit = @"套";
    switch (segqita41.selectedSegmentIndex) {
        case 0:
            strIsGood = [segqita41 titleForSegmentAtIndex:segqita41.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segqita41 titleForSegmentAtIndex:segqita41.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segqita41 titleForSegmentAtIndex:segqita41.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu13.text];
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
    
    // 数据库存储
    GongjuDAC *gj = [GongjuDAC alloc];
    Boolean add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    
    // 添加第4-2组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblQita.text];
    strCheckProName = @"-";
    strSettingNum = [self CheckEmpty:txtqita42.text];
    strUnit = @"套";
    switch (segqita42.selectedSegmentIndex) {
        case 0:
            strIsGood = [segqita42 titleForSegmentAtIndex:segqita42.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segqita42 titleForSegmentAtIndex:segqita42.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segqita42 titleForSegmentAtIndex:segqita42.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 添加第4-3组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProType = [self CheckEmpty:lblQita.text];
    strCheckProName = @"-";
    strSettingNum = [self CheckEmpty:txtqita43.text];
    strUnit = @"套";
    switch (segqita43.selectedSegmentIndex) {
        case 0:
            strIsGood = [segqita43 titleForSegmentAtIndex:segqita43.selectedSegmentIndex];
            strIsBad = @"-";
            strBadContent = @"-";
            break;
        case 1:
            strIsGood = @"-";
            strIsBad = [segqita43 titleForSegmentAtIndex:segqita43.selectedSegmentIndex];
            strBadContent = @"-";
            break;
            
        case 2:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = [segqita43 titleForSegmentAtIndex:segqita43.selectedSegmentIndex];
            break;
            
        default:
            strIsGood = @"-";
            strIsBad = @"-";
            strBadContent = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtbeizhu15.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    
    // 数据库存储
    add = [gj AddGongjuDataWithTunnelID:strTunnelID SortID:strSortID CheckProType:strCheckProType CheckProName:strCheckProName SettingNum:strSettingNum Unit:strUnit IsGood:strIsGood IsBad:strIsBad BadContent:strBadContent Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    

    return add;
    
}


























@end
