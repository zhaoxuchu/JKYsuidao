//
//  WanghaoDAC.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-18.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"

@interface WanghaoDAC : NSObject



-(Boolean)AddEquipmentWithTunnelID:(NSString*)strTunnelID jianchaType:(NSString*)strjianchaType SortID:(NSString*)strSortID jianchaPro:(NSString*)strjianchaPro SizeParas:(NSString*)strSizeParas Units:(NSString*)strUnits TotalNum:(NSString*)strTotalNum BadNum:(NSString*)strBadNum BadDate:(NSString*)strBadDate CompleteRate:(NSString*)strCompleteRate Remark:(NSString*)strRemark Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg Uploadflg:(NSString *)strUploadflg TaskID:(NSString*)strTaskID;






@end
