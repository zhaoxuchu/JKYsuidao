//
//  ZhaoduViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-26.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "ZhaoduViewController.h"

@interface ZhaoduViewController ()

@end

@implementation ZhaoduViewController

@synthesize lblLumiankuangdu,lblGuangyuanleixing,lblCeshiduanluo,lblChedaokuangdu,lblDengjuanzhuang,lblChangdu,lblSuidaosheji,lblBudengfangshi,lblLumian;
@synthesize txtLumiankuangdu,txtChedaokuangdu,txtDengjuanzhuang,txtChangdu,txtSuidaosheji;
@synthesize segGuangyuanleixing,segCeshiduanluo,segBudengfangshi,segLumiancailiao,segTXQK;
@synthesize txt11,
txt12,
txt13,
txt14,
txt15,
txt16,
txt17,
txt18,
txt19,
txt10,
txt21,
txt22,
txt23,
txt24,
txt25,
txt26,
txt27,
txt28,
txt29,
txt20,
txt31,
txt32,
txt33,
txt34,
txt35,
txt36,
txt37,
txt38,
txt39,
txt30,
txt41,
txt42,
txt43,
txt44,
txt45,
txt46,
txt47,
txt48,
txt49,
txt40,
txt51,
txt52,
txt53,
txt54,
txt55,
txt56,
txt57,
txt58,
txt59,
txt50,
txt61,
txt62,
txt63,
txt64,
txt65,
txt66,
txt67,
txt68,
txt69,
txt60,
txt71,
txt72,
txt73,
txt74,
txt75,
txt76,
txt77,
txt78,
txt79,
txt70,
txt81,
txt82,
txt83,
txt84,
txt85,
txt86,
txt87,
txt88,
txt89,
txt80,
txt91,
txt92,
txt93,
txt94,
txt95,
txt96,
txt97,
txt98,
txt99,
txt90,
txt101,
txt102,
txt103,
txt104,
txt105,
txt106,
txt107,
txt108,
txt109,
txt100;
@synthesize lblPingjunzhaodu,lblShejiPinjunliangdu,lblHuansuanliangdu,lblU0,lblU1;
@synthesize txtPinjunzhaodu,txtPinjunsheji,txtHuansuanliangdu,txtU0,txtUL,txtJielun;


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

