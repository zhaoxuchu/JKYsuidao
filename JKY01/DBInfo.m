//
//  DBInfo.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-28.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "DBInfo.h"


static NSString* OtherTestOutputResult;

@implementation DBInfo

+(void)setOptOtherTestDBOutPutResult:(NSString *)OptOutputResult
{
    OtherTestOutputResult =OptOutputResult;
}

+(NSString*)GetOptOtherTestDBOutPutResult
{
    return OtherTestOutputResult;
}














@end
