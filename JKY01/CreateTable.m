//
//  CreateTable.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-5.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "CreateTable.h"

static NSString *dbp;

@implementation CreateTable


// 创建数据库
- (void)createDB
{
    //获取Document文件夹下的数据库文件，没有则创建
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *dbPath = [docPath stringByAppendingPathComponent:@"JKYDB.db"];
    dbp = dbPath;
    
    [self createTalbe];
    
}

// 创建表
-(void)createTalbe
{
    //获取数据库并打开
    FMDatabase *database  = [FMDatabase databaseWithPath:dbp];
    if (![database open]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"创建数据库JKYDB中途发生错误，请退出应用程序重试。" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }

    //创建表 人员制度检查
    [database executeUpdate:@"create table MemberCheck (CheckProID integer    primary key , TunnelID  varchar,SortID  varchar,CheckProName  varchar,TypeResult1          varchar,TypeResult2          varchar,TypeResult3          Varchar,ExplainName          varchar,ExplainContent       varchar,Remark               varchar,AddUser              varchar,Checked             varchar,Record               varchar,CheckAgain           varchar,AddDate              datetime,TbFlg                varchar,Uploadflg varchar ,TaskID varchar)"];
    
    /*==============================================================*/
    /* 创建表 工具设备检查 Table: ToolCheck                            */
    /*==============================================================*/
    [database executeUpdate:@"create table ToolCheck (ToolCheckID integer primary key,TunnelID             varchar,SortID               integer,CheckProType         varchar,CheckProName         varchar,SettingNum           varchar,Unit                 varchar,IsGood               varchar,IsBad                varchar,BadContent           varchar,Remark               varchar,Checked              varchar,Record               varchar,CheckAgain           varchar,Date                 datetime,AddUser              varchar,AddDate              datetime,TbFlg                varchar,Uploadflg varchar ,TaskID varchar)"];
    
    
    /*==============================================================*/
    /* 创建表资料检查 Table: FileCheck                                */
    /*==============================================================*/
    [database executeUpdate:@"create table FileCheck (FileCheckID integer primary key,TunnelID             varchar,FacilityType         varchar,SortID               integer,Facility             varchar,CheckContent         varchar,RecordAll            varchar,CheckNotAll          varchar,RecordNo             varchar,Remark               varchar,Checked              varchar,Record               varchar,CheckAgain           varchar,Date                 datetime,AddUser              varchar,AddDate              datetime,TbFlg                varchar,flg                  varchar,Uploadflg varchar ,TaskID varchar)"];
    
    
    /*==============================================================*/
    /* 创建表设备完好率 Table: Equipment                               */
    /*==============================================================*/
    [database executeUpdate:@"create table Equipment (EquipmentID integer primary key,TunnelID             varchar,jianchaType          varchar,SortID               integer,jianchaPro           varchar,SizeParas            varchar,Units                varchar,TotalNum             varchar,BadNum               varchar,BadDate              varchar,CompleteRate         varchar,Remark                varchar,Checked              varchar,Record               varchar,CheckAgain           varchar,Date                 datetime,AddUser              varchar,AddDate              datetime,TbFlg                varchar,Uploadflg varchar ,TaskID varchar)"];
    
    
    /*==============================================================*/
    /* 创建表照度实测 Table: LightTest                                */
    /*==============================================================*/
    [database executeUpdate:@"create table LightTest(LightTestID integer primary key,TunnelID             varchar,TestData             varchar,DuanMian             varchar,CF1                  varchar,CF2                  varchar,CF3                  varchar,CF4                  varchar,CF5                  varchar,CF6                  varchar,CF7                  varchar,CF8                  varchar,CF9                  varchar,CF10                 varchar,Checked              varchar,Record               varchar,CheckAgain           varchar,Date                 datetime,AddUser              varchar,AddDate              datetime,TbFlg                varchar,Uploadflg varchar ,TaskID varchar)"];
    
    
    /*==============================================================*/
    /* 照度实测表头 Table: LightTestTitle                             */
    /*==============================================================*/
    [database executeUpdate:@"create table LightTestTitle(LightTitleID integer primary key,TunnelID          integer,TXQK                 varchar,RoadWidth            varchar,CarRWidth            varchar,DesignSpeed          varchar,LightType            varchar,LightHeight          varchar,BDFS                 varchar,TestRoad             varchar,TestLength           varchar,LMCL                 varchar,JieLun               varchar,Uploadflg varchar ,TaskID varchar)"];
    
    
    /*==============================================================*/
    /* 其他测试 Table: OtherTest                                     */
    /*==============================================================*/
    [database executeUpdate:@"create table OtherTest(OtherTestID integer primary key,TunnelID             varchar,AddUser              varchar,AddDate              datetime,type                 integer,Checked              varchar,Record               varchar,CheckAgain           varchar,Date                 datetime,TbFlg                varchar,Uploadflg varchar ,TaskID varchar)"];
    
    
    /*==============================================================*/
    /* co烟雾表 Table: COYanWu                                       */
    /*==============================================================*/
    [database executeUpdate:@"create table COYanWu(COID integer primary key,OtherTestID          integer,Station              integer,CO1                  varchar,CO2                  varchar,CO3                  varchar,CO4                  varchar,CO5                  varchar,AddUser              varchar,AddDate              datetime,flg                  varchar,Uploadflg varchar )"];
    
    
    /*==============================================================*/
    /* 接地电阻实测表 Table: JDTestTB                                  */
    /*==============================================================*/
    [database executeUpdate:@"create table JDTestTB(JDID integer primary key,OtherTestID          integer,TestStation          varchar,JDXZ                 varchar,DesignValue          varchar,TrueValue            varchar,Remark               varchar,AddUser              varchar,AddDate              datetime,Uploadflg varchar)"];
    
    
    /*==============================================================*/
    /* 人员表 Table: UserTb                                          */
    /*==============================================================*/
    [database executeUpdate:@"create table UserTb(UserID varchar primary key,UserPWD              varchar,UserName             varchar,SFZ                  varchar,Phone                varchar,AddUser              varchar,AddDate              datetime )"];
    
    
    /*==============================================================*/
    /* 任务表 Table: Task                                            */
    /*==============================================================*/
    [database executeUpdate:@"create table Task(TaskID varchar primary key,TaskTitle            varchar,Remark               Varchar,flg                  varchar,AddUser              varchar,AddDate              datetime )"];
    
    
    /*==============================================================*/
    /* 管理单位 Table: ManagerUnit                                   */
    /*==============================================================*/
    [database executeUpdate:@"create table ManagerUnit(ManagerUnitID varchar primary key,ManagerUnitName      varchar,AddUser              varchar,AddDate              datetime)"];
    
    
    /*==============================================================*/
    /* 所属路段 Table: RoadBelong                                    */
    /*==============================================================*/
    [database executeUpdate:@"create table RoadBelong(RoadID varchar primary key,ManagerUnitID        varchar,RoadName             varchar,AddUser              varchar,AddDate              datetime)"];
    
    
    /*==============================================================*/
    /* 隧道 Table: Tunnel                                            */
    /*==============================================================*/
    [database executeUpdate:@"create table Tunnel(TunnelID varchar primary key,RoadID               varchar,TunnelName           varchar,AddUser              varchar,AddDate              datetime,CheckStation         varchar,ProtectUnit          varchar,RoadLevel            integer)"];
    
    /*==============================================================*/
    /* 资料检查（SYS_FileCheck） 三大系统                              */
    /*==============================================================*/
    [database executeUpdate:@"create table SYS_FileCheck(SYS_FileCheckID integer primary key,RoadID  varchar,TaskID varchar,SortID            varchar,CheckPro  varchar,MainContent  varchar,CheckZQ  varchar,TrueZQ  varchar,Remark  varchar,Checked  varchar,Record varchar,CheckAagin  varchar,CheckDate  varchar,AddUser  varchar,AddDate  datetime ,flg  varchar,Uploadflg  varchar)"];
    
    
    /*==============================================================*/
    /* 三大系统_入口车道设备技术状况检查记录（SYS_CarCheck） 三大系统       */
    /*==============================================================*/
    [database executeUpdate:@"create table SYS_CarCheck(SYS_CarCheckID integer primary key,RoadID  varchar,TaskID varchar,SortID           varchar,CheckPro varchar,Unit varchar,Num1 varchar,Num2 varchar,Num3 varchar,Num4 varchar,Num5 varchar,Num6 varchar,Num7 varchar,Num8 varchar,Num9 varchar,Num10 varchar,Remark  varchar,Checked varchar,Record varchar,CheckAagin varchar,CheckDate varchar,AddUser varchar,AddDate datetime , flg varchar,Uploadflg varchar)"];
    
    
    /*==============================================================*/
    /* 三大系统_收费站及分中心联合接地电阻实测（SYS_JDTest） 三大系统        */
    /*==============================================================*/
    [database executeUpdate:@"create table SYS_JDTest(SYS_JDTestID integer primary key,RoadID  varchar,TaskID varchar,SortID           varchar,TestStation varchar,TestValue varchar,Remark  varchar,Checked varchar,Record varchar,CheckAagin varchar,CheckDate varchar,AddUser varchar,AddDate datetime , flg varchar,Uploadflg varchar)"];
    
    [database close];
}

-(void)deleteAllTable
{
    //获取Document文件夹下的数据库文件，没有则创建
    NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString *dbPath = [docPath stringByAppendingPathComponent:@"JKYDB.db"];
    dbp = dbPath;

    //获取数据库并打开
    FMDatabase *database  = [FMDatabase databaseWithPath:dbp];
    if (![database open]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"创建数据库JKYDB中途发生错误，请退出应用程序重试。" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"MemberCheck"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"ToolCheck"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"FileCheck"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"Equipment"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"LightTest"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"LightTestTitle"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"OtherTest"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"COYanWu"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"JDTestTB"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"UserTb"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"Task"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"ManagerUnit"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"RoadBelong"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"Tunnel"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"SYS_CarCheck"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"SYS_FileCheck"]];
    [database executeUpdate:[NSString stringWithFormat:@"DROP TABLE %@", @"SYS_JDTest"]];

    [database close];
    
}





@end
