//
//  DingqiViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-25.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "DingqiViewController.h"

@interface DingqiViewController ()

@end

@implementation DingqiViewController

#pragma mark - 属性
@synthesize lblGongpeidian,lblZhaoming,lblTongfengsheshi,lblXiaofang,lblJiankong;
@synthesize lblSort1,lblSort2,lblSort3,lblSort4,lblSort5,lblSort6,lblSort7;
@synthesize lblDianliA,lblGaoyaA,lblDiyaA,lblEPSA,lblChaiyouA,lblDianxianA,lblJiediA,lblSuidaoB,lblDongwaiB,lblLiangduB,lblZhouliuC,lblSheliuC,lblFengsuC,lblCOVIC,lblFamengD,lblXiaofangshuichiD,lblJingjidianhuaD,lblYingdaoD,lblJiaotongE,lblBiludianshiE,lblKebianxinxiE,lblJiankongshiE;
@synthesize lblDianliContentA,lblGaoyaContentA,lblDiyaContentA,lblEPSContentA,lblChaiyouContentA,lblDianxianContentA,lblJiediContentA,lblSuidaoContentB,lblDongwaiContentB,lblLiangduContentB,lblZhouliuContentC,lblSheliuContentC,lblFengsuContentC,lblCOVIContentC,lblFamengContentD,lblXiaofangshuichiContentD,lblJingjidianhuaContentD,lblYingdaoContentD,lblJiaotongContentE,lblBiludianshiContentE,lblKebianxinxiContentE,lblJiankongshiContentE;
@synthesize segDianli,segGaoyaA,segDiyaA,segEPSA,segChaiyouA,segDianxianA,segJiediA,segSuidaoB,segDongwaiB,segLiangduB,segZhouliuC,segSheliuC,segFengsuC,segCOVIC,segFamengD,segXiaofangshuichiD,segJingjidianhuaD,segYingdaoD,segJiaotongE,segBiludianshiE,segKebianxinxiE,segJiankongshiE;
@synthesize txtBeizhu1,txtBeizhu2,txtBeizhu3,txtBeizhu4,txtBeizhu5,txtBeizhu6,txtBeizhu7,txtBeizhu8,txtBeizhu9,txtBeizhu10,txtBeizhu11,txtBeizhu12,txtBeizhu13,txtBeizhu14,txtBeizhu15,txtBeizhu16,txtBeizhu17,txtBeizhu18,txtBeizhu19,txtBeizhu20,txtBeizhu21,txtBeizhu22;


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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    DingqiDAC *rc = [DingqiDAC alloc];
    Boolean add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblDianliA.text];
    strCheckContent = [self CheckEmpty:lblDianliContentA.text];
    switch (segDianli.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segDianli titleForSegmentAtIndex:segDianli.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segDianli titleForSegmentAtIndex:segDianli.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segDianli titleForSegmentAtIndex:segDianli.selectedSegmentIndex];
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 1-2
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort2.text];
    strFacility = [self CheckEmpty:lblGaoyaA.text];
    strCheckContent = [self CheckEmpty:lblGaoyaContentA.text];
    switch (segGaoyaA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segGaoyaA titleForSegmentAtIndex:segGaoyaA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segGaoyaA titleForSegmentAtIndex:segGaoyaA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segGaoyaA titleForSegmentAtIndex:segGaoyaA.selectedSegmentIndex];
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];

    // 1-3
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort3.text];
    strFacility = [self CheckEmpty:lblDiyaA.text];
    strCheckContent = [self CheckEmpty:lblDiyaContentA.text];
    switch (segDiyaA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segDiyaA titleForSegmentAtIndex:segDiyaA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segDiyaA titleForSegmentAtIndex:segDiyaA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segDiyaA titleForSegmentAtIndex:segDiyaA.selectedSegmentIndex];
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];

    // 1-4
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort4.text];
    strFacility = [self CheckEmpty:lblEPSA.text];
    strCheckContent = [self CheckEmpty:lblEPSContentA.text];
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 1-5
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort5.text];
    strFacility = [self CheckEmpty:lblChaiyouA.text];
    strCheckContent = [self CheckEmpty:lblChaiyouContentA.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu5.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 1-6
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort6.text];
    strFacility = [self CheckEmpty:lblDianxianA.text];
    strCheckContent = [self CheckEmpty:lblDianxianContentA.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu6.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 1-7
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort7.text];
    strFacility = [self CheckEmpty:lblJiediA.text];
    strCheckContent = [self CheckEmpty:lblJiediContentA.text];
    switch (segJiediA.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segJiediA titleForSegmentAtIndex:segJiediA.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segJiediA titleForSegmentAtIndex:segJiediA.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segJiediA titleForSegmentAtIndex:segJiediA.selectedSegmentIndex];
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}




