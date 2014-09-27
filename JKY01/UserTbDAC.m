//
//  UserTbDAC.m
//  JKY01
//
//  Created by 赵 旭初 on 14-6-9.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "UserTbDAC.h"
#import "TLAlertView.h"
#import "ClearTableAllData.h"
#import "ErrLog.h"
#import "NetWebServiceRequest.h"
#import "GDataXMLNode.h"

static NSString *dbp;

@implementation UserTbDAC

-(Boolean)UserLoginWithUserName:(NSString *)strName Psd:(NSString *)strPsd
{
    NSString *strsql;
    NSString *UserID;
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        [ErrLog setOptResult:false];
        [ErrLog setexception:@"打开数据库JKYDB中途发生错误，请退出应用程序重试。"];
        [ErrLog setOptTitle:@"错误"];
        
        return false;
    }
    strsql = @"SELECT * FROM UserTb where UserID='";
    strsql = [strsql stringByAppendingString:strName];
    strsql = [strsql stringByAppendingString:@"' and "];
    strsql = [strsql stringByAppendingString:@"UserPWD='"];
    strsql = [strsql stringByAppendingString:strPsd];
    strsql = [strsql stringByAppendingString:@"'"];

    resultSet = [database executeQuery:strsql];
    
    while ([resultSet next]) {
        UserID = [resultSet stringForColumn:@"UserID"];
    }
    
    [database close];
    
    if ([UserID isEqualToString:@""] || UserID != nil ) {
        return true;
    }
    
    return false;
}


//+(NSString *)getUserName
//{
//    return strUserName;
//}









@end
