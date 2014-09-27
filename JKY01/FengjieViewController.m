//
//  FengjieViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-25.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "FengjieViewController.h"

@interface FengjieViewController ()

@end

@implementation FengjieViewController

#pragma mark - 属性
@synthesize lblGongpeidian,
lblTongfengsheshi,
lblSort1,
lblSort2,
lblGaoya,
lblDiya,
lblTongfeng,
lblGaoyaContent,
lblDiyaContent,
lblTongfengContent,
segGaoya,
segDiya,
segTongfeng,
txtBeizhu1,
txtBeizhu2,
txtBeizhu3;


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
        [self AddData2])
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
    strflg =@"4";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    FengjieDAC *rc = [FengjieDAC alloc];
    Boolean add = [rc AddFengjieWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblGaoya.text];
    strCheckContent = [self CheckEmpty:lblGaoyaContent.text];
    switch (segGaoya.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segGaoya titleForSegmentAtIndex:segGaoya.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segGaoya titleForSegmentAtIndex:segGaoya.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segGaoya titleForSegmentAtIndex:segGaoya.selectedSegmentIndex];
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
    strflg =@"4";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [FengjieDAC alloc];
    add = [rc AddFengjieWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    // 1-2
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblGongpeidian.text];
    strSortID = [self CheckEmpty:lblSort2.text];
    strFacility = [self CheckEmpty:lblDiya.text];
    strCheckContent = [self CheckEmpty:lblDiyaContent.text];
    switch (segDiya.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segDiya titleForSegmentAtIndex:segDiya.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segDiya titleForSegmentAtIndex:segDiya.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segDiya titleForSegmentAtIndex:segDiya.selectedSegmentIndex];
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
    strflg =@"4";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [FengjieDAC alloc];
    add = [rc AddFengjieWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];

    
    return add;
}



// 添加第2组数据
-(Boolean)AddData2
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
    strflg =@"4";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    FengjieDAC *rc = [FengjieDAC alloc];
    Boolean add = [rc AddFengjieWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    strTunnelID = @"1";
    strFacilityType = [self CheckEmpty:lblTongfengsheshi.text];
    strSortID = [self CheckEmpty:lblSort1.text];
    strFacility = [self CheckEmpty:lblTongfeng.text];
    strCheckContent = [self CheckEmpty:lblTongfengContent.text];
    switch (segTongfeng.selectedSegmentIndex) {
        case 0:
            strRecordAll = [segTongfeng titleForSegmentAtIndex:segTongfeng.selectedSegmentIndex];
            strCheckNotAll = @"-";
            strRecordNo = @"-";
            break;
        case 1:
            strRecordAll = @"-";
            strCheckNotAll = [segTongfeng titleForSegmentAtIndex:segTongfeng.selectedSegmentIndex];
            strRecordNo = @"-";
            break;
            
        case 2:
            strRecordAll = @"-";
            strCheckNotAll = @"-";
            strRecordNo = [segTongfeng titleForSegmentAtIndex:segTongfeng.selectedSegmentIndex];
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
    strflg =@"4";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    // 数据库存储
    rc = [FengjieDAC alloc];
    add = [rc AddFengjieWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID flg:strflg];
    
    return add;
}

















@end
