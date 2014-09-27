//
//  ErrLog.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-7.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "ErrLog.h"

static bool* OptResulter;
static NSString* exception;
static NSString* title;

@implementation ErrLog


+(void)setOptResult:(BOOL *)blOptResult
{
    OptResulter =blOptResult;
}

+(void)setexception:(NSString *)strexception
{
    exception = strexception;
}

+(void)setOptTitle:(NSString *)strTitle
{
    title =strTitle;
}



+(BOOL)GetOptResult
{
    return OptResulter;
}

+(NSString*)Getexception
{
    return exception;
}

+(NSString*)GetOptTitle
{
    return title;
}



@end
