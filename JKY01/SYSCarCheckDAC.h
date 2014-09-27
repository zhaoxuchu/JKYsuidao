//
//  SYSCarCheckDAC.h
//  JKY01
//
//  Created by 赵 旭初 on 14-4-23.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"
#import "DBInfo.h"

@interface SYSCarCheckDAC : NSObject
{
    FMResultSet *resultSet;
}


-(Boolean)AddRukouCarCheckWithRoadID:(NSString*)strRoadID TaskID:(NSString*)strTaskID SortID:(NSString*)strSortID CheckPro:(NSString*)strCheckPro Unit:(NSString*)strUnit Num1:(NSString*)strNum1 Num2:(NSString*)strNum2 Num3:(NSString*)strNum3 Num4:(NSString*)strNum4 Num5:(NSString*)strNum5 Num6:(NSString*)strNum6 Remark:(NSString*)strRemark Checked:(NSString*)strChecked Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin CheckDate:(NSString*)strCheckDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate flg:(NSString*)strflg Uploadflg:(NSString*)strUploadflg;

-(Boolean)AddChukouCarCheckWithRoadID:(NSString*)strRoadID TaskID:(NSString*)strTaskID SortID:(NSString*)strSortID CheckPro:(NSString*)strCheckPro Unit:(NSString*)strUnit Num1:(NSString*)strNum1 Num2:(NSString*)strNum2 Num3:(NSString*)strNum3 Num4:(NSString*)strNum4 Num5:(NSString*)strNum5 Num6:(NSString*)strNum6 Remark:(NSString*)strRemark Checked:(NSString*)strChecked Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin CheckDate:(NSString*)strCheckDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate flg:(NSString*)strflg Uploadflg:(NSString*)strUploadflg;











@end
