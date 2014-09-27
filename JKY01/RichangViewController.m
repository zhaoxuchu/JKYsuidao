//
//  RichangViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-25.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "RichangViewController.h"
#import "ErrLog.h"

@interface RichangViewController ()

@end

@implementation RichangViewController

#pragma mark - 属性
@synthesize lblGongpeidian , lblzhaoming , lblTongfeng , lblXiaofang , lblJiankong;
@synthesize lblSortA1 , lblSortA2 , lblSortA3 , lblSortA4 , lblSortA5 , lblSortB1 , lblSortB2 , lblSortB3 , lblSortB4 , lblSortC1 , lblSortC2 , lblSortC3 , lblSortC4 , lblSortC5 , lblSortC6 , lblSortC7 , lblSortC8 , lblSortD1 , lblSortD2 , lblSortD3 , lblSortD4 , lblSortD5;
@synthesize lblgaoyaA , lbldiyaA , lblepsA , lblchaiyouA , lblPeidianA , lblSuidaoB , lblJiaotongxinhaoB , lblDongwailudengB , lblLiangduB , lblSheliuC , lblFengsufengxiangC , lblCOVIC , lblHuozaiD , lblXiaohuoshuangD , lblFamengD , lblXiaofangshuichiD , lblShuibengD , lblHengtongdaoD , lblJingjidianhuaD , lblYingdaoD , lblJiaotongE , lblBiludianshiE , lblKebianxinxiE , lblBendikongzhiE , lblKongzhishiE;
@synthesize segGaoyapeidianA , segDiyapeidianA , segEpsA , segChaiyouA , segPeidianxiangA , segSuidaoB , segJiaotongB , segDongwaiB , segLiangduB , segSheliuC , segFengsuC , segCOVIC , segHuozaiD , segXiaohuoshuangD , segFamengD , segXiaofangshuichiD , segShuibengD , segHengtongD , segJingjidianhuaD , segYingdaoD , segJiaotongE , segBiludianshiE , segKebianxinxiE , segBendikongzhiE , segJiankongshiE;
@synthesize txtBeizhu1, txtBeizhu2 , txtBeizhu3 , txtBeizhu4 , txtBeizhu5 , txtBeizhu6 , txtBeizhu7 , txtBeizhu8 , txtBeizhu9 , txtBeizhu10 , txtBeizhu11 , txtBeizhu12 , txtBeizhu13 , txtBeizhu14 , txtBeizhu15 , txtBeizhu16 , txtBeizhu17 , txtBeizhu18 , txtBeizhu19 , txtBeizhu20 , txtBeizhu21 , txtBeizhu22 , txtBeizhu23 , txtBeizhu24 , txtBeizhu25;
@synthesize lblgaoyacontentA , lbldiyacontentA , lblepscontentA , lblchaiyoucontentA , lblPeidiancontentA , lblSuidaocontentB , lblJiaotongxinhaocontentB , lblDongwailudengcontentB , lblLiangducontentB , lblSheliucontentC , lblFengsufengxiangcontentC , lblCOVIcontentC , lblHuozaicontentD , lblXiaohuoshuangcontentD , lblFamengcontentD , lblXiaofangshuichicontentD , lblShuibengcontentD , lblHengtongdaocontentD , lblJingjidianhuacontentD , lblYingdaocontentD , lblJiaotongcontentE , lblBiludianshicontentE , lblKebianxinxicontentE , lblBendikongzhicontentE , lblKongzhishicontentE;


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
    // 添加表头
    strTunnelID = @"1";
    strFacilityType = @"";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblzhaoming.text];
    strCheckContent =@"-";
    strRecordAll = @"-";
    strCheckNotAll = @"-";
    strRecordNo = @"-";
    strRemark = @"-";
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
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    RiChangDAC *rc = [RiChangDAC alloc];
    Boolean add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSortA1.text];
    strFacility = [self CheckEmpty:lblgaoyaA.text];
    strCheckContent = [self CheckEmpty:lblgaoyacontentA.text];
    switch (segGaoyapeidianA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segGaoyapeidianA titleForSegmentAtIndex:segGaoyapeidianA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segGaoyapeidianA titleForSegmentAtIndex:segGaoyapeidianA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segGaoyapeidianA titleForSegmentAtIndex:segGaoyapeidianA.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu1.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第1-2组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSortA2.text];
    strFacility = [self CheckEmpty:lbldiyaA.text];
    strCheckContent = [self CheckEmpty:lbldiyacontentA.text];
    switch (segDiyapeidianA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segDiyapeidianA titleForSegmentAtIndex:segDiyapeidianA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segDiyapeidianA titleForSegmentAtIndex:segDiyapeidianA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segDiyapeidianA titleForSegmentAtIndex:segDiyapeidianA.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu2.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
     add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第1-3组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSortA3.text];
    strFacility = [self CheckEmpty:lblepsA.text];
    strCheckContent = [self CheckEmpty:lblepscontentA.text];
    switch (segEpsA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segEpsA titleForSegmentAtIndex:segEpsA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segEpsA titleForSegmentAtIndex:segEpsA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segEpsA titleForSegmentAtIndex:segEpsA.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu3.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    add =[rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第1-4组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSortA4.text];
    strFacility = [self CheckEmpty:lblchaiyouA.text];
    strCheckContent = [self CheckEmpty:lblchaiyoucontentA.text];
    switch (segChaiyouA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segChaiyouA titleForSegmentAtIndex:segChaiyouA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segChaiyouA titleForSegmentAtIndex:segChaiyouA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segChaiyouA titleForSegmentAtIndex:segChaiyouA.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu4.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第1-5组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSortA5.text];
    strFacility = [self CheckEmpty:lblPeidianA.text];
    strCheckContent = [self CheckEmpty:lblPeidiancontentA.text];
    switch (segPeidianxiangA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segPeidianxiangA titleForSegmentAtIndex:segPeidianxiangA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segPeidianxiangA titleForSegmentAtIndex:segPeidianxiangA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segPeidianxiangA titleForSegmentAtIndex:segPeidianxiangA.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu5.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}


// 添加第2组数据
-(Boolean)AddData2
{
    // 添加表头
    strTunnelID = @"1";
    strFacilityType = @"";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblzhaoming.text];
    strCheckContent =@"-";
    strRecordAll = @"-";
    strCheckNotAll = @"-";
    strRecordNo = @"-";
    strRemark = @"-";
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
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    RiChangDAC *rc = [RiChangDAC alloc];
    Boolean add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblzhaoming.text];
    strSortID = [self CheckEmpty:lblSortB1.text];
    strFacility = [self CheckEmpty:lblSuidaoB.text];
    strCheckContent = [self CheckEmpty:lblSuidaocontentB.text];
    switch (segSuidaoB.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segSuidaoB titleForSegmentAtIndex:segSuidaoB.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segSuidaoB titleForSegmentAtIndex:segSuidaoB.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segSuidaoB titleForSegmentAtIndex:segSuidaoB.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu6.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第2-2组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblzhaoming.text];
    strSortID = [self CheckEmpty:lblSortB2.text];
    strFacility = [self CheckEmpty:lblJiaotongxinhaoB.text];
    strCheckContent = [self CheckEmpty:lblJiaotongxinhaocontentB.text];
    switch (segJiaotongB.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segJiaotongB titleForSegmentAtIndex:segJiaotongB.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segJiaotongB titleForSegmentAtIndex:segJiaotongB.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segJiaotongB titleForSegmentAtIndex:segJiaotongB.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu7.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];

    // 添加第2-3组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblzhaoming.text];
    strSortID = [self CheckEmpty:lblSortB3.text];
    strFacility = [self CheckEmpty:lblDongwailudengB.text];
    strCheckContent = [self CheckEmpty:lblDongwailudengcontentB.text];
    switch (segDongwaiB.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segDongwaiB titleForSegmentAtIndex:segDongwaiB.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segDongwaiB titleForSegmentAtIndex:segDongwaiB.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segDongwaiB titleForSegmentAtIndex:segDongwaiB.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu8.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第2-4组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblzhaoming.text];
    strSortID = [self CheckEmpty:lblSortB4.text];
    strFacility = [self CheckEmpty:lblLiangduB.text];
    strCheckContent = [self CheckEmpty:lblLiangducontentB.text];
    switch (segLiangduB.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segLiangduB titleForSegmentAtIndex:segLiangduB.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segLiangduB titleForSegmentAtIndex:segLiangduB.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segLiangduB titleForSegmentAtIndex:segLiangduB.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];

       return add;
}



