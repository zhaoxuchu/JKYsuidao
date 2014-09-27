//
//  RenyuanSANViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-31.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "RenyuanSANViewController.h"
#import "RenyuanDAC.h"
#import "ErrLog.h"

@interface RenyuanSANViewController ()

@end

@implementation RenyuanSANViewController
@synthesize lblSort1 , lblSort2 , lblSort3 , lblSort4 , lblSort5 , lblSort6 , lblSort7 , lblSort8;
@synthesize lbljishudangan , lblyanghurenyuan , lblgangwei , lblyanghujihua , lblyanghurenyuanshanggang , lblteshuzhuangmeng , lblteshuleixing , lblqita , txtQita;
@synthesize segjishu , segYanghurenyuan , segGangwei , segYanghujihua , segYanghurenyuanshanggang , segTeshuzhuangmeng , lblDiangongzuoye , lblXiaofangyuan , txtDiangong , txtXiaofang , lblType3;
@synthesize lblDangan , lblRenyuandazhi , lblZerenzhi , lblJihua , lblPeixun , lblPeixun2;
@synthesize txtDangan , txtRenyuandazhi , txtZerenzhi , txtJihuamingcheng , txtPeixun1 , txtPeixun2;
@synthesize lblBeizhu;
@synthesize txtbeizhu1 , txtBeizhu2 , txtBeizhu3 , txtBeizhu4 , txtBeizhu5 , txtBeizhu6 , txtBeizhu8;


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
        [self AddData5] &&
        [self AddData6] &&
        [self AddData7] &&
        [self AddData8]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[ErrLog GetOptTitle]  message:[ErrLog Getexception] delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }
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



-(BOOL)AddData1
{
    // 添加第一组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckProName = [self CheckEmpty:lbljishudangan.text];
    switch (segjishu.selectedSegmentIndex) {
        case 0:
            strTypeResult1 = [segjishu titleForSegmentAtIndex:segjishu.selectedSegmentIndex];
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
        case 1:
            strTypeResult1 = @"-";
            strTypeResult2 = [segjishu titleForSegmentAtIndex:segjishu.selectedSegmentIndex];
            strTypeResult3 = @"-";
            break;
            
        case 2:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = [segjishu titleForSegmentAtIndex:segjishu.selectedSegmentIndex];
            break;
            
        default:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
    }
    
    strExplainName = [self CheckEmpty:lblDangan.text];
    strExplainContent = [self CheckEmpty:txtDangan.text];
    strRemark = [self CheckEmpty:txtbeizhu1.text];
    strAddUser = @"zxc";
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAgain = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    
    strTbFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    RenyuanDAC *ry = [RenyuanDAC alloc];
    BOOL *add = [ry AddRenyuanDataWithTunnelID:strTunnelID SortID:strSortID CheckProName:strCheckProName TypeResult1:strTypeResult1 TypeResult2:strTypeResult2 TypeResult3:strTypeResult3 ExplainName:strExplainName ExplainContent:strExplainContent Remark:strRemark AddUser:strAddUser Checked:strChecked Record:strRecord CheckAgain:strCheckAgain AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg];
    
    return add;
    
}

-(BOOL)AddData2
{
    // 添加第二组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckProName = [self CheckEmpty:lblyanghurenyuan.text];
    switch (segYanghurenyuan.selectedSegmentIndex) {
        case 0:
            strTypeResult1 = [segYanghurenyuan titleForSegmentAtIndex:segYanghurenyuan.selectedSegmentIndex];
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
        case 1:
            strTypeResult1 = @"-";
            strTypeResult2 = [segYanghurenyuan titleForSegmentAtIndex:segYanghurenyuan.selectedSegmentIndex];
            strTypeResult3 = @"-";
            break;
            
        case 2:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = [segYanghurenyuan titleForSegmentAtIndex:segYanghurenyuan.selectedSegmentIndex];
            break;
            
        default:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
    }
    
    strExplainName = [self CheckEmpty:lblRenyuandazhi.text];
    strExplainContent = [self CheckEmpty:txtRenyuandazhi.text];
    strRemark = [self CheckEmpty:txtBeizhu2.text];
    strAddUser = @"zxc";
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAgain = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    
    strTbFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    RenyuanDAC *ry = [RenyuanDAC alloc];
    BOOL *add = [ry AddRenyuanDataWithTunnelID:strTunnelID SortID:strSortID CheckProName:strCheckProName TypeResult1:strTypeResult1 TypeResult2:strTypeResult2 TypeResult3:strTypeResult3 ExplainName:strExplainName ExplainContent:strExplainContent Remark:strRemark AddUser:strAddUser Checked:strChecked Record:strRecord CheckAgain:strCheckAgain AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg];
    
    return add;
    
}

