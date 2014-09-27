//
//  GongjuDAC.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-11.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"

@interface GongjuDAC : NSObject


-(Boolean)AddGongjuDataWithTunnelID:(NSString*)strTunnelID SortID:(NSString*)strSortID CheckProType:(NSString*)strCheckProType CheckProName:(NSString*)strCheckProName SettingNum:(NSString*)strSettingNum Unit:(NSString*)strUnit IsGood:(NSString*)strIsGood
                           IsBad:(NSString*)strIsBad BadContent:(NSString*)strBadContent Remark:(NSString*)strRemark Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg Uploadflg:(NSString *)strUploadflg TaskID:(NSString*)strTaskID;



@end