// 添加第2组数据
-(Boolean)AddData2
{
    // 添加表头
    strTunnelID = @"1";
    strFacilityType = @" ";
    strSortID =@"0";
    strFacility = [self CheckEmpty:lblZhaoming.text];
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    DingqiDAC *rc = [DingqiDAC alloc];
    Boolean add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblZhaoming.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblSuidaoB.text];
    strCheckContent = [self CheckEmpty:lblSuidaoContentB.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu8.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 2-2
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblZhaoming.text];
    strSortID = [self CheckEmpty:lblSort2.text];
    strFacility = [self CheckEmpty:lblDongwaiB.text];
    strCheckContent = [self CheckEmpty:lblDongwaiContentB.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu9.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 2-3
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblZhaoming.text];
    strSortID = [self CheckEmpty:lblSort3.text];
    strFacility = [self CheckEmpty:lblLiangduB.text];
    strCheckContent = [self CheckEmpty:lblLiangduContentB.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu10.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}



// 添加第2组数据
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    DingqiDAC *rc = [DingqiDAC alloc];
    Boolean add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfengsheshi.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblZhouliuC.text];
    strCheckContent = [self CheckEmpty:lblZhouliuContentC.text];
    switch (segZhouliuC.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segZhouliuC titleForSegmentAtIndex:segZhouliuC.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segZhouliuC titleForSegmentAtIndex:segZhouliuC.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segZhouliuC titleForSegmentAtIndex:segZhouliuC.selectedSegmentIndex];
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];

    
    // 3-2
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfengsheshi.text];
    strSortID = [self CheckEmpty:lblSort2.text];
    strFacility = [self CheckEmpty:lblSheliuC.text];
    strCheckContent = [self CheckEmpty:lblSheliuContentC.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu12.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 3-3
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfengsheshi.text];
    strSortID = [self CheckEmpty:lblSort3.text];
    strFacility = [self CheckEmpty:lblFengsuC.text];
    strCheckContent = [self CheckEmpty:lblFengsuContentC.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu13.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 3-4
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfengsheshi.text];
    strSortID = [self CheckEmpty:lblSort4.text];
    strFacility = [self CheckEmpty:lblCOVIC.text];
    strCheckContent = [self CheckEmpty:lblCOVIContentC.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu14.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}



// 添加第4组数据
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    DingqiDAC *rc = [DingqiDAC alloc];
    Boolean add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblFamengD.text];
    strCheckContent = [self CheckEmpty:lblFamengContentD.text];
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 4-2
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort2.text];
    strFacility = [self CheckEmpty:lblXiaofangshuichiD.text];
    strCheckContent = [self CheckEmpty:lblXiaofangshuichiContentD.text];
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 4-3
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort3.text];
    strFacility = [self CheckEmpty:lblJingjidianhuaD.text];
    strCheckContent = [self CheckEmpty:lblJingjidianhuaContentD.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu17.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    
    // 4-4
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblXiaofang.text];
    strSortID = [self CheckEmpty:lblSort4.text];
    strFacility = [self CheckEmpty:lblYingdaoD.text];
    strCheckContent = [self CheckEmpty:lblYingdaoContentD.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu18.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}




// 添加第5组数据
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
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    DingqiDAC *rc = [DingqiDAC alloc];
    Boolean add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblJiaotongE.text];
    strCheckContent = [self CheckEmpty:lblJiaotongContentE.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu19.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];


    // 5-2
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSort2.text];
    strFacility = [self CheckEmpty:lblBiludianshiE.text];
    strCheckContent = [self CheckEmpty:lblBiludianshiContentE.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu20.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    

    // 5-3
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSort3.text];
    strFacility = [self CheckEmpty:lblKebianxinxiE.text];
    strCheckContent = [self CheckEmpty:lblKebianxinxiContentE.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu21.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    

    // 5-4
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblJiankong.text];
    strSortID = [self CheckEmpty:lblSort4.text];
    strFacility = [self CheckEmpty:lblJiankongshiE.text];
    strCheckContent = [self CheckEmpty:lblJiankongshiContentE.text];
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
    
    strRemark = [self CheckEmpty:txtBeizhu22.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strflg =@"3";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [DingqiDAC alloc];
    add = [rc AddDingqiWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}




















@end
