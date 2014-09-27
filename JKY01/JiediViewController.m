//
//  JiediViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-4-4.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "JiediViewController.h"
#import "ErrLog.h"
#import "SYSJiediDAC.h"

@interface JiediViewController ()

@end

@implementation JiediViewController
@synthesize lblSort1,
lblSort2,
lblSort3,
lblSort4,
lblSort5,
lblSort6,
lblSort7,
txtceshi1,
txtceshi2,
txtceshi3,
txtceshi4,
txtceshi5,
txtceshi6,
txtceshi7,
ceshizhi1,
ceshizhi2,
ceshizhi3,
ceshizhi4,
ceshizhi5,
ceshizhi6,
ceshizhi7,
txtbeizhu1,
txtbeizhu2,
txtbeizhu3,
txtbeizhu4,
txtbeizhu5,
txtbeizhu6,
txtbeizhu7;


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
    strTestStation = [self CheckEmpty:txtceshi1.text];
    strTestValue = [self CheckEmpty:ceshizhi1.text];
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
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    
    SYSJiediDAC *cc = [SYSJiediDAC alloc];
    Boolean add = [cc AddJDTEstWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID TestStation:strTestStation TestValue:strTestValue Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    
    // 第2组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];;
    strTestStation = [self CheckEmpty:txtceshi2.text];
    strTestValue = [self CheckEmpty:ceshizhi2.text];
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
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSJiediDAC alloc];
    add = [cc AddJDTEstWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID TestStation:strTestStation TestValue:strTestValue Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    // 第3组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];;
    strTestStation = [self CheckEmpty:txtceshi3.text];
    strTestValue = [self CheckEmpty:ceshizhi3.text];
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
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSJiediDAC alloc];
    add = [cc AddJDTEstWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID TestStation:strTestStation TestValue:strTestValue Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    // 第4组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];;
    strTestStation = [self CheckEmpty:txtceshi4.text];
    strTestValue = [self CheckEmpty:ceshizhi4.text];
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
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSJiediDAC alloc];
    add = [cc AddJDTEstWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID TestStation:strTestStation TestValue:strTestValue Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    // 第5组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort5.text];;
    strTestStation = [self CheckEmpty:txtceshi5.text];
    strTestValue = [self CheckEmpty:ceshizhi5.text];
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
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSJiediDAC alloc];
    add = [cc AddJDTEstWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID TestStation:strTestStation TestValue:strTestValue Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    // 第6组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort6.text];;
    strTestStation = [self CheckEmpty:txtceshi6.text];
    strTestValue = [self CheckEmpty:ceshizhi6.text];
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
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSJiediDAC alloc];
    add = [cc AddJDTEstWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID TestStation:strTestStation TestValue:strTestValue Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    // 第7组数据
    strRoadID = @"1";
    strTaskID = @"1";
    strSortID = [self CheckEmpty:lblSort7.text];;
    strTestStation = [self CheckEmpty:txtceshi7.text];
    strTestValue = [self CheckEmpty:ceshizhi7.text];
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
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    cc = [SYSJiediDAC alloc];
    add = [cc AddJDTEstWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID TestStation:strTestStation TestValue:strTestValue Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strAddDate Uploadflg:strUploadflg];
    
    return add;
}


































@end
