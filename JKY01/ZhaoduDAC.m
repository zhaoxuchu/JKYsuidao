//
//  ZhaoduDAC.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-26.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "ZhaoduDAC.h"
static NSString *dbp;

@implementation ZhaoduDAC


-(Boolean)AddLightTestWithTunnelID:(NSString*)strTunnelID TestData:(NSString*)strTestData DuanMian:(NSString*)strDuanMian CF1:(NSString*)strCF1 CF2:(NSString*)strCF2 CF3:(NSString*)strCF3 CF4:(NSString*)strCF4 CF5:(NSString*)strCF5 CF6:(NSString*)strCF6 CF7:(NSString*)strCF7 CF8:(NSString*)strCF8 CF9:(NSString*)strCF9 CF10:(NSString*)strCF10 Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg Uploadflg:(NSString *)strUploadflg TaskID:(NSString*)strTaskID
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
        
        return false;
    }
    
    // 插入数据
    [database beginTransaction]; // 启动事物
    BOOL isRollBack = NO;
    BOOL insert;
    @try {
        insert = [database executeUpdate:@"insert into LightTest (TunnelID,TestData,DuanMian,CF1,CF2,CF3,CF4,CF5,CF6,CF7,CF8,CF9,CF10,Checked,Record,CheckAgain,Date,AddUser,AddDate,TbFlg,Uploadflg,TaskID) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" , strTunnelID , strTestData , strDuanMian , strCF1 , strCF2 , strCF3 , strCF4 , strCF5 , strCF6 , strCF7  , strCF8 , strCF9 , strCF10  , strCheck , strRecord , strCheckAagin , strDate , strAddUser , strAddDate , strTbFlg  , strUploadflg , strTaskID];
    }
    @catch (NSException *exception) {
        isRollBack = YES;
        [database rollback];
        
        [ErrLog setOptResult:false];
        [ErrLog setexception:@"插入数据错误"];
        [ErrLog setOptTitle:@"错误"];
        return false;
    }
    @finally {
        if (!isRollBack && insert) {
            [database commit];
            [ErrLog setOptResult:&insert];
            [ErrLog setexception:@"数据保存成功"];
            [ErrLog setOptTitle:@"提示"];
        }
        else
        {
            [ErrLog setOptResult:false];
            [ErrLog setexception:@"插入数据错误"];
            [ErrLog setOptTitle:@"错误"];
            return false;
        }
    }
    
    [database close];
    
    return true;

}

-(Boolean)addLightTestTitleWihtTunnelID:(NSString*)strTunnelID TXQK:(NSString*)strTXQK RoadWidth:(NSString*)strRoadWidth CarRWidth:(NSString*)strCarRWidth DesignSpeed:(NSString*)strDesignSpeed LightType:(NSString*)strLightType LightHeight:(NSString*)strLightHeight BDFS:(NSString*)strBDFS TestRoad:(NSString*)strTestRoad TestLength:(NSString*)strTestLength LMCL:(NSString*)strLMCL Uploadflg:(NSString *)strUploadflg TaskID:(NSString*)strTaskID JieLun:(NSString*)strJieLun
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
        
        return false;
    }
    
    // 插入数据
    [database beginTransaction]; // 启动事物
    BOOL isRollBack = NO;
    BOOL insert;
    @try {
        // 像LightTestTitle表插入数据
        insert = [database executeUpdate:@"insert into LightTestTitle (TunnelID,TXQK,RoadWidth,CarRWidth,DesignSpeed,LightType,LightHeight,BDFS,TestRoad,TestLength,LMCL,Uploadflg,TaskID,JieLun) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)" , strTunnelID , strTXQK , strRoadWidth , strCarRWidth , strDesignSpeed , strLightType , strLightHeight , strBDFS , strTestRoad , strTestLength , strLMCL , strUploadflg , strTaskID , strJieLun];
    }
    @catch (NSException *exception) {
        isRollBack = YES;
        [database rollback];
        
        [ErrLog setOptResult:false];
        [ErrLog setexception:@"插入数据错误"];
        [ErrLog setOptTitle:@"错误"];
        return false;
    }
    @finally {
        if (!isRollBack && insert) {
            [database commit];
            [ErrLog setOptResult:&insert];
            [ErrLog setexception:@"数据保存成功"];
            [ErrLog setOptTitle:@"提示"];
        }
        else
        {
            [ErrLog setOptResult:false];
            [ErrLog setexception:@"插入数据错误"];
            [ErrLog setOptTitle:@"错误"];
            return false;
        }
    }
    
    [database close];
    
    return true;

}





@end