// 添加第三组数据
-(BOOL)AddData3
{
    // 添加第三组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckProName = [self CheckEmpty:lblgangwei.text];
    switch (segGangwei.selectedSegmentIndex) {
        case 0:
            strTypeResult1 = [segGangwei titleForSegmentAtIndex:segGangwei.selectedSegmentIndex];
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
        case 1:
            strTypeResult1 = @"-";
            strTypeResult2 = [segGangwei titleForSegmentAtIndex:segGangwei.selectedSegmentIndex];
            strTypeResult3 = @"-";
            break;
            
        case 2:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = [segGangwei titleForSegmentAtIndex:segGangwei.selectedSegmentIndex];
            break;
            
        default:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
    }
    
    strExplainName = [self CheckEmpty:lblZerenzhi.text];
    strExplainContent = [self CheckEmpty:txtZerenzhi.text];
    strRemark = [self CheckEmpty:txtBeizhu3.text];
    strAddUser = @"zxc";
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAgain = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    
    strTbFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    RenyuanDAC *ry = [RenyuanDAC alloc];
    BOOL *add = [ry AddRenyuanDataWithTunnelID:strTunnelID SortID:strSortID CheckProName:strCheckProName TypeResult1:strTypeResult1 TypeResult2:strTypeResult2 TypeResult3:strTypeResult3 ExplainName:strExplainName ExplainContent:strExplainContent Remark:strRemark AddUser:strAddUser Checked:strChecked Record:strRecord CheckAgain:strCheckAgain AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg];
    
    return add;
    
}



// 添加第四组数据
-(BOOL)AddData4
{
    // 添加第三组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckProName = [self CheckEmpty:lblyanghujihua.text];
    switch (segYanghujihua.selectedSegmentIndex) {
        case 0:
            strTypeResult1 = [segYanghujihua titleForSegmentAtIndex:segYanghujihua.selectedSegmentIndex];
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
        case 1:
            strTypeResult1 = @"-";
            strTypeResult2 = [segYanghujihua titleForSegmentAtIndex:segYanghujihua.selectedSegmentIndex];
            strTypeResult3 = @"-";
            break;
            
        case 2:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = [segYanghujihua titleForSegmentAtIndex:segYanghujihua.selectedSegmentIndex];
            break;
            
        default:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
    }
    
    strExplainName = [self CheckEmpty:lblJihua.text];
    strExplainContent = [self CheckEmpty:txtJihuamingcheng.text];
    strRemark = [self CheckEmpty:txtBeizhu4.text];
    strAddUser = @"zxc";
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAgain = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    
    strTbFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    RenyuanDAC *ry = [RenyuanDAC alloc];
    BOOL *add = [ry AddRenyuanDataWithTunnelID:strTunnelID SortID:strSortID CheckProName:strCheckProName TypeResult1:strTypeResult1 TypeResult2:strTypeResult2 TypeResult3:strTypeResult3 ExplainName:strExplainName ExplainContent:strExplainContent Remark:strRemark AddUser:strAddUser Checked:strChecked Record:strRecord CheckAgain:strCheckAgain AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg];
    
    return add;
    
}


// 添加第五组数据
-(BOOL)AddData5
{
    // 添加第五组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort5.text];
    strCheckProName = [self CheckEmpty:lblyanghurenyuanshanggang.text];
    switch (segYanghurenyuanshanggang.selectedSegmentIndex) {
        case 0:
            strTypeResult1 = [segYanghurenyuanshanggang titleForSegmentAtIndex:segYanghurenyuanshanggang.selectedSegmentIndex];
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
        case 1:
            strTypeResult1 = @"-";
            strTypeResult2 = [segYanghurenyuanshanggang titleForSegmentAtIndex:segYanghurenyuanshanggang.selectedSegmentIndex];
            strTypeResult3 = @"-";
            break;
            
        case 2:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = [segYanghurenyuanshanggang titleForSegmentAtIndex:segYanghurenyuanshanggang.selectedSegmentIndex];
            break;
            
        default:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
    }
    
    strExplainName = [self CheckEmpty:lblPeixun.text];
    strExplainContent = [self CheckEmpty:txtPeixun1.text];
    strRemark = [self CheckEmpty:txtBeizhu5.text];
    strAddUser = @"zxc";
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAgain = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    
    strTbFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    RenyuanDAC *ry = [RenyuanDAC alloc];
    BOOL *add = [ry AddRenyuanDataWithTunnelID:strTunnelID SortID:strSortID CheckProName:strCheckProName TypeResult1:strTypeResult1 TypeResult2:strTypeResult2 TypeResult3:strTypeResult3 ExplainName:strExplainName ExplainContent:strExplainContent Remark:strRemark AddUser:strAddUser Checked:strChecked Record:strRecord CheckAgain:strCheckAgain AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg];
    
    return add;
    
}


