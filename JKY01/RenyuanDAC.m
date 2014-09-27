//
//  RenyuanDAC.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-6.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "RenyuanDAC.h"
#import "ErrLog.h"
static NSString *dbp;

@implementation RenyuanDAC


-(BOOL*)AddRenyuanDataWithTunnelID:(NSString *)strTunnelID SortID:(NSString *)strSortID CheckProName:(NSString *)strCheckProName TypeResult1:(NSString *)strTypeResult1 TypeResult2:(NSString *)strTypeResult2 TypeResult3:(NSString *)strTypeResult3 ExplainName:(NSString *)strExplainName ExplainContent:(NSString *)strExplainContent Remark:(NSString *)strRemark AddUser:(NSString *)strAddUser Checked:(NSString *)strChecked Record:(NSString *)strRecord CheckAgain:(NSString *)strCheckAgain AddDate:(NSString *)strAddDate TbFlg:(NSString *)strTbFlg Uploadflg:(NSString *)strUploadflg;
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
        
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"打开数据库JKYDB中途发生错误，请退出应用程序重试。" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//        [alert show];
        return false;
    }
    
    // 插入数据
    [database beginTransaction]; // 启动事物
    BOOL isRollBack = NO;
    BOOL insert;
    @try {
        
        insert = [database executeUpdate:@"insert into MemberCheck (TunnelID ,SortID ,CheckProName ,TypeResult1 ,TypeResult2 ,TypeResult3 ,ExplainName ,ExplainContent ,Remark ,AddUser ,Checked ,Record ,CheckAgain ,AddDate ,TbFlg ,Uploadflg) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" , strTunnelID , strSortID , strCheckProName , strTypeResult1 , strTypeResult2 , strTypeResult3 , strExplainName , strExplainContent , strRemark , strAddUser , strChecked , strRecord , strCheckAgain , strAddDate , strTbFlg , strUploadflg];

    }
    @catch (NSException *exception) {
        isRollBack = YES;
        [database rollback];
        
        [ErrLog setOptResult:false];
        [ErrLog setexception:@"插入数据错误"];
        [ErrLog setOptTitle:@"错误"];

    }
    @finally {
        if (!isRollBack) {
            [database commit];
            
            [ErrLog setOptResult:&insert];
            [ErrLog setexception:@"数据保存成功"];
            [ErrLog setOptTitle:@"提示"];
//            if(insert==true)
//            {
//                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"数据保存成功" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//                [alert show];
//            }
        }
    }
    
    [database close];
    
    return true;
    
}

@end
