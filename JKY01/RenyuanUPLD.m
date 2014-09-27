//
//  RenyuanUPLD.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-7.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "RenyuanUPLD.h"
#import "ErrLog.h"
#import "NetWebServiceRequest.h"

static NSString *CheckProID;
static FMDatabase *database;
static FMResultSet *resultSet;

@interface RenyuanUPLD ()<NetWebServiceRequestDelegate>
{
    
}

@property (nonatomic, retain) NetWebServiceRequest* runningRequest;

@end

@implementation RenyuanUPLD

#pragma mark - Properties

@synthesize runningRequest=_runningRequest;

#pragma mark - Object Lifecycle

-(void)LoadDBMemberTableAndSendServer
{
//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
//    NSString *documentPath = [paths objectAtIndex:0];
//    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
//    
//    database = [FMDatabase databaseWithPath:dbPath];
//    if (![database open]) {
//        return;
//    }
//    
//    resultSet = [database executeQuery:@"SELECT * FROM MemberCheck where Uploadflg=0" ];
//    while ([resultSet next]) {
//        CheckProID = [resultSet stringForColumn:@"TunnelID"];
//        NSString *TunnelID = [resultSet stringForColumn:@"TunnelID"];
//        NSString *SortID = [resultSet stringForColumn:@"SortID"];
//        NSString *CheckProName = [resultSet stringForColumn:@"CheckProName"];
//        NSString *TypeResult1 = [resultSet stringForColumn:@"TypeResult1"];
//        NSString *TypeResult2 = [resultSet stringForColumn:@"TypeResult2"];
//        NSString *TypeResult3 = [resultSet stringForColumn:@"TypeResult3"];
//        NSString *ExplainName = [resultSet stringForColumn:@"ExplainName"];
//        NSString *ExplainContent = [resultSet stringForColumn:@"ExplainContent"];
//        NSString *Remark = [resultSet stringForColumn:@"Remark"];
//        NSString *AddUser = [resultSet stringForColumn:@"AddUser"];
//        NSString *Checked = [resultSet stringForColumn:@"Checked"];
//        NSString *Record = [resultSet stringForColumn:@"Record"];
//        NSString *CheckAgain = [resultSet stringForColumn:@"CheckAgain"];
//        NSString *AddDate = [resultSet stringForColumn:@"AddDate"];
//        NSString *TbFlg = [resultSet stringForColumn:@"TbFlg"];
//        NSString *TaskID = [resultSet stringForColumn:@"TaskID"];
//        
//        [self SendDataToServerWithTunnelID:TunnelID SortID:SortID CheckProName:CheckProName TypeResult1:TypeResult1 TypeResult2:TypeResult2 TypeResult3:TypeResult3 ExplainName:ExplainName ExplainContent:ExplainContent Remark:Remark AddUser:AddUser Checked:Checked Record:Record CheckAgain:CheckAgain AddDate:AddDate TbFlg:TbFlg TaskID:TaskID];
//
//    }
//
//    [database close];
    
    NSString *soapMessage = [NSString stringWithFormat:
							 @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
							 "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
							 "<soap:Body>\n"
							 "<AddUser xmlns=\"http://tempuri.org/\">\n"
							 "<UserID>%@</UserID>\n"
                             "<UserPWD>%@</UserPWD>\n"
                             "<UserName>%@</UserName>\n"
                             "<SFZ>%@</SFZ>\n"
                             "<Phone>%@</Phone>\n"
							 "</AddUser>\n"
							 "</soap:Body>\n"
							 "</soap:Envelope>\n", @"testadmin129901"  , @"12345678" , @"测试人员" , @"5301111984011122012" , @"1234567890"
							 ];
    //CLog(@"%@",soapMessage);
    
    
	//请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/AddUser";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"AddUser" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}

-(void)SendDataToServerWithTunnelID:(NSString *)strTunnelID SortID:(NSString *)strSortID CheckProName:(NSString *)strCheckProName TypeResult1:(NSString *)strTypeResult1 TypeResult2:(NSString *)strTypeResult2 TypeResult3:(NSString *)strTypeResult3 ExplainName:(NSString *)strExplainName ExplainContent:(NSString *)strExplainContent Remark:(NSString *)strRemark AddUser:(NSString *)strAddUser Checked:(NSString *)strChecked Record:(NSString *)strRecord CheckAgain:(NSString *)strCheckAgain AddDate:(NSString *)strAddDate TbFlg:(NSString *)strTbFlg TaskID:(NSString *)strTaskID
{
//    NSString *soapMessage = [NSString stringWithFormat:
//							 @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
//							 "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
//							 "<soap:Body>\n"
//							 "<AddMember xmlns=\"http://tempuri.org/\">\n"
//							 "<TunnelID>%@</TunnelID>\n"
//                             "<SortID>%@</SortID>\n"
//                             "<CheckProName>%@</CheckProName>\n"
//                             "<TypeResult1>%@</TypeResult1>\n"
//                             "<TypeResult2>%@</TypeResult2>\n"
//                             "<TypeResult3>%@</TypeResult3>\n"
//                             "<ExplainName>%@</ExplainName>\n"
//                             "<ExplainContent>%@</ExplainContent>\n"
//                             "<Remark>%@</Remark>\n"
//                             "<AddUser>%@</AddUser>\n"
//                             "<Check>%@</Check>\n"
//                             "<Record>%@</Record>\n"
//                             "<CheckAgain>%@</CheckAgain>\n"
//                             "<TbFlg>%@</TbFlg>\n"
//                             "<AddDate>%@</AddDate>\n"
//                             "<TaskID>%@</TaskID>\n"
//							 "</AddMember>\n"
//							 "</soap:Body>\n"
//							 "</soap:Envelope>\n"
//                             , strTunnelID
//                             , strSortID
//                             , strCheckProName
//                             , strTypeResult1
//                             , strTypeResult2
//                             , strTypeResult3
//                             , strExplainName
//                             , strExplainContent
//                             , strRemark
//                             , strAddUser
//                             , strChecked
//                             , strRecord
//                             , strCheckAgain
//                             , strTbFlg
//                             , strAddDate
//                             , @"1"
//							 ];
//    CLog(@"%@",soapMessage);
//    
//	//请求发送到的路径
//    NSString *url = @"http://192.168.1.8:8065/YHWebService.asmx";
//    NSString *soapActionURL = @"http://tempuri.org/AddMember";
//    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"AddMember" SoapMessage:soapMessage];
//    
//    [request startAsynchronous];
//    [request setDelegate:self];
//    self.runningRequest = request;
}



#pragma mark NetWebServiceRequestDelegate Methods
- (void)netRequestStarted:(NetWebServiceRequest *)request
{
    CLog(@"Start");
}


- (void)netRequestFinished:(NetWebServiceRequest *)request
      finishedInfoToResult:(NSString *)result
              responseData:(NSData *)requestData{
    
//    if (![database open]) {
//        
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"数据库已经关闭，更新MenberCheckID主键时候无法打开数据库，更新失败" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//        [alert show];
//        return;
//    }
//    
//    if([result isEqualToString:@"0"])
//    {
//        return;
//    }
//
//    BOOL insert =  [database executeUpdate:@"UPDATE MemberCheck SET Uploadflg=? WHERE CheckProID=?" , @"1" , CheckProID];
//    
//    if(insert==false)
//    {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"更新数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//        [alert show];
//    }
    
    CLog(@"%@",result);
    
}


- (void)netRequestFailed:(NetWebServiceRequest *)request didRequestError:(NSError *)error{
    
    CLog(@"%@",error);
    
}





@end