// 添加第六组数据
-(BOOL)AddData6
{
    // 添加第六组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort6.text];
    strCheckProName = [self CheckEmpty:lblteshuzhuangmeng.text];
    switch (segTeshuzhuangmeng.selectedSegmentIndex) {
        case 0:
            strTypeResult1 = [segTeshuzhuangmeng titleForSegmentAtIndex:segTeshuzhuangmeng.selectedSegmentIndex];
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
        case 1:
            strTypeResult1 = @"-";
            strTypeResult2 = [segTeshuzhuangmeng titleForSegmentAtIndex:segTeshuzhuangmeng.selectedSegmentIndex];
            strTypeResult3 = @"-";
            break;
            
        case 2:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = [segTeshuzhuangmeng titleForSegmentAtIndex:segTeshuzhuangmeng.selectedSegmentIndex];
            break;
            
        default:
            strTypeResult1 = @"-";
            strTypeResult2 = @"-";
            strTypeResult3 = @"-";
            break;
    }
    
    strExplainName = [self CheckEmpty:lblPeixun2.text];
    strExplainContent = [self CheckEmpty:txtPeixun2.text];
    strRemark = [self CheckEmpty:txtBeizhu6.text];
    strAddUser = @"zxc";
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAgain = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    
    strTbFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    RenyuanDAC *ry = [RenyuanDAC alloc];
    BOOL *add = [ry AddRenyuanDataWithTunnelID:strTunnelID SortID:strSortID CheckProName:strCheckProName TypeResult1:strTypeResult1 TypeResult2:strTypeResult2 TypeResult3:strTypeResult3 ExplainName:strExplainName ExplainContent:strExplainContent Remark:strRemark AddUser:strAddUser Checked:strChecked Record:strRecord CheckAgain:strCheckAgain AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg];
    
    return add;
}

// 添加第七组数据
-(BOOL)AddData7
{
    // 添加第七组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort7.text];
    strCheckProName = [self CheckEmpty:lblteshuleixing.text];
    strTypeResult1 = [self CheckEmpty:lblDiangongzuoye.text];
    strTypeResult2 = [self CheckEmpty:txtDiangong.text];
    strTypeResult3 = [self CheckEmpty:lblType3.text];
    
    strExplainName = @"-";
    strExplainContent = @"-";
    strRemark = @"-";
    strAddUser = @"zxc";
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAgain = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    
    strTbFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    RenyuanDAC *ry = [RenyuanDAC alloc];
    BOOL *add = [ry AddRenyuanDataWithTunnelID:strTunnelID SortID:strSortID CheckProName:strCheckProName TypeResult1:strTypeResult1 TypeResult2:strTypeResult2 TypeResult3:strTypeResult3 ExplainName:strExplainName ExplainContent:strExplainContent Remark:strRemark AddUser:strAddUser Checked:strChecked Record:strRecord CheckAgain:strCheckAgain AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg];
    
    return add;
    
}



// 添加第六组数据
-(BOOL)AddData8
{
    // 添加第六组数据
    strTunnelID = @"1";
    strSortID = [self CheckEmpty:lblSort8.text];
    strCheckProName = [self CheckEmpty:lblqita.text];
    
    strTypeResult1 = [self CheckEmpty:txtQita.text];;
    strTypeResult2 = @"-";
    strTypeResult3 = @"-";
    
    strExplainName = @"-";
    strExplainContent = @"-";
    strRemark = [self CheckEmpty:txtBeizhu8.text];
    strAddUser = @"zxc";
    strChecked = @"zxc";
    strRecord = @"zxc";
    strCheckAgain = @"zxc";
    
    NSDate * senddate=[NSDate date];
    NSDateFormatter *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:@"YYYY-MM-dd hh:mm:ss"];
    NSString * locationString=[dateformatter stringFromDate:senddate];
    strAddDate = locationString;
    
    strTbFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    RenyuanDAC *ry = [RenyuanDAC alloc];
    BOOL *add = [ry AddRenyuanDataWithTunnelID:strTunnelID SortID:strSortID CheckProName:strCheckProName TypeResult1:strTypeResult1 TypeResult2:strTypeResult2 TypeResult3:strTypeResult3 ExplainName:strExplainName ExplainContent:strExplainContent Remark:strRemark AddUser:strAddUser Checked:strChecked Record:strRecord CheckAgain:strCheckAgain AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg];
    
    //    if(add)
    //    {
    //
    //        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[ErrLog GetOptTitle]  message:[ErrLog Getexception] delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    //        [alert show];
    //    }
    
    return add;
}








@end
