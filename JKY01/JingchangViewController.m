//
//  JingchangViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-25.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "JingchangViewController.h"
#import "ErrLog.h"

@interface JingchangViewController ()

@end

@implementation JingchangViewController

#pragma mark - 属性
@synthesize lblGongpeidian , lblZhaomingsheshi , lblTongfengsheshi , lblXiaofang , lblJiankong;
@synthesize lblSort1 , lblSort2 , lblSort3 , lblSort4 , lblSort5 , lblSort6 , lblSort7 , lblSort8;
@synthesize lblDianlibianyaA ,lblGaoyapeidianA,lblDiyapeidianA,lblEPSA,lblJiaoliuwenyaA,lblChaiyoufadianA,lblDongwailudengA,lblDianxiandianlangA,lblSuidaoB,lblJiaotongxinhaoB,lblDongwailudengB,lblLiangduB,lblSheliufengjiB,lblFengsuB,lblCOVIB,lblHuozaiC,lblXiaohuoshuangC,lblFamengC,lblXiaofangshuichiC,lblShuibengC,lblHentongdaomengC,lblJingjidianhuaC,lblYingdaosheshiC,lblJiaotongD,lblBiludianshiD,lblKebianxinxiD,lblBendikongzhiD,lblJiankongshiD;
@synthesize lblDianlibianyacontentA,lblGaoyapeidiancontentA,lblDiyapeidiancontentA,lblEPScontentA,lblJiaoliuwenyacontentA,lblChaiyoufadiancontentA,lblDongwailudengcontentA,lblDianxiandianlangcontentA,lblSuidaocontentB,lblJiaotongxinhaocontentB,lblDongwailudengcontentB,lblLiangducontentB,lblSheliufengjicontentB,lblFengsucontentB,lblCOVIcontentB,lblHuozaicontentC,lblXiaohuoshuangcontentC,lblFamengcontentC,lblXiaofangshuichicontentC,lblShuibengcontentC,lblHentongdaomengcontentC,lblJingjidianhuacontentC,lblYingdaosheshicontentC,lblJiaotongcontentD,lblBiludianshicontentD,lblKebianxinxicontentD,lblBendikongzhicontentD,lblJiankongshicontentD;
@synthesize segDianlibianya,segGaoyapeidian,segDiyapediangui,segEPSA,segJiaoliuA,segChaiyouA,segDongwaiA,segDianxianA,segSuidaoB,segJiaotongB,segDongwaiB,segLiangduB,segSheliujiC,segFengsuC,segCOVIC,segHuozaiD,segXiaohuoD,segFamengD,segXiaofangD,segShuibengD,segHentongdaoD,segJingjidianhuaD,segyingdaoD,segJiaotongE,segBiludianshiE,segKebianxinxiE,segBendikongzhiE,segJiankongshiE;
@synthesize txtBeizhu1,txtBeizhu2,txtBeizhu3,txtBeizhu4,txtBeizhu5,txtBeizhu6,txtBeizhu7,txtBeizhu8,txtBeizhu9,txtBeizhu10,txtBeizhu11,txtBeizhu12,txtBeizhu13,txtBeizhu14,txtBeizhu15,txtBeizhu16,txtBeizhu17,txtBeizhu18,txtBeizhu19,txtBeizhu20,txtBeizhu21,txtBeizhu22,txtBeizhu23,txtBeizhu24,txtBeizhu25,txtBeizhu26,txtBeizhu27,txtBeizhu28;



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
    strFacilityType = @" ";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblGongpeidian.text];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    JingchangDAC *rc = [JingchangDAC alloc];
    Boolean add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblDianlibianyaA.text];
    strCheckContent = [self CheckEmpty:lblDianlibianyacontentA.text];
    switch (segDianlibianya.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segDianlibianya titleForSegmentAtIndex:segDianlibianya.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segDianlibianya titleForSegmentAtIndex:segDianlibianya.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segDianlibianya titleForSegmentAtIndex:segDianlibianya.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第1-2组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort2.text];
    strFacility = [self CheckEmpty:lblGaoyapeidianA.text];
    strCheckContent = [self CheckEmpty:lblGaoyapeidiancontentA.text];
    switch (segGaoyapeidian.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segGaoyapeidian titleForSegmentAtIndex:segGaoyapeidian.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segGaoyapeidian titleForSegmentAtIndex:segGaoyapeidian.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segGaoyapeidian titleForSegmentAtIndex:segGaoyapeidian.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第1-3组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort3.text];
    strFacility = [self CheckEmpty:lblDiyapeidianA.text];
    strCheckContent = [self CheckEmpty:lblDiyapeidiancontentA.text];
    switch (segDiyapediangui.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segDiyapediangui titleForSegmentAtIndex:segDiyapediangui.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segDiyapediangui titleForSegmentAtIndex:segDiyapediangui.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segDiyapediangui titleForSegmentAtIndex:segDiyapediangui.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];

    // 添加第1-4组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort4.text];
    strFacility = [self CheckEmpty:lblEPSA.text];
    strCheckContent = [self CheckEmpty:lblEPScontentA.text];
    switch (segEPSA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segEPSA titleForSegmentAtIndex:segEPSA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segEPSA titleForSegmentAtIndex:segEPSA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segEPSA titleForSegmentAtIndex:segEPSA.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];

    
    // 添加第1-5组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort5.text];
    strFacility = [self CheckEmpty:lblJiaoliuwenyaA.text];
    strCheckContent = [self CheckEmpty:lblJiaoliuwenyacontentA.text];
    switch (segJiaoliuA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segJiaoliuA titleForSegmentAtIndex:segJiaoliuA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segJiaoliuA titleForSegmentAtIndex:segJiaoliuA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segJiaoliuA titleForSegmentAtIndex:segJiaoliuA.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第1-6组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort6.text];
    strFacility = [self CheckEmpty:lblChaiyoufadianA.text];
    strCheckContent = [self CheckEmpty:lblChaiyoufadiancontentA.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu6.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第1-7组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort7.text];
    strFacility = [self CheckEmpty:lblDongwailudengA.text];
    strCheckContent = [self CheckEmpty:lblDongwailudengcontentA.text];
    switch (segDongwaiA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segDongwaiA titleForSegmentAtIndex:segDongwaiA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segDongwaiA titleForSegmentAtIndex:segDongwaiA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segDongwaiA titleForSegmentAtIndex:segDongwaiA.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
   
    // 添加第1-8组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort8.text];
    strFacility = [self CheckEmpty:lblDianxiandianlangA.text];
    strCheckContent = [self CheckEmpty:lblDianxiandianlangcontentA.text];
    switch (segDianxianA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segDianxianA titleForSegmentAtIndex:segDianxianA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segDianxianA titleForSegmentAtIndex:segDianxianA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segDianxianA titleForSegmentAtIndex:segDianxianA.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}




// 添加第一组数据
-(Boolean)AddData2
{
    // 添加表头
    strTunnelID = @"1";
    strFacilityType = @" ";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblZhaomingsheshi.text];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    JingchangDAC *rc = [JingchangDAC alloc];
    Boolean add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblZhaomingsheshi.text];
    strSortID = [self CheckEmpty:lblSort1.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第2-2组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblZhaomingsheshi.text];
    strSortID = [self CheckEmpty:lblSort2.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第2-3组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblZhaomingsheshi.text];
    strSortID = [self CheckEmpty:lblSort3.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu11.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第2-4组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblZhaomingsheshi.text];
    strSortID = [self CheckEmpty:lblSort4.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu12.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}




