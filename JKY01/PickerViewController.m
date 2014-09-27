//
//  PickerViewController.m
//  JKY01
//
//  Created by 石磊 on 14-9-27.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "PickerViewController.h"


@interface PickerViewController ()

@end

static NSString *dbp;

@implementation PickerViewController

@synthesize dict=_dict;
@synthesize pickerArray=_pickerArray;
@synthesize subPickerArray=_subPickerArray;
@synthesize thirdPickerArray=_thirdPickerArray;
@synthesize selectArray=_selectArray;
@synthesize pickviewManage;


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
    
    // 读取数据库manageuinit表数据
    [self getManageUnitData];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)getManageUnitData
{
    //获取Document文件夹下的数据库文件，没有则创建
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *dbPath = [docPath stringByAppendingPathComponent:@"JKYDB.db"];
    dbp = dbPath;
    
    //获取数据库并打开
    FMDatabase *database  = [FMDatabase databaseWithPath:dbp];
    if (![database open]) {
        
        [ErrLog setOptResult:false];
        [ErrLog setexception:@"打开数据库JKYDB中途发生错误，请退出应用程序重试。"];
        [ErrLog setOptTitle:@"错误"];
    }
    
    // 插入数据
    [database beginTransaction]; // 启动事
    @try {
        NSString *strManageunitID;
        NSString *strManageunitName;
        maryManageunitID = [[NSMutableArray alloc] init];
        maryManageunitName = [[NSMutableArray alloc] init];
        
        resultSet = [database executeQuery:@"SELECT * FROM ManagerUnit" ];
        
        while ([resultSet next]) {
            strManageunitID = [resultSet stringForColumn:@"ManagerUnitID"];
            strManageunitName = [resultSet stringForColumn:@"ManagerUnitName"];
            
            // 把信息添加到manage数组中
            [maryManageunitID addObject:strManageunitID];
            [maryManageunitName addObject:strManageunitName];
        }
        
    }
    @catch (NSException *exception) {
        [ErrLog setOptResult:false];
        [ErrLog setexception:@"获取数据错误"];
        [ErrLog setOptTitle:@"错误"];
        [database close];
        
    }
    @finally {
        [database close];
    }
}

// 获取道路信息by ManageID
-(void)getRoadDataWithManageID:(NSString *)strManageID
{
    //获取Document文件夹下的数据库文件，没有则创建
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *dbPath = [docPath stringByAppendingPathComponent:@"JKYDB.db"];
    dbp = dbPath;
    
    //获取数据库并打开
    FMDatabase *database  = [FMDatabase databaseWithPath:dbp];
    if (![database open]) {
        
        [ErrLog setOptResult:false];
        [ErrLog setexception:@"打开数据库JKYDB中途发生错误，请退出应用程序重试。"];
        [ErrLog setOptTitle:@"错误"];
    }
    
    // 插入数据
    [database beginTransaction]; // 启动事
    @try {
        NSString *strRoadID;
        NSString *strRoadName;
        
        maryRoadID = [[NSMutableArray alloc] init];
        maryRoadName = [[NSMutableArray alloc] init];
        
        resultSet = [database executeQuery:@"SELECT * FROM RoadBelong where ManagerUnitID = ?" ,  strManageID];
        
        while ([resultSet next]) {
            strRoadID = [resultSet stringForColumn:@"RoadID"];
            strRoadName = [resultSet stringForColumn:@"RoadName"];
            
            // 把信息添加到manage数组中
            [maryRoadID addObject:strRoadID];
            [maryRoadName addObject:strRoadName];
        }
        
    }
    @catch (NSException *exception) {
        [ErrLog setOptResult:false];
        [ErrLog setexception:@"获取数据错误"];
        [ErrLog setOptTitle:@"错误"];
        [database close];
        
    }
    @finally {
        [database close];
    }

}

