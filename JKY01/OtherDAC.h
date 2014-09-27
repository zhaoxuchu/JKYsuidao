//
//  OtherDAC.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-27.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"
#import "DBInfo.h"

@interface OtherDAC : NSObject
{
    FMResultSet *resultSet;
}

-(Boolean)AddOtherTestWithTunnelID:(NSString*)strTunnelID type:(NSString*)strType Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg Uploadflg:(NSString *)strUploadflg TaskID:(NSString*)strTaskID;

-(Boolean)AddCOYanWuWithOtherTestID:(NSString*)strOtherTestID Station:(NSString*)strStation CO1:(NSString*)strCO1 CO2:(NSString*)strCO2 CO3:(NSString*)strCO3 CO4:(NSString*)strCO4 CO5:(NSString*)strCO5 AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate Flg:(NSString*)strFlg Uploadflg:(NSString *)strUploadflg;

-(Boolean)AddJDTestTBWithOtherTestID:(NSString*)strOtherTestID TestStation:(NSString*)strTestStation JDXZ:(NSString*)strJDXZ DesignValue:(NSString*)strDesignValue TrueValue:(NSString*)strTrueValue Remark:(NSString*)strRemark AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate Uploadflg:(NSString *)strUploadflg;















@end
