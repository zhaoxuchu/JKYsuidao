//
//  TaskInfo.m
//  JKY01
//
//  Created by 赵 旭初 on 14-6-15.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "TaskInfo.h"

static NSString *strTaskID;
static NSString *strTaskName;


@implementation TaskInfo

+(NSString *)getTaskID
{
    return strTaskID;
}
+(NSString *)getTaskName
{
    return strTaskName;
}
+(void)setTaskID:(NSString *)value
{
    strTaskID = value;
}
+(void)setTaskName:(NSString *)value
{
    strTaskName =value;
}





















@end
