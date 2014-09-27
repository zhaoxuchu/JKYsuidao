//
//  CreateTable.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-5.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"

@interface CreateTable : NSObject

-(void)createTalbe;
- (void)createDB;
-(void)deleteAllTable;


@end