// 获取隧道by roadid
-(void)getTunnelWithRoadID:(NSString *)strRoadID
{
    //获取Document文件夹下的数据库文件，没有则创建
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *dbPath = [docPath stringByAppendingPathComponent:@"JKYDB.db"];
    dbp = dbPath;
    
    //获取数据库并打开
    FMDatabase *database  = [FMDatabase databaseWithPath:dbp];
    if (![database open]) {
        
        [ErrLog setOptResult:false];
        [ErrLog setexception:@"打开数据库JKYDB中途发生错误，请退出应用程序重试。"];
        [ErrLog setOptTitle:@"错误"];
    }
    
    // 插入数据
    [database beginTransaction]; // 启动事
    @try {
        NSString *strTunnelID;
        NSString *strTunnelName;
        NSString *strCheckStation;
        NSString *strProtectUnit;
        NSString *strRoadLevel;
        
        maryTunnelID = [[NSMutableArray alloc] init];
        maryTunnelName = [[NSMutableArray alloc] init];
        maryCheckStation = [[NSMutableArray alloc] init];
        maryProtectUnit = [[NSMutableArray alloc] init];
        maryRoadLevel = [[NSMutableArray alloc] init];
        
        resultSet = [database executeQuery:@"SELECT * FROM Tunnel where RoadID = ?" ,  strRoadID];
        
        while ([resultSet next]) {
            strTunnelID = [resultSet stringForColumn:@"TunnelID"];
            strTunnelName = [resultSet stringForColumn:@"TunnelName"];
            strCheckStation = [resultSet stringForColumn:@"CheckStation"];
            strProtectUnit = [resultSet stringForColumn:@"ProtectUnit"];
            strRoadLevel = [resultSet stringForColumn:@"RoadLevel"];
            
            // 把信息添加到manage数组中
            [maryTunnelID addObject:strTunnelID];
            [maryTunnelName addObject:strTunnelName];
            [maryCheckStation addObject:strCheckStation];
            [maryProtectUnit addObject:strProtectUnit];
            [maryRoadLevel addObject:strRoadLevel];
            
        }
        
    }
    @catch (NSException *exception) {
        [ErrLog setOptResult:false];
        [ErrLog setexception:@"获取数据错误"];
        [ErrLog setOptTitle:@"错误"];
        [database close];
        
    }
    @finally {
        [database close];
    }
    

}



#pragma mark --
#pragma mark--UIPickerViewDataSource
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component==FirstComponent) {
        return [maryManageunitName count];
    }
    if (component==SubComponent) {
        return [maryRoadName count];
    }
    if (component==ThirdComponent) {
        return [maryTunnelName count];
    }
    
    return 0;
}


#pragma mark--
#pragma mark--UIPickerViewDelegate
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component==FirstComponent) {
        return [maryManageunitName objectAtIndex:row];
    }
    if (component==SubComponent) {
        return [maryRoadName objectAtIndex:row];
    }
    if (component==ThirdComponent) {
        return [maryTunnelName objectAtIndex:row];
    }
    return nil;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"row is %d,Component is %d",row,component);
    
    if (component==0) {
        
        // 获取管理单位ID取得道路信息
        NSString *strManageID;
        strManageID  = [maryManageunitID objectAtIndex:row];
        // 存储manage所有信息
        // todo
        
        // 获取道路信息
        [self getRoadDataWithManageID:strManageID];
        
        [pickerView selectedRowInComponent:1];
        [pickerView reloadComponent:1];
        [pickerView selectedRowInComponent:2];
        
    }
    
    if (component==1) {
        // 获取取得道路信息
        NSString *strRoadID;
        strRoadID  = [maryRoadID objectAtIndex:row];
        // 存储road所有信息
        //todo
        
        // 获取道路信息
        [self getTunnelWithRoadID:strRoadID];
        
        
        [pickerView selectRow:0 inComponent:2 animated:YES];
        
        [pickerView reloadComponent:2];
        
    }
    
    
    if (component==2) {
     
        // 存储隧道信息
        //todo
        
        NSString *stri=@"";
    }
    
    
    
}


- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    if (component==FirstComponent) {
        return 90.0;
    }
    if (component==SubComponent) {
        return 120.0;
    }
    if (component==ThirdComponent) {
        return 100.0;
    }
    return 0;
}

-(void)dealloc
{
    self.dict=nil;
    self.pickerArray=nil;
    self.subPickerArray=nil;
    self.thirdPickerArray=nil;
    self.selectArray=nil;
}





@end
