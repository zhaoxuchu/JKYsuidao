//
//  JingchangDAC.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-17.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"

@interface JingchangDAC : NSObject


-(Boolean)ADdJingchangWithTunnelID:(NSString*)strTunnelID FacilityType:(NSString*)strFacilityType SortID:(NSString*)strSortID Facility:(NSString*)strFacility CheckContent:(NSString*)strCheckContent RecordAll:(NSString*)strRecordAll CheckNotAll:(NSString*)strCheckNotAll RecordNo:(NSString*)strRecordNo Remark:(NSString*)strRemark Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg Uploadflg:(NSString *)strUploadflg TaskID:(NSString*)strTaskID flg:(NSString*)strflg;

@end