// 添加第3组数据
-(Boolean)AddData3
{
    // 添加表头
    strTunnelID = @"1";
    strFacilityType = @"";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblzhaoming.text];
    strCheckContent =@"-";
    strRecordAll = @"-";
    strCheckNotAll = @"-";
    strRecordNo = @"-";
    strRemark = @"-";
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
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    RiChangDAC *rc = [RiChangDAC alloc];
    Boolean add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfeng.text];
    strSortID = [self CheckEmpty:lblSortC1.text];
    strFacility = [self CheckEmpty:lblSheliuC.text];
    strCheckContent = [self CheckEmpty:lblSheliucontentC.text];
    switch (segSheliuC.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segSheliuC titleForSegmentAtIndex:segSheliuC.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segSheliuC titleForSegmentAtIndex:segSheliuC.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segSheliuC titleForSegmentAtIndex:segSheliuC.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第3-2组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfeng.text];
    strSortID = [self CheckEmpty:lblSortC2.text];
    strFacility = [self CheckEmpty:lblFengsufengxiangC.text];
    strCheckContent = [self CheckEmpty:lblFengsufengxiangcontentC.text];
    switch (segFengsuC.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segFengsuC titleForSegmentAtIndex:segFengsuC.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segFengsuC titleForSegmentAtIndex:segFengsuC.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segFengsuC titleForSegmentAtIndex:segFengsuC.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu11.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第3-3组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfeng.text];
    strSortID = [self CheckEmpty:lblSortC3.text];
    strFacility = [self CheckEmpty:lblCOVIC.text];
    strCheckContent = [self CheckEmpty:lblCOVIcontentC.text];
    switch (segCOVIC.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segCOVIC titleForSegmentAtIndex:segCOVIC.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segCOVIC titleForSegmentAtIndex:segCOVIC.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segCOVIC titleForSegmentAtIndex:segCOVIC.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu12.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}


