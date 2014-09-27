//
//  ZhaoduDAC.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-26.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"

@interface ZhaoduDAC : NSObject

-(Boolean)AddLightTestWithTunnelID:(NSString*)strTunnelID TestData:(NSString*)strTestData DuanMian:(NSString*)strDuanMian CF1:(NSString*)strCF1 CF2:(NSString*)strCF2 CF3:(NSString*)strCF3 CF4:(NSString*)strCF4 CF5:(NSString*)strCF5 CF6:(NSString*)strCF6 CF7:(NSString*)strCF7 CF8:(NSString*)strCF8 CF9:(NSString*)strCF9 CF10:(NSString*)strCF10 Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg Uploadflg:(NSString *)strUploadflg TaskID:(NSString*)strTaskID ;

-(Boolean)addLightTestTitleWihtTunnelID:(NSString*)strTunnelID TXQK:(NSString*)strTXQK RoadWidth:(NSString*)strRoadWidth CarRWidth:(NSString*)strCarRWidth DesignSpeed:(NSString*)strDesignSpeed LightType:(NSString*)strLightType LightHeight:(NSString*)strLightHeight BDFS:(NSString*)strBDFS TestRoad:(NSString*)strTestRoad TestLength:(NSString*)strTestLength LMCL:(NSString*)strLMCL Uploadflg:(NSString *)strUploadflg TaskID:(NSString*)strTaskID JieLun:(NSString*)strJieLun;


@end
