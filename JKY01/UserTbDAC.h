//
//  UserTbDAC.h
//  JKY01
//
//  Created by 赵 旭初 on 14-6-9.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"
#import "DBInfo.h"

@interface UserTbDAC : NSObject
{
    FMDatabase *database;
    FMResultSet *resultSet;
    int cnt;
}

-(Boolean)UserLoginWithUserName:(NSString *)strName Psd:(NSString *)strPsd;





@end