// 添加第4组数据
-(Boolean)AddData4
{
    // 添加表头
    strTunnelID = @"1";
    strFacilityType = @"";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblzhaoming.text];
    strCheckContent =@"-";
    strRecordAll = @"-";
    strCheckNotAll = @"-";
    strRecordNo = @"-";
    strRemark = @"-";
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
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    RiChangDAC *rc = [RiChangDAC alloc];
    Boolean add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSortC1.text];
    strFacility = [self CheckEmpty:lblHuozaiD.text];
    strCheckContent = [self CheckEmpty:lblHuozaicontentD.text];
    switch (segHuozaiD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segHuozaiD titleForSegmentAtIndex:segHuozaiD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segHuozaiD titleForSegmentAtIndex:segHuozaiD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segHuozaiD titleForSegmentAtIndex:segHuozaiD.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu13.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第4-2组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSortC2.text];
    strFacility = [self CheckEmpty:lblXiaohuoshuangD.text];
    strCheckContent = [self CheckEmpty:lblXiaohuoshuangcontentD.text];
    switch (segXiaohuoshuangD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segXiaohuoshuangD titleForSegmentAtIndex:segXiaohuoshuangD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segXiaohuoshuangD titleForSegmentAtIndex:segXiaohuoshuangD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segXiaohuoshuangD titleForSegmentAtIndex:segXiaohuoshuangD.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第4-3组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSortC3.text];
    strFacility = [self CheckEmpty:lblFamengD.text];
    strCheckContent = [self CheckEmpty:lblFamengcontentD.text];
    switch (segFamengD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segFamengD titleForSegmentAtIndex:segFamengD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segFamengD titleForSegmentAtIndex:segFamengD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segFamengD titleForSegmentAtIndex:segFamengD.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu15.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第4-4组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSortC4.text];
    strFacility = [self CheckEmpty:lblXiaofangshuichiD.text];
    strCheckContent = [self CheckEmpty:lblXiaofangshuichicontentD.text];
    switch (segXiaofangshuichiD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segXiaofangshuichiD titleForSegmentAtIndex:segXiaofangshuichiD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segXiaofangshuichiD titleForSegmentAtIndex:segXiaofangshuichiD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segXiaofangshuichiD titleForSegmentAtIndex:segXiaofangshuichiD.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu16.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第4-5组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSortC5.text];
    strFacility = [self CheckEmpty:lblShuibengD.text];
    strCheckContent = [self CheckEmpty:lblShuibengcontentD.text];
    switch (segShuibengD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segShuibengD titleForSegmentAtIndex:segShuibengD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segShuibengD titleForSegmentAtIndex:segShuibengD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segShuibengD titleForSegmentAtIndex:segShuibengD.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu17.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第4-6组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSortC6.text];
    strFacility = [self CheckEmpty:lblHengtongdaoD.text];
    strCheckContent = [self CheckEmpty:lblHengtongdaocontentD.text];
    switch (segHengtongD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segHengtongD titleForSegmentAtIndex:segHengtongD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segHengtongD titleForSegmentAtIndex:segHengtongD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segHengtongD titleForSegmentAtIndex:segHengtongD.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu18.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第4-7组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSortC7.text];
    strFacility = [self CheckEmpty:lblJingjidianhuaD.text];
    strCheckContent = [self CheckEmpty:lblJingjidianhuacontentD.text];
    switch (segJingjidianhuaD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segJingjidianhuaD titleForSegmentAtIndex:segJingjidianhuaD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segJingjidianhuaD titleForSegmentAtIndex:segJingjidianhuaD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segJingjidianhuaD titleForSegmentAtIndex:segJingjidianhuaD.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu19.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第4-8组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSortC8.text];
    strFacility = [self CheckEmpty:lblYingdaoD.text];
    strCheckContent = [self CheckEmpty:lblYingdaocontentD.text];
    switch (segYingdaoD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segYingdaoD titleForSegmentAtIndex:segYingdaoD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segYingdaoD titleForSegmentAtIndex:segYingdaoD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segYingdaoD titleForSegmentAtIndex:segYingdaoD.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu20.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
       return add;
}



