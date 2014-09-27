//
//  RenyuanDAC.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-6.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"

@interface RenyuanDAC : NSObject

-(BOOL*)AddRenyuanDataWithTunnelID:(NSString *)strTunnelID SortID:(NSString *)strSortID CheckProName:(NSString *)strCheckProName TypeResult1:(NSString *)strTypeResult1 TypeResult2:(NSString *)strTypeResult2 TypeResult3:(NSString *)strTypeResult3 ExplainName:(NSString *)strExplainName ExplainContent:(NSString *)strExplainContent Remark:(NSString *)strRemark AddUser:(NSString *)strAddUser Checked:(NSString *)strChecked Record:(NSString *)strRecord CheckAgain:(NSString *)strCheckAgain AddDate:(NSString *)strAddDate TbFlg:(NSString *)strTbFlg Uploadflg:(NSString *)strUploadflg;


@end
