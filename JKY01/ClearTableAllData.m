//
//  ClearTableAllData.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-6.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "ClearTableAllData.h"
static NSString *dbp;


@implementation ClearTableAllData

// 清除数据库中所有表的数据
-(void)ClearAllData
{

    //获取Document文件夹下的数据库文件，没有则创建
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *dbPath = [docPath stringByAppendingPathComponent:@"JKYDB.db"];
    dbp = dbPath;
    
    //获取数据库并打开
    FMDatabase *database  = [FMDatabase databaseWithPath:dbp];
    if (![database open]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"打开数据库JKYDB中途发生错误，请退出应用程序重试。" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    // 人员制度检查
    [database executeUpdate:@"delete from MemberCheck"];
    
    /*==============================================================*/
    /*  工具设备检查 Table: ToolCheck                            */
    /*==============================================================*/
    [database executeUpdate:@"delete from ToolCheck"];
    
    
    /*==============================================================*/
    /* 资料检查 Table: FileCheck                                */
    /*==============================================================*/
    [database executeUpdate:@"delete from FileCheck"];
    
    
    /*==============================================================*/
    /* 设备完好率 Table: Equipment                               */
    /*==============================================================*/
    [database executeUpdate:@"delete from Equipment"];
    
    
    /*==============================================================*/
    /* 照度实测 Table: LightTest                                */
    /*==============================================================*/
    [database executeUpdate:@"delete from LightTest"];
    
    
    /*==============================================================*/
    /* 照度实测表头 Table: LightTestTitle                             */
    /*==============================================================*/
    [database executeUpdate:@"delete from LightTestTitle"];
    
    
    /*==============================================================*/
    /* 其他测试 Table: OtherTest                                     */
    /*==============================================================*/
    [database executeUpdate:@"delete from OtherTest"];
    
    
    /*==============================================================*/
    /* co烟雾表 Table: COYanWu                                       */
    /*==============================================================*/
    [database executeUpdate:@"delete from COYanWu"];
    
    
    /*==============================================================*/
    /* 接地电阻实测表 Table: JDTestTB                                  */
    /*==============================================================*/
    [database executeUpdate:@"delete from JDTestTB"];
    
    
    /*==============================================================*/
    /* 人员表 Table: UserTb                                          */
    /*==============================================================*/
    [database executeUpdate:@"delete from UserTb"];
    
    
    /*==============================================================*/
    /* 任务表 Table: Task                                            */
    /*==============================================================*/
    [database executeUpdate:@"delete from Task"];
    
    
    /*==============================================================*/
    /* 管理单位 Table: ManagerUnit                                   */
    /*==============================================================*/
    [database executeUpdate:@"delete from ManagerUnit"];
    
    
    /*==============================================================*/
    /* 所属路段 Table: RoadBelong                                    */
    /*==============================================================*/
    [database executeUpdate:@"delete from RoadBelong"];
    
    
    /*==============================================================*/
    /* 隧道 Table: Tunnel                                            */
    /*==============================================================*/
    [database executeUpdate:@"delete from Tunnel"];
    
    [database close];

    
    
    

    
    
}

@end