// 添加第5组数据
-(Boolean)AddData5
{
    // 添加表头
    strTunnelID = @"1";
    strFacilityType = @"";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblzhaoming.text];
    strCheckContent =@"-";
    strRecordAll = @"-";
    strCheckNotAll = @"-";
    strRecordNo = @"-";
    strRemark = @"-";
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
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    RiChangDAC *rc = [RiChangDAC alloc];
    Boolean add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSortD1.text];
    strFacility = [self CheckEmpty:lblJiaotongE.text];
    strCheckContent = [self CheckEmpty:lblJiaotongcontentE.text];
    switch (segJiaotongE.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segJiaotongE titleForSegmentAtIndex:segJiaotongE.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segJiaotongE titleForSegmentAtIndex:segJiaotongE.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segJiaotongE titleForSegmentAtIndex:segJiaotongE.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu21.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第5-2组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSortD2.text];
    strFacility = [self CheckEmpty:lblBiludianshiE.text];
    strCheckContent = [self CheckEmpty:lblBiludianshicontentE.text];
    switch (segBiludianshiE.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segBiludianshiE titleForSegmentAtIndex:segBiludianshiE.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segBiludianshiE titleForSegmentAtIndex:segBiludianshiE.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segBiludianshiE titleForSegmentAtIndex:segBiludianshiE.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu22.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第5-3组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSortD3.text];
    strFacility = [self CheckEmpty:lblKebianxinxiE.text];
    strCheckContent = [self CheckEmpty:lblKebianxinxicontentE.text];
    switch (segKebianxinxiE.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segKebianxinxiE titleForSegmentAtIndex:segKebianxinxiE.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segKebianxinxiE titleForSegmentAtIndex:segKebianxinxiE.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segKebianxinxiE titleForSegmentAtIndex:segKebianxinxiE.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu23.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第5-4组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSortD4.text];
    strFacility = [self CheckEmpty:lblBendikongzhiE.text];
    strCheckContent = [self CheckEmpty:lblBendikongzhicontentE.text];
    switch (segBendikongzhiE.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segBendikongzhiE titleForSegmentAtIndex:segBendikongzhiE.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segBendikongzhiE titleForSegmentAtIndex:segBendikongzhiE.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segBendikongzhiE titleForSegmentAtIndex:segBendikongzhiE.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu24.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第5-5组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSortD5.text];
    strFacility = [self CheckEmpty:lblKongzhishiE.text];
    strCheckContent = [self CheckEmpty:lblKongzhishicontentE.text];
    switch (segJiankongshiE.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segJiankongshiE titleForSegmentAtIndex:segJiankongshiE.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segJiankongshiE titleForSegmentAtIndex:segJiankongshiE.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segJiankongshiE titleForSegmentAtIndex:segJiankongshiE.selectedSegmentIndex];
            break;
            
        default:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
    }
    
    strRemark = [self CheckEmpty:txtBeizhu25.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [RiChangDAC alloc];
    add = [rc AddRiChangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}
@end
