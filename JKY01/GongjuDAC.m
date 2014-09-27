//
//  GongjuDAC.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-11.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "GongjuDAC.h"
static NSString *dbp;

@implementation GongjuDAC

-(Boolean)AddGongjuDataWithTunnelID:(NSString*)strTunnelID SortID:(NSString*)strSortID CheckProType:(NSString*)strCheckProType CheckProName:(NSString*)strCheckProName SettingNum:(NSString*)strSettingNum Unit:(NSString*)strUnit IsGood:(NSString*)strIsGood
                           IsBad:(NSString*)strIsBad BadContent:(NSString*)strBadContent Remark:(NSString*)strRemark Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg Uploadflg:(NSString *)strUploadflg TaskID:(NSString*)strTaskID
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
        insert = [database executeUpdate:@"insert into ToolCheck (TunnelID ,SortID ,CheckProType ,CheckProName ,SettingNum ,Unit ,IsGood ,IsBad ,BadContent ,Remark ,Checked ,Record ,CheckAgain ,Date , AddUser , AddDate ,TbFlg ,Uploadflg , TaskID) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)" , strTunnelID , strSortID , strCheckProType , strCheckProName , strSettingNum , strUnit , strIsGood , strIsBad , strBadContent , strRemark , strCheck , strRecord , strCheckAagin , strDate , strAddUser , strAddDate , strTbFlg , strUploadflg , strTaskID];
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
