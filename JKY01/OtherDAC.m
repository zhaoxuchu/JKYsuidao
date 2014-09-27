//
//  OtherDAC.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-27.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "OtherDAC.h"
static NSString *dbp;

@implementation OtherDAC

-(Boolean)AddOtherTestWithTunnelID:(NSString*)strTunnelID type:(NSString*)strType Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg Uploadflg:(NSString *)strUploadflg TaskID:(NSString*)strTaskID
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
        insert = [database executeUpdate:@"insert into OtherTest (TunnelID,type,Checked,Record,CheckAgain,Date,AddUser,AddDate,TbFlg,Uploadflg,TaskID) values (?,?,?,?,?,?,?,?,?,?,?)" , strTunnelID , strType  , strCheck , strRecord , strCheckAagin , strDate , strAddUser , strAddDate , strTbFlg  , strUploadflg , strTaskID];
        
        resultSet = [database executeQuery:@"SELECT * FROM OtherTest Order by OtherTestID DESC Limit 1" ];
        while ([resultSet next]) {
            [DBInfo setOptOtherTestDBOutPutResult:[resultSet stringForColumn:@"OtherTestID"]];
        }

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

-(Boolean)AddCOYanWuWithOtherTestID:(NSString*)strOtherTestID Station:(NSString*)strStation CO1:(NSString*)strCO1 CO2:(NSString*)strCO2 CO3:(NSString*)strCO3 CO4:(NSString*)strCO4 CO5:(NSString*)strCO5 AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate Flg:(NSString*)strFlg Uploadflg:(NSString *)strUploadflg
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
        insert = [database executeUpdate:@"insert into COYanWu (OtherTestID,Station,CO1,CO2,CO3,CO4,CO5,AddUser,AddDate,flg,Uploadflg) values (?,?,?,?,?,?,?,?,?,?,?)" , strOtherTestID , strStation  , strCO1 , strCO2 , strCO3 , strCO4 , strCO5 , strAddUser , strAddDate , strFlg  , strUploadflg];
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



-(Boolean)AddJDTestTBWithOtherTestID:(NSString*)strOtherTestID TestStation:(NSString*)strTestStation JDXZ:(NSString*)strJDXZ DesignValue:(NSString*)strDesignValue TrueValue:(NSString*)strTrueValue Remark:(NSString*)strRemark AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate Uploadflg:(NSString *)strUploadflg
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
        insert = [database executeUpdate:@"insert into JDTestTB (OtherTestID,TestStation,JDXZ,DesignValue,TrueValue,Remark,AddUser,AddDate,Uploadflg) values (?,?,?,?,?,?,?,?,?)" , strOtherTestID , strTestStation  , strJDXZ , strDesignValue , strTrueValue , strRemark , strAddUser , strAddDate  , strUploadflg];
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
