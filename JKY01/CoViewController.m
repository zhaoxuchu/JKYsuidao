//
//  CoViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-26.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "CoViewController.h"
#import "DBInfo.h"

@interface CoViewController ()

@end

@implementation CoViewController
#pragma mark - co------------------------------------------------------------------------------------------------------------------------------------
@synthesize segCOweizhi1,
segCOweizhi2,
segCOweizhi3;
@synthesize txtCo11,
txtCo12,
txtCo13,
txtCo14,
txtCo15,
txtCo16,
txtCo21,
txtCo22,
txtCo23,
txtCo24,
txtCo25,
txtCo26,
txtCo31,
txtCo32,
txtCo33,
txtCo34,
txtCo35,
txtCo36;

#pragma mark - yanwu------------------------------------------------------------------------------------------------------------------------------------
@synthesize segYanwuweizhi1,
segYanwuweizhi2,
segYanwuweizhi3;
@synthesize txtyanwu11,
txtyanwu12,
txtyanwu13,
txtyanwu14,
txtyanwu15,
txtyanwu16,
txtyanwu21,
txtyanwu22,
txtyanwu23,
txtyanwu24,
txtyanwu25,
txtyanwu26,
txtyanwu31,
txtyanwu32,
txtyanwu33,
txtyanwu34,
txtyanwu35,
txtyanwu36;

#pragma mark - 接地电阻------------------------------------------------------------------------------------------------------------------------------------
@synthesize lblSort1,
lblSort2,
lblSort3,
lblSort4,
lblSort5;
@synthesize segJiediceshi1,
segJiediceshi2,
segJiediceshi3,
segJiediceshi4,
segJiediceshi5,
segJiedixingzhi1,
segJiedixingzhi2,
segJiedixingzhi3,
segJiedixingzhi4,
segJiedixingzhi5;
@synthesize txtShejizhi1,
txtShejizhi2,
txtShejizhi3,
txtShejizhi4,
txtShejizhi5,
txtshice1,
txtshice2,
txtshice3,
txtshice4,
txtshice5,
txtBeizhu1,
txtBeizhu2,
txtBeizhu3,
txtBeizhu4,
txtBeizhu5;

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


