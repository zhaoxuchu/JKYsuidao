//
//  SYSCarCheckDAC.m
//  JKY01
//
//  Created by 赵 旭初 on 14-4-23.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "SYSCarCheckDAC.h"

static NSString *dbp;

@implementation SYSCarCheckDAC

-(Boolean)AddRukouCarCheckWithRoadID:(NSString*)strRoadID TaskID:(NSString*)strTaskID SortID:(NSString*)strSortID CheckPro:(NSString*)strCheckPro Unit:(NSString*)strUnit Num1:(NSString*)strNum1 Num2:(NSString*)strNum2 Num3:(NSString*)strNum3 Num4:(NSString*)strNum4 Num5:(NSString*)strNum5 Num6:(NSString*)strNum6 Remark:(NSString*)strRemark Checked:(NSString*)strChecked Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin CheckDate:(NSString*)strCheckDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate flg:(NSString*)strflg Uploadflg:(NSString*)strUploadflg
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
        insert = [database executeUpdate:@"insert into SYS_CarCheck (RoadID,TaskID,SortID ,CheckPro,Unit,Num1,Num2,Num3,Num4,Num5,Num6,Remark,Checked,Record ,CheckAagin ,CheckDate ,AddUser ,AddDate ,flg ,Uploadflg) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" , strRoadID , strTaskID  , strSortID , strCheckPro , strUnit , strNum1 , strNum2 , strNum3 , strNum4  , strNum5 , strNum6 , strRemark , strChecked, strRecord, strCheckAagin,strCheckDate, strAddUser , strAddDate , strflg , strUploadflg];
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

-(Boolean)AddChukouCarCheckWithRoadID:(NSString*)strRoadID TaskID:(NSString*)strTaskID SortID:(NSString*)strSortID CheckPro:(NSString*)strCheckPro Unit:(NSString*)strUnit Num1:(NSString*)strNum1 Num2:(NSString*)strNum2 Num3:(NSString*)strNum3 Num4:(NSString*)strNum4 Num5:(NSString*)strNum5 Num6:(NSString*)strNum6 Remark:(NSString*)strRemark Checked:(NSString*)strChecked Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin CheckDate:(NSString*)strCheckDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate flg:(NSString*)strflg Uploadflg:(NSString*)strUploadflg
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
        insert = [database executeUpdate:@"insert into SYS_CarCheck (RoadID,TaskID,SortID ,CheckPro,Unit,Num1,Num2,Num3,Num4,Num5,Num6,Remark,Checked,Record ,CheckAagin ,CheckDate ,AddUser ,AddDate ,flg ,Uploadflg) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" , strRoadID , strTaskID  , strSortID , strCheckPro , strUnit , strNum1 , strNum2 , strNum3 , strNum4  , strNum5 , strNum6 , strRemark , strChecked, strRecord, strCheckAagin,strCheckDate, strAddUser , strAddDate , strflg , strUploadflg];
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
