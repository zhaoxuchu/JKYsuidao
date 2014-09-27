//
//  SYSFileCheckDAC.h
//  JKY01
//
//  Created by 赵 旭初 on 14-4-15.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"
#import "DBInfo.h"

@interface SYSFileCheckDAC : NSObject
{
    FMResultSet *resultSet;
}


-(Boolean)AddFileCheckWithRoadID:(NSString*)strRoadID TaskID:(NSString*)strTaskID SortID:(NSString*)strSortID CheckPro:(NSString*)strCheckPro MainContent:(NSString*)strMainContent CheckZQ:(NSString*)strCheckZQ TrueZQ:(NSString*)strTrueZQ Remark:(NSString*)strRemark Checked:(NSString*)strChecked Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin CheckDate:(NSString*)strCheckDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate flg:(NSString*)strflg Uploadflg:(NSString*)strUploadflg;




@end