// 添加第 三组数据
-(Boolean)AddData3
{
    // 添加表头
    strTunnelID = @"1";
    strFacilityType = @" ";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblTongfengsheshi.text];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    JingchangDAC *rc = [JingchangDAC alloc];
    Boolean add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfengsheshi.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblSheliufengjiB.text];
    strCheckContent = [self CheckEmpty:lblSheliufengjicontentB.text];
    switch (segSheliujiC.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segSheliujiC titleForSegmentAtIndex:segSheliujiC.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segSheliujiC titleForSegmentAtIndex:segSheliujiC.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segSheliujiC titleForSegmentAtIndex:segSheliujiC.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第2-2组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfengsheshi.text];
    strSortID = [self CheckEmpty:lblSort2.text];
    strFacility = [self CheckEmpty:lblFengsuB.text];
    strCheckContent = [self CheckEmpty:lblFengsucontentB.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第2-3组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfengsheshi.text];
    strSortID = [self CheckEmpty:lblSort3.text];
    strFacility = [self CheckEmpty:lblCOVIB.text];
    strCheckContent = [self CheckEmpty:lblCOVIcontentB.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu15.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}


// 添加第 四组数据
-(Boolean)AddData4
{
    // 添加表头
    strTunnelID = @"1";
    strFacilityType = @" ";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblXiaofang.text];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    JingchangDAC *rc = [JingchangDAC alloc];
    Boolean add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblHuozaiC.text];
    strCheckContent = [self CheckEmpty:lblHuozaicontentC.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu16.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第4-2组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort2.text];
    strFacility = [self CheckEmpty:lblXiaohuoshuangC.text];
    strCheckContent = [self CheckEmpty:lblXiaohuoshuangcontentC.text];
    switch (segXiaohuoD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segXiaohuoD titleForSegmentAtIndex:segXiaohuoD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segXiaohuoD titleForSegmentAtIndex:segXiaohuoD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segXiaohuoD titleForSegmentAtIndex:segXiaohuoD.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第4-3组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort3.text];
    strFacility = [self CheckEmpty:lblFamengC.text];
    strCheckContent = [self CheckEmpty:lblFamengcontentC.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu18.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第4-4组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort4.text];
    strFacility = [self CheckEmpty:lblXiaofangshuichiC.text];
    strCheckContent = [self CheckEmpty:lblXiaofangshuichicontentC.text];
    switch (segXiaofangD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segXiaofangD titleForSegmentAtIndex:segXiaofangD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segXiaofangD titleForSegmentAtIndex:segXiaofangD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segXiaofangD titleForSegmentAtIndex:segXiaofangD.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加第4-5组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort5.text];
    strFacility = [self CheckEmpty:lblShuibengC.text];
    strCheckContent = [self CheckEmpty:lblShuibengcontentC.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu20.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第4-6组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort6.text];
    strFacility = [self CheckEmpty:lblHentongdaomengC.text];
    strCheckContent = [self CheckEmpty:lblHentongdaomengcontentC.text];
    switch (segHentongdaoD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segHentongdaoD titleForSegmentAtIndex:segHentongdaoD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segHentongdaoD titleForSegmentAtIndex:segHentongdaoD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segHentongdaoD titleForSegmentAtIndex:segHentongdaoD.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第4-7组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort7.text];
    strFacility = [self CheckEmpty:lblJingjidianhuaC.text];
    strCheckContent = [self CheckEmpty:lblJingjidianhuacontentC.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu22.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 添加第4-8组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort8.text];
    strFacility = [self CheckEmpty:lblYingdaosheshiC.text];
    strCheckContent = [self CheckEmpty:lblYingdaosheshicontentC.text];
    switch (segyingdaoD.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segyingdaoD titleForSegmentAtIndex:segyingdaoD.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segyingdaoD titleForSegmentAtIndex:segyingdaoD.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segyingdaoD titleForSegmentAtIndex:segyingdaoD.selectedSegmentIndex];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}


