//
//  SYSJiediDAC.h
//  JKY01
//
//  Created by 赵 旭初 on 14-5-22.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"
#import "DBInfo.h"

@interface SYSJiediDAC : NSObject
{
    FMResultSet *resultSet;
}


-(Boolean)AddJDTEstWithRoadID:(NSString*)strRoadID TaskID:(NSString*)strTaskID SortID:(NSString*)strSortID TestStation:(NSString*)strTestStation TestValue:(NSString*)strTestValue Remark:(NSString*)strRemark Checked:(NSString*)strChecked Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin CheckDate:(NSString*)strCheckDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate Uploadflg:(NSString*)strUploadflg;



@end
