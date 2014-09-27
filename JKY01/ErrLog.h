//
//  ErrLog.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-7.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ErrLog : NSObject

+(void)setOptResult:(BOOL *)OptResult;
+(void)setexception:(NSString *)strexception;
+(void)setOptTitle:(NSString *)strTitle;

+(BOOL)GetOptResult;
+(NSString* )Getexception;
+(NSString*)GetOptTitle;


@end