// 添加第 五组数据
-(Boolean)AddData5
{
    // 添加表头
    strTunnelID = @"1";
    strFacilityType = @" ";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblJiankong.text];
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
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    JingchangDAC *rc = [JingchangDAC alloc];
    Boolean add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblJiaotongD.text];
    strCheckContent = [self CheckEmpty:lblJiaotongcontentD.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu24.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    
    // 添加5-2组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSort2.text];
    strFacility = [self CheckEmpty:lblBiludianshiD.text];
    strCheckContent = [self CheckEmpty:lblBiludianshicontentD.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu25.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];

    // 添加5-3组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSort3.text];
    strFacility = [self CheckEmpty:lblKebianxinxiD.text];
    strCheckContent = [self CheckEmpty:lblKebianxinxicontentD.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu26.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    

    // 添加5-4组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSort4.text];
    strFacility = [self CheckEmpty:lblBendikongzhiD.text];
    strCheckContent = [self CheckEmpty:lblBendikongzhicontentD.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu27.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 添加5-5组数据
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSort5.text];
    strFacility = [self CheckEmpty:lblJiankongshiD.text];
    strCheckContent = [self CheckEmpty:lblJiankongshicontentD.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu28.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"2";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [JingchangDAC alloc];
    add = [rc ADdJingchangWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}





@end
