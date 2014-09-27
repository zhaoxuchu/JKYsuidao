//
//  SYSJiediDAC.m
//  JKY01
//
//  Created by 赵 旭初 on 14-5-22.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "SYSJiediDAC.h"

static NSString *dbp;

@implementation SYSJiediDAC


-(Boolean)AddJDTEstWithRoadID:(NSString*)strRoadID TaskID:(NSString*)strTaskID SortID:(NSString*)strSortID TestStation:(NSString*)strTestStation TestValue:(NSString*)strTestValue Remark:(NSString*)strRemark Checked:(NSString*)strChecked Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin CheckDate:(NSString*)strCheckDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate Uploadflg:(NSString*)strUploadflg
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
        insert = [database executeUpdate:@"insert into SYS_JDTest (RoadID,TaskID,SortID ,TestStation,TestValue,Remark,Checked,Record ,CheckAagin ,CheckDate ,AddUser ,AddDate ,Uploadflg) values (?,?,?,?,?,?,?,?,?,?,?,?,?)" , strRoadID , strTaskID  , strSortID , strTestStation , strTestValue , strRemark , strChecked, strRecord, strCheckAagin,strCheckDate, strAddUser , strAddDate , strUploadflg];
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