// 添加第一组数据
-(Boolean)AddData1
{
    // 1
    strTunnelID = @"1";
    strTestData = @"照度测试数据，lx";
    strDuanMian = @"1";
    strCF1= [self CheckEmpty:txt11.text];
    strCF2= [self CheckEmpty:txt12.text];
    strCF3= [self CheckEmpty:txt13.text];
    strCF4= [self CheckEmpty:txt14.text];
    strCF5= [self CheckEmpty:txt15.text];
    strCF6= [self CheckEmpty:txt16.text];
    strCF7= [self CheckEmpty:txt17.text];
    strCF8= [self CheckEmpty:txt18.text];
    strCF9= [self CheckEmpty:txt19.text];
    strCF10= [self CheckEmpty:txt10.text];
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
    strTaskID = @"1";
    
    ZhaoduDAC *zd = [ZhaoduDAC alloc];
    Boolean add = [zd AddLightTestWithTunnelID:strTunnelID TestData:strTestData DuanMian:strDuanMian CF1:strCF1 CF2:strCF2 CF3:strCF3 CF4:strCF4 CF5:strCF5 CF6:strCF6 CF7:strCF7 CF8:strCF8 CF9:strCF9 CF10:strCF10 Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 2
    strTunnelID = @"1";
    strTestData = @"照度测试数据，lx";
    strDuanMian = @"2";
    strCF1= [self CheckEmpty:txt21.text];
    strCF2= [self CheckEmpty:txt22.text];
    strCF3= [self CheckEmpty:txt23.text];
    strCF4= [self CheckEmpty:txt24.text];
    strCF5= [self CheckEmpty:txt25.text];
    strCF6= [self CheckEmpty:txt26.text];
    strCF7= [self CheckEmpty:txt27.text];
    strCF8= [self CheckEmpty:txt28.text];
    strCF9= [self CheckEmpty:txt29.text];
    strCF10= [self CheckEmpty:txt20.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    zd = [ZhaoduDAC alloc];
    add = [zd AddLightTestWithTunnelID:strTunnelID TestData:strTestData DuanMian:strDuanMian CF1:strCF1 CF2:strCF2 CF3:strCF3 CF4:strCF4 CF5:strCF5 CF6:strCF6 CF7:strCF7 CF8:strCF8 CF9:strCF9 CF10:strCF10 Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 3
    strTunnelID = @"1";
    strTestData = @"照度测试数据，lx";
    strDuanMian = @"3";
    strCF1= [self CheckEmpty:txt31.text];
    strCF2= [self CheckEmpty:txt32.text];
    strCF3= [self CheckEmpty:txt33.text];
    strCF4= [self CheckEmpty:txt34.text];
    strCF5= [self CheckEmpty:txt35.text];
    strCF6= [self CheckEmpty:txt36.text];
    strCF7= [self CheckEmpty:txt37.text];
    strCF8= [self CheckEmpty:txt38.text];
    strCF9= [self CheckEmpty:txt39.text];
    strCF10= [self CheckEmpty:txt30.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    zd = [ZhaoduDAC alloc];
    add = [zd AddLightTestWithTunnelID:strTunnelID TestData:strTestData DuanMian:strDuanMian CF1:strCF1 CF2:strCF2 CF3:strCF3 CF4:strCF4 CF5:strCF5 CF6:strCF6 CF7:strCF7 CF8:strCF8 CF9:strCF9 CF10:strCF10 Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 4
    strTunnelID = @"1";
    strTestData = @"照度测试数据，lx";
    strDuanMian = @"4";
    strCF1= [self CheckEmpty:txt41.text];
    strCF2= [self CheckEmpty:txt42.text];
    strCF3= [self CheckEmpty:txt43.text];
    strCF4= [self CheckEmpty:txt44.text];
    strCF5= [self CheckEmpty:txt45.text];
    strCF6= [self CheckEmpty:txt46.text];
    strCF7= [self CheckEmpty:txt47.text];
    strCF8= [self CheckEmpty:txt48.text];
    strCF9= [self CheckEmpty:txt49.text];
    strCF10= [self CheckEmpty:txt40.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    zd = [ZhaoduDAC alloc];
    add = [zd AddLightTestWithTunnelID:strTunnelID TestData:strTestData DuanMian:strDuanMian CF1:strCF1 CF2:strCF2 CF3:strCF3 CF4:strCF4 CF5:strCF5 CF6:strCF6 CF7:strCF7 CF8:strCF8 CF9:strCF9 CF10:strCF10 Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 5
    strTunnelID = @"1";
    strTestData = @"照度测试数据，lx";
    strDuanMian = @"5";
    strCF1= [self CheckEmpty:txt51.text];
    strCF2= [self CheckEmpty:txt52.text];
    strCF3= [self CheckEmpty:txt53.text];
    strCF4= [self CheckEmpty:txt54.text];
    strCF5= [self CheckEmpty:txt55.text];
    strCF6= [self CheckEmpty:txt56.text];
    strCF7= [self CheckEmpty:txt57.text];
    strCF8= [self CheckEmpty:txt58.text];
    strCF9= [self CheckEmpty:txt59.text];
    strCF10= [self CheckEmpty:txt50.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    zd = [ZhaoduDAC alloc];
    add = [zd AddLightTestWithTunnelID:strTunnelID TestData:strTestData DuanMian:strDuanMian CF1:strCF1 CF2:strCF2 CF3:strCF3 CF4:strCF4 CF5:strCF5 CF6:strCF6 CF7:strCF7 CF8:strCF8 CF9:strCF9 CF10:strCF10 Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 6
    strTunnelID = @"1";
    strTestData = @"照度测试数据，lx";
    strDuanMian = @"6";
    strCF1= [self CheckEmpty:txt61.text];
    strCF2= [self CheckEmpty:txt62.text];
    strCF3= [self CheckEmpty:txt63.text];
    strCF4= [self CheckEmpty:txt64.text];
    strCF5= [self CheckEmpty:txt65.text];
    strCF6= [self CheckEmpty:txt66.text];
    strCF7= [self CheckEmpty:txt67.text];
    strCF8= [self CheckEmpty:txt68.text];
    strCF9= [self CheckEmpty:txt69.text];
    strCF10= [self CheckEmpty:txt60.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    zd = [ZhaoduDAC alloc];
    add = [zd AddLightTestWithTunnelID:strTunnelID TestData:strTestData DuanMian:strDuanMian CF1:strCF1 CF2:strCF2 CF3:strCF3 CF4:strCF4 CF5:strCF5 CF6:strCF6 CF7:strCF7 CF8:strCF8 CF9:strCF9 CF10:strCF10 Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 7
    strTunnelID = @"1";
    strTestData = @"照度测试数据，lx";
    strDuanMian = @"7";
    strCF1= [self CheckEmpty:txt71.text];
    strCF2= [self CheckEmpty:txt72.text];
    strCF3= [self CheckEmpty:txt73.text];
    strCF4= [self CheckEmpty:txt74.text];
    strCF5= [self CheckEmpty:txt75.text];
    strCF6= [self CheckEmpty:txt76.text];
    strCF7= [self CheckEmpty:txt77.text];
    strCF8= [self CheckEmpty:txt78.text];
    strCF9= [self CheckEmpty:txt79.text];
    strCF10= [self CheckEmpty:txt70.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    zd = [ZhaoduDAC alloc];
    add = [zd AddLightTestWithTunnelID:strTunnelID TestData:strTestData DuanMian:strDuanMian CF1:strCF1 CF2:strCF2 CF3:strCF3 CF4:strCF4 CF5:strCF5 CF6:strCF6 CF7:strCF7 CF8:strCF8 CF9:strCF9 CF10:strCF10 Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 8
    strTunnelID = @"1";
    strTestData = @"照度测试数据，lx";
    strDuanMian = @"8";
    strCF1= [self CheckEmpty:txt81.text];
    strCF2= [self CheckEmpty:txt82.text];
    strCF3= [self CheckEmpty:txt83.text];
    strCF4= [self CheckEmpty:txt84.text];
    strCF5= [self CheckEmpty:txt85.text];
    strCF6= [self CheckEmpty:txt86.text];
    strCF7= [self CheckEmpty:txt87.text];
    strCF8= [self CheckEmpty:txt88.text];
    strCF9= [self CheckEmpty:txt89.text];
    strCF10= [self CheckEmpty:txt80.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    zd = [ZhaoduDAC alloc];
    add = [zd AddLightTestWithTunnelID:strTunnelID TestData:strTestData DuanMian:strDuanMian CF1:strCF1 CF2:strCF2 CF3:strCF3 CF4:strCF4 CF5:strCF5 CF6:strCF6 CF7:strCF7 CF8:strCF8 CF9:strCF9 CF10:strCF10 Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 9
    strTunnelID = @"1";
    strTestData = @"照度测试数据，lx";
    strDuanMian = @"9";
    strCF1= [self CheckEmpty:txt91.text];
    strCF2= [self CheckEmpty:txt92.text];
    strCF3= [self CheckEmpty:txt93.text];
    strCF4= [self CheckEmpty:txt94.text];
    strCF5= [self CheckEmpty:txt95.text];
    strCF6= [self CheckEmpty:txt96.text];
    strCF7= [self CheckEmpty:txt97.text];
    strCF8= [self CheckEmpty:txt98.text];
    strCF9= [self CheckEmpty:txt99.text];
    strCF10= [self CheckEmpty:txt90.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    zd = [ZhaoduDAC alloc];
    add = [zd AddLightTestWithTunnelID:strTunnelID TestData:strTestData DuanMian:strDuanMian CF1:strCF1 CF2:strCF2 CF3:strCF3 CF4:strCF4 CF5:strCF5 CF6:strCF6 CF7:strCF7 CF8:strCF8 CF9:strCF9 CF10:strCF10 Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    
    // 10
    strTunnelID = @"1";
    strTestData = @"照度测试数据，lx";
    strDuanMian = @"10";
    strCF1= [self CheckEmpty:txt101.text];
    strCF2= [self CheckEmpty:txt102.text];
    strCF3= [self CheckEmpty:txt103.text];
    strCF4= [self CheckEmpty:txt104.text];
    strCF5= [self CheckEmpty:txt105.text];
    strCF6= [self CheckEmpty:txt106.text];
    strCF7= [self CheckEmpty:txt107.text];
    strCF8= [self CheckEmpty:txt108.text];
    strCF9= [self CheckEmpty:txt109.text];
    strCF10= [self CheckEmpty:txt100.text];
    strCheck = @"zxc";
    strRecord = @"zxc";
    strCheckAagin = @"zxc";
    strDate =locationString;
    strAddDate = locationString;
    strAddUser = @"zxc";
    strTbFlg = @"0";
    strUploadflg = @"0";
    strTaskID = @"1";
    
    zd = [ZhaoduDAC alloc];
    add = [zd AddLightTestWithTunnelID:strTunnelID TestData:strTestData DuanMian:strDuanMian CF1:strCF1 CF2:strCF2 CF3:strCF3 CF4:strCF4 CF5:strCF5 CF6:strCF6 CF7:strCF7 CF8:strCF8 CF9:strCF9 CF10:strCF10 Check:strCheck Record:strRecord CheckAagin:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg Uploadflg:strUploadflg TaskID:strTaskID];
    

    return add;
}

// 添加头部和页脚数据组数据
-(Boolean)AddData2
{
    // 1
    strTunnelID = @"1";
    strTXQK = [segTXQK titleForSegmentAtIndex:segTXQK.selectedSegmentIndex];

    strRoadWidth = [self CheckEmpty:txtLumiankuangdu.text];
    strCarRWidth= [self CheckEmpty:txtChedaokuangdu.text];
    strDesignSpeed= [self CheckEmpty:txtSuidaosheji.text];
    strLightType = [segGuangyuanleixing titleForSegmentAtIndex:segGuangyuanleixing.selectedSegmentIndex];
    strLightHeight = [self CheckEmpty:txtDengjuanzhuang.text];
    strBDFS = [segBudengfangshi titleForSegmentAtIndex:segBudengfangshi.selectedSegmentIndex];
    strTestRoad = [segCeshiduanluo titleForSegmentAtIndex:segCeshiduanluo.selectedSegmentIndex];
    strTestLength = [self CheckEmpty:txtChangdu.text];
    strLMCL = [segLumiancailiao titleForSegmentAtIndex:segLumiancailiao.selectedSegmentIndex];
    strUploadflg = @"0";
    strTaskID = @"1";
    strJieLun = [self CheckEmpty:txtJielun.text];
    
    ZhaoduDAC *zd = [ZhaoduDAC alloc];
    Boolean add = [zd addLightTestTitleWihtTunnelID:strTunnelID TXQK:strTXQK RoadWidth:strRoadWidth CarRWidth:strCarRWidth DesignSpeed:strDesignSpeed LightType:strLightType LightHeight:strLightHeight BDFS:strBDFS TestRoad:strTestRoad TestLength:strTestLength LMCL:strLMCL Uploadflg:strUploadflg TaskID:strTaskID JieLun:strJieLun];
    
    return  add;
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
        return @"-";
    }
    else
    {
        return strValue;
    }
}
















@end
