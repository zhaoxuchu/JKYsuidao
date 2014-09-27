//
//  ZiliaoSANViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-31.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "ZiliaoSANViewController.h"
#import "ErrLog.h"
#import "SYSFileCheckDAC.h"

@interface ZiliaoSANViewController ()

@end

@implementation ZiliaoSANViewController
@synthesize lblSort1,
lblSort2,
lblSort3,
lblSort4,
lblSort5,
lblSort6,
lblSort7,
lblSort8,
lblSort9,
lblSort10,
lblSort11,
lblSort12,
lblSort13,
lblSort14,
lblSort15,
lblSort16,
lblSort17,
lblSort18,
lblSort19,
lblSort20,
lblJiankong,
lblTongxing,
lblShoufei;
//--------------------------jiankong----------------------------------------------
@synthesize lblchuCheng,
lblDituping,
lblBiludianshi,
lblChezhongceliang,
lblYiyanghuatang,
lblCheliujiancha,
lbllangyongbaohu,
lbljisuanjixitong,
lbltongxinggongneng,
lblXianlangdianyuan,
lblKebianxinxi,
lblQuyukongzhiqi,
lblShipingguangduanji,
lblQixiangjiance,
lblWaichangshebei,
lblJueyuandianzu,
lblJiedidianzu;
@synthesize lbl1jifang,
lbl1shexiangji,
lbl1Waichang,
lbl2gexiang,
lbl3guangcha,
lbl3bianma,
lbl4xianchang,
lbl4CZ,
lbl5Guangcha,
lbl6Gongneng,
lbl6chesu,
lbl7Xingneng,
lbl8Gongneng,
lbl9Ceshi,
lbl10shinei,
lbl10shiwai,
lbl11Liangduji,
lbl12shiyan,
lbl13Guangonglv,
lbl14Jiancha,
lbl15jiancha,
lbl16oubiao,
lbl17Jiedidianzu;
@synthesize seg1jifang,
seg1shexiangji,
seg1Waichang,
seg2gexiang,
seg3guangcha,
seg3bianma,
seg4xianchang,
seg4CZ,
seg5Guangcha,
seg6Gongneng,
seg6chesu,
seg7Xingneng,
seg8Gongneng,
seg9Ceshi,
seg10shinei,
seg10shiwai,
seg11Liangduji,
seg12shiyan,
seg13Guangonglv,
seg14Jiancha,
seg15jiancha,
seg16oubiao,
seg17Jiedidianzu;
@synthesize txtBeizhu1,
txtBeizhu2,
txtBeizhu3,
txtBeizhu4,
txtBeizhu5,
txtBeizhu6,
txtBeizhu7,
txtBeizhu8,
txtBeizhu9,
txtBeizhu10,
txtBeizhu11,
txtBeizhu12,
txtBeizhu13,
txtBeizhu14,
txtBeizhu15,
txtBeizhu16,
txtBeizhu17,
txtBeizhu18,
txtBeizhu19,
txtBeizhu20,
txtBeizhu21,
txtBeizhu22,
txtBeizhu23;
//------------------------------------通信设施---------------------------------------------------------
@synthesize  lblshuzichuangshu,
lbldianyuanheshebei,
lblshuzichengkong,
lbljifangyushebei,
lbllangyongbaohuqi,
lblshuzi,
lbljingjidianhua,
lblshuchuangshu,
lblguangdianlangxianlu,
lblshuzichengkongceshi,
lblwuxiantongxinshebei,
lblshuzidaohuan,
lbldianlangjueyuan,
lblguagnxiantongdaohou,
lblshuziwuma,
lblwuxiantieta,
lblqiangdianduan,
lblfangleihejiedi,
lbl1baokuo,
lbl2meitain,
lbl2jingjidianhua,
lbl3gaojing,
lbl4shebei,
lbl4jiding,
lbl5langyong,
lbl6baokuo,
lbl7jiancha,
lbl8shujuxiugai,
lbl9weixian,
lbl9jiancharen,
lbl10gaojingxingneng,
lbl10zhangaizidongzhengduan,
lbl11zhuangfaqigonglv,
lbl12baokuowaike,
lbl13jueyuandianzu,
lbl14odtr,
lbl15meigezuchou,
lbl16tianxian,
lbl17ouzhao,
lbl18fangleiceshi;
@synthesize seg1baokuo,
seg2meitain,
seg2jingjidianhua,
seg3gaojing,
seg4shebei,
seg4jiding,
seg5langyong,
seg6baokuo,
seg7jiancha,
seg8shujuxiugai,
seg9weixian,
seg9jiancharen,
seg10gaojingxingneng,
seg10zhangaizidongzhengduan,
seg11zhuangfaqigonglv,
seg12baokuowaike,
seg13jueyuandianzu,
seg14odtr,
seg15meigezuchou,
seg16tianxian,
seg17ouzhao,
seg18fangleiceshi;
@synthesize txtBeizhu24,
txtBeizhu25,
txtBeizhu26,
txtBeizhu27,
txtBeizhu28,
txtBeizhu29,
txtBeizhu30,
txtBeizhu31,
txtBeizhu32,
txtBeizhu33,
txtBeizhu34,
txtBeizhu35,
txtBeizhu36,
txtBeizhu37,
txtBeizhu38,
txtBeizhu39,
txtBeizhu40,
txtBeizhu41,
txtBeizhu42,
txtBeizhu43,
txtBeizhu44,
txtBeizhu45;
//---------------------------------收费设施-------------------------------------------------------------------
@synthesize lblfakaji,
lblbaojingxitong,
lbldukaji,
lbldianyuanceshi,
lbllangxian,
lbllangyong,
lblduixiangxitong,
lblshujubeifeng,
lblchedaoshebei,
lblchedaokongzhi,
lbldiandong,
lblcheliangjiance,
lblpiaojudaying,
lblluceduxie,
lbljisuanjixitongweihu,
lblchuangshugongneng,
lblchangwaifushu,
lbljueyuandianzu,
lbljiedidianzu,
lbl1chedaoting,
lbl2ICka,
lbl2cika,
lbl2cikashangyou,
lbl3jiancha,
lbl4oumobiaoge,
lbl4cika,
lbl4chuansongdai,
lbl5wangyongbiao,
lbl6guangcha,
lbl7xingnengceshi,
lbl8shiyan,
lbl9shujucidai,
lbl10baokuofeier,
lbl11xiangnei,
lbl11kongqi,
lbl11genghuang,
lbl12jiangu,
lbl13xianquan,
lbl14qingjie,
lbl15maoyu,
lbl16jisuanjixitong,
lbl17chuanshugongneng,
lbl18waichangfushu,
lbl19jueyuandianzu,
lbl20jiedidianzu;
@synthesize seg1chedaoting,
seg2ICka,
seg2cika,
seg2cikashangyou,
seg3jiancha,
seg4oumobiaoge,
seg4cika,
seg4chuansongdai,
seg5wangyongbiao,
seg6guangcha,
seg7xingnengceshi,
seg8shiyan,
seg9shujucidai,
seg10baokuofeier,
seg11xiangnei,
seg11kongqi,
seg11genghuang,
seg12jiangu,
seg13xianquan,
seg14qingjie,
seg15maoyu,
seg16jisuanjixitong,
seg17chuanshugongneng,
seg18waichangfushu,
seg19jueyuandianzu,
seg20jiedidianzu;
@synthesize txtBeizhu46,
txtBeizhu47,
txtBeizhu48,
txtBeizhu49,
txtBeizhu50,
txtBeizhu51,
txtBeizhu52,
txtBeizhu53,
txtBeizhu54,
txtBeizhu55,
txtBeizhu56,
txtBeizhu57,
txtBeizhu58,
txtBeizhu59,
txtBeizhu60,
txtBeizhu61,
txtBeizhu62,
txtBeizhu63,
txtBeizhu64,
txtBeizhu65,
txtBeizhu66,
txtBeizhu67,
txtBeizhu68,
txtBeizhu69,
txtBeizhu70,
txtBeizhu71;

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
    
    
    if ([self AddData1] && [self AddData2] && [self AddData3])
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
    strSortID = @"0";
    strCheckPro = [self CheckEmpty:lblJiankong.text];
    strMainContent = @" ";
    strCheckZQ = @" ";
    strTrueZQ = @" ";
    strRemark = @" ";
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
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    SYSFileCheckDAC *gj = [SYSFileCheckDAC alloc];
    Boolean add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];

    // 第1-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckPro = [self CheckEmpty:lblchuCheng.text];
    strMainContent = [self CheckEmpty:lbl1jifang.text];
    strCheckZQ = @"1次/天";
    strTrueZQ = [seg1jifang titleForSegmentAtIndex:seg1jifang.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu1.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第1-二组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckPro = [self CheckEmpty:lblchuCheng.text];
    strMainContent = [self CheckEmpty:lbl1shexiangji.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg1shexiangji titleForSegmentAtIndex:seg1shexiangji.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu2.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第1-3组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckPro = [self CheckEmpty:lblchuCheng.text];
    strMainContent = [self CheckEmpty:lbl1Waichang.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg1Waichang titleForSegmentAtIndex:seg1Waichang.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu3.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第2-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckPro = [self CheckEmpty:lblDituping.text];
    strMainContent = [self CheckEmpty:lbl2gexiang.text];
    strCheckZQ = @"1次/天";
    strTrueZQ = [seg2gexiang titleForSegmentAtIndex:seg2gexiang.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu4.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第3-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckPro = [self CheckEmpty:lblBiludianshi.text];
    strMainContent = [self CheckEmpty:lbl3guangcha.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg3guangcha titleForSegmentAtIndex:seg3guangcha.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu5.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第3-2组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckPro = [self CheckEmpty:lblBiludianshi.text];
    strMainContent = [self CheckEmpty:lbl3bianma.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg3bianma titleForSegmentAtIndex:seg3bianma.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu6.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第4-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckPro = [self CheckEmpty:lblChezhongceliang.text];
    strMainContent = [self CheckEmpty:lbl4xianchang.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg4xianchang titleForSegmentAtIndex:seg4xianchang.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu7.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第4-2组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckPro = [self CheckEmpty:lblChezhongceliang.text];
    strMainContent = [self CheckEmpty:lbl4CZ.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg4CZ titleForSegmentAtIndex:seg4CZ.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu8.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第5-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort5.text];
    strCheckPro = [self CheckEmpty:lblYiyanghuatang.text];
    strMainContent = [self CheckEmpty:lbl5Guangcha.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg5Guangcha titleForSegmentAtIndex:seg5Guangcha.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu9.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第6-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort6.text];
    strCheckPro = [self CheckEmpty:lblCheliujiancha.text];
    strMainContent = [self CheckEmpty:lbl6Gongneng.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg6Gongneng titleForSegmentAtIndex:seg6Gongneng.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu10.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第6-2组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort6.text];
    strCheckPro = [self CheckEmpty:lblCheliujiancha.text];
    strMainContent = [self CheckEmpty:lbl6chesu.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg6chesu titleForSegmentAtIndex:seg6chesu.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu11.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第7-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort7.text];
    strCheckPro = [self CheckEmpty:lbllangyongbaohu.text];
    strMainContent = [self CheckEmpty:lbl7Xingneng.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg7Xingneng titleForSegmentAtIndex:seg7Xingneng.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu12.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    
    // 第8-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort8.text];
    strCheckPro = [self CheckEmpty:lbljisuanjixitong.text];
    strMainContent = [self CheckEmpty:lbl8Gongneng.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg8Gongneng titleForSegmentAtIndex:seg8Gongneng.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu13.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    
    // 第9-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort9.text];
    strCheckPro = [self CheckEmpty:lbltongxinggongneng.text];
    strMainContent = [self CheckEmpty:lbl9Ceshi.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg9Ceshi titleForSegmentAtIndex:seg9Ceshi.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu14.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第10-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort10.text];
    strCheckPro = [self CheckEmpty:lblXianlangdianyuan.text];
    strMainContent = [self CheckEmpty:lbl10shinei.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg10shinei titleForSegmentAtIndex:seg10shinei.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu15.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第10-2组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort10.text];
    strCheckPro = [self CheckEmpty:lblXianlangdianyuan.text];
    strMainContent = [self CheckEmpty:lbl10shiwai.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg10shiwai titleForSegmentAtIndex:seg10shiwai.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu16.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第11-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort11.text];
    strCheckPro = [self CheckEmpty:lblKebianxinxi.text];
    strMainContent = [self CheckEmpty:lbl11Liangduji.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg11Liangduji titleForSegmentAtIndex:seg11Liangduji.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu17.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第12-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort12.text];
    strCheckPro = [self CheckEmpty:lblQuyukongzhiqi.text];
    strMainContent = [self CheckEmpty:lbl12shiyan.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg12shiyan titleForSegmentAtIndex:seg12shiyan.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu18.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第13-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort13.text];
    strCheckPro = [self CheckEmpty:lblShipingguangduanji.text];
    strMainContent = [self CheckEmpty:lbl13Guangonglv.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg13Guangonglv titleForSegmentAtIndex:seg13Guangonglv.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu19.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第14-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort14.text];
    strCheckPro = [self CheckEmpty:lblQixiangjiance.text];
    strMainContent = [self CheckEmpty:lbl14Jiancha.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg14Jiancha titleForSegmentAtIndex:seg14Jiancha.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu20.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第15-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort15.text];
    strCheckPro = [self CheckEmpty:lblWaichangshebei.text];
    strMainContent = [self CheckEmpty:lbl15jiancha.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg15jiancha titleForSegmentAtIndex:seg15jiancha.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu21.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第16-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort16.text];
    strCheckPro = [self CheckEmpty:lblJueyuandianzu.text];
    strMainContent = [self CheckEmpty:lbl16oubiao.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg15jiancha titleForSegmentAtIndex:seg15jiancha.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu22.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    
    // 第17-1组
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort17.text];
    strCheckPro = [self CheckEmpty:lblJiedidianzu.text];
    strMainContent = [self CheckEmpty:lbl17Jiedidianzu.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg17Jiedidianzu titleForSegmentAtIndex:seg17Jiedidianzu.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu23.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    return add;
}


// 添加第2组数据
-(Boolean)AddData2
{
    strRoadID = @"1";
    strSortID = @"0";
    strCheckPro = [self CheckEmpty:lblTongxing.text];
    strMainContent = @" ";
    strCheckZQ = @" ";
    strTrueZQ = @" ";
    strRemark = @" ";
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
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    SYSFileCheckDAC *gj = [SYSFileCheckDAC alloc];
    Boolean add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第2-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckPro = [self CheckEmpty:lblshuzichuangshu.text];
    strMainContent = [self CheckEmpty:lbl1baokuo.text];
    strCheckZQ = @"1次/天";
    strTrueZQ = [seg1baokuo titleForSegmentAtIndex:seg1baokuo.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu24.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第2-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckPro = [self CheckEmpty:lbldianyuanheshebei.text];
    strMainContent = [self CheckEmpty:lbl2meitain.text];
    strCheckZQ = @"1次/天";
    strTrueZQ = [seg2meitain titleForSegmentAtIndex:seg2meitain.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu25.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];

    // 第2-2组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckPro = [self CheckEmpty:lbldianyuanheshebei.text];
    strMainContent = [self CheckEmpty:lbl2jingjidianhua.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg2jingjidianhua titleForSegmentAtIndex:seg2jingjidianhua.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu26.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第3-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckPro = [self CheckEmpty:lblshuzichengkong.text];
    strMainContent = [self CheckEmpty:lbl3gaojing.text];
    strCheckZQ = @"1次/天";
    strTrueZQ = [seg3gaojing titleForSegmentAtIndex:seg3gaojing.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu27.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第4-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckPro = [self CheckEmpty:lbljifangyushebei.text];
    strMainContent = [self CheckEmpty:lbl4shebei.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg4shebei titleForSegmentAtIndex:seg4shebei.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu28.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第4-2组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckPro = [self CheckEmpty:lbljifangyushebei.text];
    strMainContent = [self CheckEmpty:lbl4jiding.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg4jiding titleForSegmentAtIndex:seg4jiding.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu29.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第5-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort5.text];
    strCheckPro = [self CheckEmpty:lbllangyongbaohuqi.text];
    strMainContent = [self CheckEmpty:lbl5langyong.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg5langyong titleForSegmentAtIndex:seg5langyong.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu30.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第6-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort6.text];
    strCheckPro = [self CheckEmpty:lblshuzi.text];
    strMainContent = [self CheckEmpty:lbl6baokuo.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg6baokuo titleForSegmentAtIndex:seg6baokuo.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu31.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第7-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort7.text];
    strCheckPro = [self CheckEmpty:lbljingjidianhua.text];
    strMainContent = [self CheckEmpty:lbl7jiancha.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg7jiancha titleForSegmentAtIndex:seg7jiancha.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu32.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第8-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort8.text];
    strCheckPro = [self CheckEmpty:lblshuchuangshu.text];
    strMainContent = [self CheckEmpty:lbl8shujuxiugai.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg8shujuxiugai titleForSegmentAtIndex:seg8shujuxiugai.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu33.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第9-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort9.text];
    strCheckPro = [self CheckEmpty:lblguangdianlangxianlu.text];
    strMainContent = [self CheckEmpty:lbl9weixian.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg9weixian titleForSegmentAtIndex:seg9weixian.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu34.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第9-2组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort9.text];
    strCheckPro = [self CheckEmpty:lblguangdianlangxianlu.text];
    strMainContent = [self CheckEmpty:lbl9jiancharen.text];
    strCheckZQ = @"1次/半年";
    strTrueZQ = [seg9jiancharen titleForSegmentAtIndex:seg9jiancharen.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu35.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第10-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort10.text];
    strCheckPro = [self CheckEmpty:lblshuzichengkongceshi.text];
    strMainContent = [self CheckEmpty:lbl10gaojingxingneng.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg10gaojingxingneng titleForSegmentAtIndex:seg10gaojingxingneng.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu36.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第10-2组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort10.text];
    strCheckPro = [self CheckEmpty:lblshuzichengkongceshi.text];
    strMainContent = [self CheckEmpty:lbl10zhangaizidongzhengduan.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg10zhangaizidongzhengduan titleForSegmentAtIndex:seg10zhangaizidongzhengduan.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu37.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第11-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort11.text];
    strCheckPro = [self CheckEmpty:lblwuxiantongxinshebei.text];
    strMainContent = [self CheckEmpty:lbl11zhuangfaqigonglv.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg11zhuangfaqigonglv titleForSegmentAtIndex:seg11zhuangfaqigonglv.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu38.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第12-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort12.text];
    strCheckPro = [self CheckEmpty:lblshuzidaohuan.text];
    strMainContent = [self CheckEmpty:lbl12baokuowaike.text];
    strCheckZQ = @"1次/半年";
    strTrueZQ = [seg12baokuowaike titleForSegmentAtIndex:seg12baokuowaike.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu39.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];

    // 第13-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort13.text];
    strCheckPro = [self CheckEmpty:lbldianlangjueyuan.text];
    strMainContent = [self CheckEmpty:lbl13jueyuandianzu.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg13jueyuandianzu titleForSegmentAtIndex:seg13jueyuandianzu.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu40.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];

    // 第14-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort14.text];
    strCheckPro = [self CheckEmpty:lblguagnxiantongdaohou.text];
    strMainContent = [self CheckEmpty:lbl14odtr.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg14odtr titleForSegmentAtIndex:seg14odtr.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu41.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    

    // 第15-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort15.text];
    strCheckPro = [self CheckEmpty:lblshuziwuma.text];
    strMainContent = [self CheckEmpty:lbl15meigezuchou.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg15meigezuchou titleForSegmentAtIndex:seg15meigezuchou.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu42.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第16-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort16.text];
    strCheckPro = [self CheckEmpty:lblwuxiantieta.text];
    strMainContent = [self CheckEmpty:lbl16tianxian.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg16tianxian titleForSegmentAtIndex:seg16tianxian.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu43.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第17-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort17.text];
    strCheckPro = [self CheckEmpty:lblqiangdianduan.text];
    strMainContent = [self CheckEmpty:lbl17ouzhao.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg17ouzhao titleForSegmentAtIndex:seg17ouzhao.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu44.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第18-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort18.text];
    strCheckPro = [self CheckEmpty:lblfangleihejiedi.text];
    strMainContent = [self CheckEmpty:lbl18fangleiceshi.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg18fangleiceshi titleForSegmentAtIndex:seg18fangleiceshi.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu45.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];

    return add;
}

// 添加第2组数据
-(Boolean)AddData3
{
    strRoadID = @"1";
    strSortID = @"0";
    strCheckPro = [self CheckEmpty:lblShoufei.text];
    strMainContent = @" ";
    strCheckZQ = @" ";
    strTrueZQ = @" ";
    strRemark = @" ";
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
    strFlg = @"1";
    strTaskID = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    SYSFileCheckDAC *gj = [SYSFileCheckDAC alloc];
    Boolean add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第1-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort1.text];
    strCheckPro = [self CheckEmpty:lblchuCheng.text];
    strMainContent = [self CheckEmpty:lbl1chedaoting.text];
    strCheckZQ = @"1次/天";
    strTrueZQ = [seg1chedaoting titleForSegmentAtIndex:seg1chedaoting.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu46.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第2-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckPro = [self CheckEmpty:lblfakaji.text];
    strMainContent = [self CheckEmpty:lbl2ICka.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg2ICka titleForSegmentAtIndex:seg2ICka.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu47.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第2-2组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckPro = [self CheckEmpty:lblfakaji.text];
    strMainContent = [self CheckEmpty:lbl2cika.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg2cika titleForSegmentAtIndex:seg2cika.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu48.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第2-3组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort2.text];
    strCheckPro = [self CheckEmpty:lblfakaji.text];
    strMainContent = [self CheckEmpty:lbl2cikashangyou.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg2cikashangyou titleForSegmentAtIndex:seg2cikashangyou.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu49.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第3-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort3.text];
    strCheckPro = [self CheckEmpty:lblbaojingxitong.text];
    strMainContent = [self CheckEmpty:lbl3jiancha.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg3jiancha titleForSegmentAtIndex:seg3jiancha.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu50.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第4-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckPro = [self CheckEmpty:lbldukaji.text];
    strMainContent = [self CheckEmpty:lbl4oumobiaoge.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg4oumobiaoge titleForSegmentAtIndex:seg4oumobiaoge.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu51.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第4-2组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckPro = [self CheckEmpty:lbldukaji.text];
    strMainContent = [self CheckEmpty:lbl4cika.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg4cika titleForSegmentAtIndex:seg4cika.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu52.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第4-3组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort4.text];
    strCheckPro = [self CheckEmpty:lbldukaji.text];
    strMainContent = [self CheckEmpty:lbl4cika.text];
    strCheckZQ = @"1次/周";
    strTrueZQ = [seg4chuansongdai titleForSegmentAtIndex:seg4chuansongdai.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu53.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第5-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort5.text];
    strCheckPro = [self CheckEmpty:lbldianyuanceshi.text];
    strMainContent = [self CheckEmpty:lbl5wangyongbiao.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg5wangyongbiao titleForSegmentAtIndex:seg5wangyongbiao.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu54.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第6-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort6.text];
    strCheckPro = [self CheckEmpty:lbllangxian.text];
    strMainContent = [self CheckEmpty:lbl6guangcha.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg6guangcha titleForSegmentAtIndex:seg6guangcha.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu55.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第7-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort7.text];
    strCheckPro = [self CheckEmpty:lbllangyong.text];
    strMainContent = [self CheckEmpty:lbl7xingnengceshi.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg7xingnengceshi titleForSegmentAtIndex:seg7xingnengceshi.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu56.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第8-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort8.text];
    strCheckPro = [self CheckEmpty:lblduixiangxitong.text];
    strMainContent = [self CheckEmpty:lbl8shiyan.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg8shiyan titleForSegmentAtIndex:seg8shiyan.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu57.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];

    // 第9-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort9.text];
    strCheckPro = [self CheckEmpty:lblshujubeifeng.text];
    strMainContent = [self CheckEmpty:lbl9shujucidai.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg9shujucidai titleForSegmentAtIndex:seg9shujucidai.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu58.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第10-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort10.text];
    strCheckPro = [self CheckEmpty:lblchedaoshebei.text];
    strMainContent = [self CheckEmpty:lbl10baokuofeier.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg10baokuofeier titleForSegmentAtIndex:seg10baokuofeier.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu59.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第11-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort11.text];
    strCheckPro = [self CheckEmpty:lblchedaokongzhi.text];
    strMainContent = [self CheckEmpty:lbl11xiangnei.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg11xiangnei titleForSegmentAtIndex:seg11xiangnei.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu60.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第11-2组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort11.text];
    strCheckPro = [self CheckEmpty:lblchedaokongzhi.text];
    strMainContent = [self CheckEmpty:lbl11kongqi.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg11xiangnei titleForSegmentAtIndex:seg11xiangnei.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu61.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第11-3组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort11.text];
    strCheckPro = [self CheckEmpty:lblchedaokongzhi.text];
    strMainContent = [self CheckEmpty:lbl11genghuang.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg11genghuang titleForSegmentAtIndex:seg11genghuang.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu62.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第12-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort12.text];
    strCheckPro = [self CheckEmpty:lbldiandong.text];
    strMainContent = [self CheckEmpty:lbl12jiangu.text];
    strCheckZQ = @"1次/月";
    strTrueZQ = [seg12jiangu titleForSegmentAtIndex:seg12jiangu.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu63.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第13-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort13.text];
    strCheckPro = [self CheckEmpty:lblcheliangjiance.text];
    strMainContent = [self CheckEmpty:lbl13xianquan.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg13xianquan titleForSegmentAtIndex:seg13xianquan.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu64.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第14-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort14.text];
    strCheckPro = [self CheckEmpty:lblpiaojudaying.text];
    strMainContent = [self CheckEmpty:lbl14qingjie.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg14qingjie titleForSegmentAtIndex:seg14qingjie.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu65.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第15-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort15.text];
    strCheckPro = [self CheckEmpty:lblluceduxie.text];
    strMainContent = [self CheckEmpty:lbl15maoyu.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg15maoyu titleForSegmentAtIndex:seg15maoyu.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu66.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第16-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort16.text];
    strCheckPro = [self CheckEmpty:lbljisuanjixitongweihu.text];
    strMainContent = [self CheckEmpty:lbl16jisuanjixitong.text];
    strCheckZQ = @"1次/季";
    strTrueZQ = [seg16jisuanjixitong titleForSegmentAtIndex:seg16jisuanjixitong.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu67.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第17-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort17.text];
    strCheckPro = [self CheckEmpty:lblchuangshugongneng.text];
    strMainContent = [self CheckEmpty:lbl17chuanshugongneng.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg17chuanshugongneng titleForSegmentAtIndex:seg17chuanshugongneng.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu68.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第18-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort18.text];
    strCheckPro = [self CheckEmpty:lblchangwaifushu.text];
    strMainContent = [self CheckEmpty:lbl18waichangfushu.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg18waichangfushu titleForSegmentAtIndex:seg18waichangfushu.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu69.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第19-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort19.text];
    strCheckPro = [self CheckEmpty:lbljueyuandianzu.text];
    strMainContent = [self CheckEmpty:lbl19jueyuandianzu.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg19jueyuandianzu titleForSegmentAtIndex:seg19jueyuandianzu.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu70.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];
    
    // 第20-1组数据
    strRoadID = @"1";
    strSortID = [self CheckEmpty:lblSort20.text];
    strCheckPro = [self CheckEmpty:lbljiedidianzu.text];
    strMainContent = [self CheckEmpty:lbl20jiedidianzu.text];
    strCheckZQ = @"1次/年";
    strTrueZQ = [seg20jiedidianzu titleForSegmentAtIndex:seg20jiedidianzu.selectedSegmentIndex];
    strRemark = [self CheckEmpty:txtBeizhu71.text];
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
    strFlg = @"1";
    strUploadflg = @"0";
    
    // 数据库存储
    add = [gj AddFileCheckWithRoadID:strRoadID TaskID:strTaskID SortID:strSortID CheckPro:strCheckPro MainContent:strMainContent CheckZQ:strCheckZQ TrueZQ:strTrueZQ Remark:strRemark Checked:strChecked Record:strRecord CheckAagin:strCheckAagin CheckDate:strDate AddUser:strAddUser AddDate:strDate flg:strFlg Uploadflg:strUploadflg];

    return add;
}

















@end