// 添加第1组数据 表头数据
-(Boolean)AddData1
{
    // 1
    strTunnelID = @"1";
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strType = @"";
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
    
    OtherDAC *ad = [OtherDAC alloc];
    Boolean add = [ad AddOtherTestWithTunnelID:strTunnelID type:strType Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    return add;
}


// 添加第2组数据
-(Boolean)AddData2
{
    // 1
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strStation = [segCOweizhi1 titleForSegmentAtIndex:segCOweizhi1.selectedSegmentIndex];
    strCO1 = [self CheckEmpty:txtCo11.text];
    strCO2 = [self CheckEmpty:txtCo12.text];
    strCO3 = [self CheckEmpty:txtCo13.text];
    strCO4 = [self CheckEmpty:txtCo14.text];
    strCO5 = [self CheckEmpty:txtCo15.text];
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strflg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    OtherDAC *ad = [OtherDAC alloc];
    Boolean add = [ad AddCOYanWuWithOtherTestID:strOtherTestID Station:strStation CO1:strCO1 CO2:strCO2 CO3:strCO3 CO4:strCO4 CO5:strCO5 AddUser:strAddUser AddDate:strAddDate Flg:strflg Uploadflg:strUploadflg];
    
    
    // 2
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strStation = [segCOweizhi2 titleForSegmentAtIndex:segCOweizhi2.selectedSegmentIndex];
    strCO1 = [self CheckEmpty:txtCo21.text];
    strCO2 = [self CheckEmpty:txtCo22.text];
    strCO3 = [self CheckEmpty:txtCo23.text];
    strCO4 = [self CheckEmpty:txtCo24.text];
    strCO5 = [self CheckEmpty:txtCo25.text];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strflg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    ad = [OtherDAC alloc];
    add = [ad AddCOYanWuWithOtherTestID:strOtherTestID Station:strStation CO1:strCO1 CO2:strCO2 CO3:strCO3 CO4:strCO4 CO5:strCO5 AddUser:strAddUser AddDate:strAddDate Flg:strflg Uploadflg:strUploadflg];
    
    // 3
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strStation = [segCOweizhi3 titleForSegmentAtIndex:segCOweizhi3.selectedSegmentIndex];
    strCO1 = [self CheckEmpty:txtCo31.text];
    strCO2 = [self CheckEmpty:txtCo32.text];
    strCO3 = [self CheckEmpty:txtCo33.text];
    strCO4 = [self CheckEmpty:txtCo34.text];
    strCO5 = [self CheckEmpty:txtCo35.text];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strflg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    ad = [OtherDAC alloc];
    add = [ad AddCOYanWuWithOtherTestID:strOtherTestID Station:strStation CO1:strCO1 CO2:strCO2 CO3:strCO3 CO4:strCO4 CO5:strCO5 AddUser:strAddUser AddDate:strAddDate Flg:strflg Uploadflg:strUploadflg];
    
    return add;
}


// 添加第3组数据
-(Boolean)AddData3
{
    // 1
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strStation = [segYanwuweizhi1 titleForSegmentAtIndex:segYanwuweizhi1.selectedSegmentIndex];
    strCO1 = [self CheckEmpty:txtyanwu11.text];
    strCO2 = [self CheckEmpty:txtyanwu12.text];
    strCO3 = [self CheckEmpty:txtyanwu13.text];
    strCO4 = [self CheckEmpty:txtyanwu14.text];
    strCO5 = [self CheckEmpty:txtyanwu15.text];
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strflg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    OtherDAC *ad = [OtherDAC alloc];
    Boolean add = [ad AddCOYanWuWithOtherTestID:strOtherTestID Station:strStation CO1:strCO1 CO2:strCO2 CO3:strCO3 CO4:strCO4 CO5:strCO5 AddUser:strAddUser AddDate:strAddDate Flg:strflg Uploadflg:strUploadflg];
    
    
    // 2
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strStation = [segYanwuweizhi2 titleForSegmentAtIndex:segYanwuweizhi2.selectedSegmentIndex];
    strCO1 = [self CheckEmpty:txtyanwu21.text];
    strCO2 = [self CheckEmpty:txtyanwu22.text];
    strCO3 = [self CheckEmpty:txtyanwu23.text];
    strCO4 = [self CheckEmpty:txtyanwu24.text];
    strCO5 = [self CheckEmpty:txtyanwu25.text];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strflg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    ad = [OtherDAC alloc];
    add = [ad AddCOYanWuWithOtherTestID:strOtherTestID Station:strStation CO1:strCO1 CO2:strCO2 CO3:strCO3 CO4:strCO4 CO5:strCO5 AddUser:strAddUser AddDate:strAddDate Flg:strflg Uploadflg:strUploadflg];
    
    // 3
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strStation = [segYanwuweizhi3 titleForSegmentAtIndex:segYanwuweizhi3.selectedSegmentIndex];
    strCO1 = [self CheckEmpty:txtyanwu31.text];
    strCO2 = [self CheckEmpty:txtyanwu32.text];
    strCO3 = [self CheckEmpty:txtyanwu33.text];
    strCO4 = [self CheckEmpty:txtyanwu34.text];
    strCO5 = [self CheckEmpty:txtyanwu35.text];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strflg = @"1";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    ad = [OtherDAC alloc];
    add = [ad AddCOYanWuWithOtherTestID:strOtherTestID Station:strStation CO1:strCO1 CO2:strCO2 CO3:strCO3 CO4:strCO4 CO5:strCO5 AddUser:strAddUser AddDate:strAddDate Flg:strflg Uploadflg:strUploadflg];
    
    return add;
}

// 添加第4组数据
-(Boolean)AddData4
{
    // 1
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strTestStation = [segJiediceshi1 titleForSegmentAtIndex:segJiediceshi1.selectedSegmentIndex];
    strJDXZ = [segJiedixingzhi1 titleForSegmentAtIndex:segJiedixingzhi1.selectedSegmentIndex];
    strDesignValue = [self CheckEmpty:txtShejizhi1.text];
    strTrueValue = [self CheckEmpty:txtshice1.text];
    strRemark = [self CheckEmpty:txtBeizhu1.text];
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    OtherDAC *ad = [OtherDAC alloc];
    Boolean add = [ad AddJDTestTBWithOtherTestID:strOtherTestID TestStation:strTestStation JDXZ:strJDXZ DesignValue:strDesignValue TrueValue:strTrueValue Remark:strRemark AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    
    // 2
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strTestStation = [segJiediceshi2 titleForSegmentAtIndex:segJiediceshi2.selectedSegmentIndex];
    strJDXZ = [segJiedixingzhi2 titleForSegmentAtIndex:segJiedixingzhi2.selectedSegmentIndex];
    strDesignValue = [self CheckEmpty:txtShejizhi2.text];
    strTrueValue = [self CheckEmpty:txtshice2.text];
    strRemark = [self CheckEmpty:txtBeizhu2.text];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    ad = [OtherDAC alloc];
    add = [ad AddJDTestTBWithOtherTestID:strOtherTestID TestStation:strTestStation JDXZ:strJDXZ DesignValue:strDesignValue TrueValue:strTrueValue Remark:strRemark AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    // 3
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strTestStation = [segJiediceshi3 titleForSegmentAtIndex:segJiediceshi3.selectedSegmentIndex];
    strJDXZ = [segJiedixingzhi3 titleForSegmentAtIndex:segJiedixingzhi3.selectedSegmentIndex];
    strDesignValue = [self CheckEmpty:txtShejizhi3.text];
    strTrueValue = [self CheckEmpty:txtshice3.text];
    strRemark = [self CheckEmpty:txtBeizhu3.text];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    ad = [OtherDAC alloc];
    add = [ad AddJDTestTBWithOtherTestID:strOtherTestID TestStation:strTestStation JDXZ:strJDXZ DesignValue:strDesignValue TrueValue:strTrueValue Remark:strRemark AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    // 4
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strTestStation = [segJiediceshi4 titleForSegmentAtIndex:segJiediceshi4.selectedSegmentIndex];
    strJDXZ = [segJiedixingzhi4 titleForSegmentAtIndex:segJiedixingzhi4.selectedSegmentIndex];
    strDesignValue = [self CheckEmpty:txtShejizhi4.text];
    strTrueValue = [self CheckEmpty:txtshice4.text];
    strRemark = [self CheckEmpty:txtBeizhu4.text];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    ad = [OtherDAC alloc];
    add = [ad AddJDTestTBWithOtherTestID:strOtherTestID TestStation:strTestStation JDXZ:strJDXZ DesignValue:strDesignValue TrueValue:strTrueValue Remark:strRemark AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];

    // 5
    if ([[DBInfo GetOptOtherTestDBOutPutResult] isEqualToString:@""]) {
        strOtherTestID = @"0";
    }
    else
    {
        strOtherTestID = [DBInfo GetOptOtherTestDBOutPutResult];
    }
    
    strTestStation = [segJiediceshi5 titleForSegmentAtIndex:segJiediceshi5.selectedSegmentIndex];
    strJDXZ = [segJiedixingzhi5 titleForSegmentAtIndex:segJiedixingzhi5.selectedSegmentIndex];
    strDesignValue = [self CheckEmpty:txtShejizhi5.text];
    strTrueValue = [self CheckEmpty:txtshice5.text];
    strRemark = [self CheckEmpty:txtBeizhu5.text];
    strAddDate = locationString;
    strAddUser = @"zxc";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    ad = [OtherDAC alloc];
    add = [ad AddJDTestTBWithOtherTestID:strOtherTestID TestStation:strTestStation JDXZ:strJDXZ DesignValue:strDesignValue TrueValue:strTrueValue Remark:strRemark AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    return add;

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
        return @"0";
    }
    else
    {
        return strValue;
    }
}















































@end
