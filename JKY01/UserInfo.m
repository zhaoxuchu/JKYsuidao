//
//  UserInfo.m
//  JKY01
//
//  Created by 赵 旭初 on 14-6-9.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "UserInfo.h"

 static NSString *strUserName;

@implementation UserInfo

+(void)setUserName:(NSString *)strname;
{
    strUserName = strname;
}



+(NSString *)getUserName
{
    return strUserName;
}


@end
