//
//  SystemSetViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-3-6.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "SystemSetViewController.h"
#import "TLAlertView.h"
#import "ClearTableAllData.h"
#import "ErrLog.h"
#import "NetWebServiceRequest.h"
#import "GDataXMLNode.h"


@interface SystemSetViewController ()<NetWebServiceRequestDelegate>

@property (nonatomic, retain) NetWebServiceRequest* runningRequest;

@end


@implementation SystemSetViewController

#pragma mark - 属性
@synthesize runningRequest=_runningRequest;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btncreate:(UIButton *)sender {
    
    CreateTable *cr = [CreateTable alloc];
    [cr createDB];
    
}

- (IBAction)btnDel:(UIButton *)sender {
    
    CreateTable *cr = [CreateTable alloc];
    [cr deleteAllTable];
}



- (IBAction)btnClearTable:(UIButton *)sender {
    
    
    TLAlertView *alertView = [TLAlertView showInView:self.view withTitle:@"数据清空" message:@"点击确定将清除本机数据库中所有数据，你确定要清除吗？" confirmButtonTitle:@"确定" cancelButtonTitle:@"取消"];
    
    [alertView handleCancel:^{
        return;
    }         handleConfirm:^{
        ClearTableAllData *cl = [ClearTableAllData alloc];
        [cl ClearAllData];
    }];
    
    alertView.TLAnimationType = (arc4random_uniform(10) % 2 == 0) ? TLAnimationType3D : tLAnimationTypeHinge;
    [alertView show];
    
}



- (IBAction)btnAddDataToServer:(UIButton *)sender {
    cnt = 0;
    [self LoadDBMemberTableAndSendServer];
    
}


#pragma mark - 上传数据到服务器
-(void)LoadDBMemberTableAndSendServer
{
    cnt++;
    
    switch (cnt) {
        case 1:
            // 上传第一个表的数据
            [self SendDataToMemberCheck];
            break;
            
        case 2:
            // 上传TOOLCHECK表数据
            [self SendDataToToolCheck];
            break;
            
        case 3:
            // 上传FileCheck表数据
            [self SendDataToFileCheck];
            break;
        case 4:
            // 上传表数据Equipment
            [self SendDataToEquipment];
            break;
            
        case 5:
            // 上传表数据Equipment
            [self SendDataToLightTest];
            break;
            
        case 6:
            // 上传表数据LightTestTitle
            [self SendDataToLightTestTitle];
            break;
            
        case 7:
            // 上传表数据LightTestTitle
            [self SendDataToOtherTest];
            break;
            
        case 8:
            // 上传表数据LightTestTitle
            [self SendDataToCOYanWu];
            break;
            
        case 9:
            // 上传表数据LightTestTitle
            [self SendDataToJDTestTB];
            break;
            
        case 10:
            // 上传数据表SYS_FileCheck
            [self SendDataToSYS_FileCheck];
            break;
            
        case 11:
            // 上传数据表SYS_CarCheck
            [self SendDataToSYS_CarCheck];
            break;

        case 12:
            // 上传数据表SendDataToSYS_JidiTest
            [self SendDataToSYS_JidiTest];
            break;
            
        default:
            // 所有数据更新完成
            return;
            break;
    }
    
}


#pragma mark - 上传第一个表Menber
-(void)SendDataToMemberCheck
{
    NSString *TunnelID=@"";
    NSString *SortID=@"";
    NSString *CheckProName=@"";
    NSString *TypeResult1=@"";
    NSString *TypeResult2=@"";
    NSString *TypeResult3=@"";
    NSString *ExplainName=@"";
    NSString *ExplainContent=@"";
    NSString *Remark=@"";
    NSString *AddUser=@"";
    NSString *Checked=@"";
    NSString *Record=@"";
    NSString *CheckAgain=@"";
    NSString *AddDate=@"";
    NSString *TbFlg=@"";
    NSString *TaskID=@"";
    NSString *CheckProID=@"";
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM MemberCheck where Uploadflg=0" ];
    while ([resultSet next]) {
        TunnelID = [resultSet stringForColumn:@"TunnelID"];
        SortID =  [[SortID stringByAppendingString:[resultSet stringForColumn:@"SortID"]] stringByAppendingString:@"※"];
        CheckProName = [[CheckProName stringByAppendingString:[resultSet stringForColumn:@"CheckProName"]] stringByAppendingString:@"※"];
        TypeResult1 = [[TypeResult1 stringByAppendingString:[resultSet stringForColumn:@"TypeResult1"]] stringByAppendingString:@"※"];
        TypeResult2 = [[TypeResult2 stringByAppendingString:[resultSet stringForColumn:@"TypeResult2"]] stringByAppendingString:@"※"];
        TypeResult3 = [[TypeResult3 stringByAppendingString:[resultSet stringForColumn:@"TypeResult3"]] stringByAppendingString:@"※"];
        ExplainName = [[ExplainName stringByAppendingString:[resultSet stringForColumn:@"ExplainName"]] stringByAppendingString:@"※"];
        ExplainContent = [[ExplainContent stringByAppendingString:[resultSet stringForColumn:@"ExplainContent"]] stringByAppendingString:@"※"];
        Remark = [[Remark stringByAppendingString:[resultSet stringForColumn:@"Remark"]] stringByAppendingString:@"※"];
        AddUser = [resultSet stringForColumn:@"AddUser"];
        Checked = [resultSet stringForColumn:@"Checked"];
        Record = [resultSet stringForColumn:@"Record"];
        CheckAgain = [resultSet stringForColumn:@"CheckAgain"];
        AddDate = [resultSet stringForColumn:@"AddDate"];
        TbFlg = [resultSet stringForColumn:@"TbFlg"];
        TaskID =[resultSet stringForColumn:@"TaskID"];
        CheckProID = [resultSet stringForColumn:@"CheckProID"];
        
    }
    
    if ([SortID isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerWithTunnelID:TunnelID SortID:SortID CheckProName:CheckProName TypeResult1:TypeResult1 TypeResult2:TypeResult2 TypeResult3:TypeResult3 ExplainName:ExplainName ExplainContent:ExplainContent Remark:Remark AddUser:AddUser Checked:Checked Record:Record CheckAgain:CheckAgain AddDate:AddDate TbFlg:TbFlg TaskID:TaskID CheckProID:CheckProID];
        [database close];
    }

}

-(void)SendDataToServerWithTunnelID:(NSString *)strTunnelID SortID:(NSString *)strSortID CheckProName:(NSString *)strCheckProName TypeResult1:(NSString *)strTypeResult1 TypeResult2:(NSString *)strTypeResult2 TypeResult3:(NSString *)strTypeResult3 ExplainName:(NSString *)strExplainName ExplainContent:(NSString *)strExplainContent Remark:(NSString *)strRemark AddUser:(NSString *)strAddUser Checked:(NSString *)strChecked Record:(NSString *)strRecord CheckAgain:(NSString *)strCheckAgain AddDate:(NSString *)strAddDate TbFlg:(NSString *)strTbFlg TaskID:(NSString *)strTaskID CheckProID:(NSString *)strCheckProID
{
        NSString *soapMessage = [NSString stringWithFormat:
    							 @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
    							 "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
    							 "<soap:Body>\n"
    							 "<AddMember xmlns=\"http://tempuri.org/\">\n"
    							 "<TunnelID>%@</TunnelID>\n"
                                 "<SortID>%@</SortID>\n"
                                 "<CheckProName>%@</CheckProName>\n"
                                 "<TypeResult1>%@</TypeResult1>\n"
                                 "<TypeResult2>%@</TypeResult2>\n"
                                 "<TypeResult3>%@</TypeResult3>\n"
                                 "<ExplainName>%@</ExplainName>\n"
                                 "<ExplainContent>%@</ExplainContent>\n"
                                 "<Remark>%@</Remark>\n"
                                 "<AddUser>%@</AddUser>\n"
                                 "<Check>%@</Check>\n"
                                 "<Record>%@</Record>\n"
                                 "<CheckAgain>%@</CheckAgain>\n"
                                 "<TbFlg>%@</TbFlg>\n"
                                 "<AddDate>%@</AddDate>\n"
                                 "<TaskID>%@</TaskID>\n"
                                 "<CheckproID>%@</CheckproID>\n"
    							 "</AddMember>\n"
    							 "</soap:Body>\n"
    							 "</soap:Envelope>\n"
                                 , strTunnelID
                                 , strSortID
                                 , strCheckProName
                                 , strTypeResult1
                                 , strTypeResult2
                                 , strTypeResult3
                                 , strExplainName
                                 , strExplainContent
                                 , strRemark
                                 , strAddUser
                                 , strChecked
                                 , strRecord
                                 , strCheckAgain
                                 , strTbFlg
                                 , strAddDate
                                 , @"1" //strTaskID;
                                 , strCheckProID
    							 ];
        CLog(@"%@",soapMessage);
    
    	//请求发送到的路径
        NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
        NSString *soapActionURL = @"http://tempuri.org/AddMember";
        NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"AddMember" SoapMessage:soapMessage];
    
        [request startAsynchronous];
        [request setDelegate:self];
        self.runningRequest = request;
}


#pragma mark - 上传第二个表Tool
-(void)SendDataToToolCheck
{
    NSString *TunnelID=@"";
    NSString *SortID=@"";
    NSString *CheckProType=@"";
    NSString *CheckProName=@"";
    NSString *SettingNum=@"";
    NSString *Unit=@"";
    NSString *IsGood=@"";
    NSString *IsBad=@"";
    NSString *BadContent=@"";
    NSString *Remark=@"";
    NSString *Check=@"";
    NSString *Record=@"";
    NSString *CheckAgain=@"";
    NSString *Date=@"";
    NSString *AddUser=@"";
    NSString *TbFlg=@"";
    NSString *AddDate=@"";
    NSString *TaskID=@"";
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM ToolCheck where Uploadflg=0" ];
    while ([resultSet next]) {
        TunnelID = [resultSet stringForColumn:@"TunnelID"];
        SortID =  [[SortID stringByAppendingString:[resultSet stringForColumn:@"SortID"]] stringByAppendingString:@"※"];
        CheckProType = [[CheckProType stringByAppendingString:[resultSet stringForColumn:@"CheckProType"]] stringByAppendingString:@"※"];
        CheckProName = [[CheckProName stringByAppendingString:[resultSet stringForColumn:@"CheckProName"]] stringByAppendingString:@"※"];
        SettingNum = [[SettingNum stringByAppendingString:[resultSet stringForColumn:@"SettingNum"]] stringByAppendingString:@"※"];
        Unit = [[Unit stringByAppendingString:[resultSet stringForColumn:@"Unit"]] stringByAppendingString:@"※"];
        IsGood = [[IsGood stringByAppendingString:[resultSet stringForColumn:@"IsGood"]] stringByAppendingString:@"※"];
        IsBad = [[IsBad stringByAppendingString:[resultSet stringForColumn:@"IsBad"]] stringByAppendingString:@"※"];
        BadContent = [[BadContent stringByAppendingString:[resultSet stringForColumn:@"BadContent"]] stringByAppendingString:@"※"];
        Remark = [[Remark stringByAppendingString:[resultSet stringForColumn:@"Remark"]] stringByAppendingString:@"※"];
        Check = [resultSet stringForColumn:@"Checked"];
        Record = [resultSet stringForColumn:@"Record"];
        CheckAgain = [resultSet stringForColumn:@"CheckAgain"];
        Date = [resultSet stringForColumn:@"Date"];
        AddUser = [resultSet stringForColumn:@"AddUser"];
        AddDate = [resultSet stringForColumn:@"AddDate"];
        TbFlg = [resultSet stringForColumn:@"TbFlg"];
        TaskID =[resultSet stringForColumn:@"TaskID"];
    }
    
    if ([SortID isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerToolCheckWithTunnelID:TunnelID SortID:SortID CheckProType:CheckProType CheckProName:CheckProName SettingNum:SettingNum Unit:Unit IsGood:IsGood IsBad:IsBad BadContent:BadContent Remark:Remark Check:Check Record:Record CheckAgain:CheckAgain Date:Date AddUser:AddUser TbFlg:TbFlg AddDate:AddDate TaskID:TaskID];
        [database close];
    }

}

-(void)SendDataToServerToolCheckWithTunnelID:(NSString*)strTunnelID SortID:(NSString*)strSortID CheckProType:(NSString*)strCheckProType CheckProName:(NSString*)strCheckProName SettingNum:(NSString*)strSettingNum Unit:(NSString*)strUnit
                                      IsGood:(NSString*)strIsGood IsBad:(NSString*)strIsBad BadContent:(NSString*)strBadContent
                                      Remark:(NSString*)strRemark Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAgain:(NSString*)strCheckAgain Date:(NSString*)strDate AddUser:(NSString*)strAddUser TbFlg:(NSString*)strTbFlg AddDate:(NSString*)strAddDate TaskID:(NSString *)strTaskID
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<AddToolCheck xmlns=\"http://tempuri.org/\">\n"
                             "<TunnelID>%@</TunnelID>\n"
                             "<SortID>%@</SortID>\n"
                             "<CheckProType>%@</CheckProType>\n"
                             "<CheckProName>%@</CheckProName>\n"
                             "<SettingNum>%@</SettingNum>\n"
                             "<Unit>%@</Unit>\n"
                             "<IsGood>%@</IsGood>\n"
                             "<IsBad>%@</IsBad>\n"
                             "<BadContent>%@</BadContent>\n"
                             "<Remark>%@</Remark>\n"
                             "<Check>%@</Check>\n"
                             "<Record>%@</Record>\n"
                             "<CheckAgain>%@</CheckAgain>\n"
                             "<Date>%@</Date>\n"
                             "<AddUser>%@</AddUser>\n"
                             "<TbFlg>%@</TbFlg>\n"
                             "<AddDate>%@</AddDate>\n"
                             "<TaskID>%@</TaskID>\n"
                             "</AddToolCheck>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strTunnelID
                             , strSortID
                             , strCheckProType
                             , strCheckProName
                             , strSettingNum
                             , strUnit
                             , strIsGood
                             , strIsBad
                             , strBadContent
                             , strRemark
                             , strCheck
                             , strRecord
                             , strCheckAgain
                             , strDate
                             , strAddUser
                             , strTbFlg
                             , strAddDate
                             , @"1"//strTaskID
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/AddToolCheck";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"AddToolCheck" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}


#pragma mark - 上传第三个表FileCheck
-(void)SendDataToFileCheck
{
    NSString *strTunnelID=@"";
    NSString *strFacilityType=@"";
    NSString *strSortID=@"";
    NSString *strFacility=@"";
    NSString *strCheckContent=@"";
    NSString *strRecordAll=@"";
    NSString *strCheckNotAll=@"";
    NSString *strRecordNo=@"";
    NSString *strRemark=@"";
    NSString *strCheck=@"";
    NSString *strRecord=@"";
    NSString *strCheckAagin=@"";
    NSString *strDate=@"";
    NSString *strAddUser=@"";
    NSString *strAddDate=@"";
    NSString *strTbFlg=@"";
    NSString *strflg=@"";
    NSString *strTaskID=@"";

    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM FileCheck where Uploadflg=0" ];
    while ([resultSet next]) {
        strTunnelID = [resultSet stringForColumn:@"TunnelID"];
        strFacilityType =  [[strFacilityType stringByAppendingString:[resultSet stringForColumn:@"FacilityType"]] stringByAppendingString:@"※"];
        strSortID = [[strSortID stringByAppendingString:[resultSet stringForColumn:@"SortID"]] stringByAppendingString:@"※"];
        strFacility = [[strFacility stringByAppendingString:[resultSet stringForColumn:@"Facility"]] stringByAppendingString:@"※"];
        strCheckContent = [[strCheckContent stringByAppendingString:[resultSet stringForColumn:@"CheckContent"]] stringByAppendingString:@"※"];
        strRecordAll = [[strRecordAll stringByAppendingString:[resultSet stringForColumn:@"RecordAll"]] stringByAppendingString:@"※"];
        strCheckNotAll = [[strCheckNotAll stringByAppendingString:[resultSet stringForColumn:@"CheckNotAll"]] stringByAppendingString:@"※"];
        strRecordNo = [[strRecordNo stringByAppendingString:[resultSet stringForColumn:@"RecordNo"]] stringByAppendingString:@"※"];
        strRemark = [[strRemark stringByAppendingString:[resultSet stringForColumn:@"Remark"]] stringByAppendingString:@"※"];
        strCheck = [resultSet stringForColumn:@"Checked"];
        strRecord = [resultSet stringForColumn:@"Record"];
        strCheckAagin = [resultSet stringForColumn:@"CheckAgain"];
        strDate = [resultSet stringForColumn:@"Date"];
        strAddUser = [resultSet stringForColumn:@"AddUser"];
        strAddDate = [resultSet stringForColumn:@"AddDate"];
        strTbFlg = [resultSet stringForColumn:@"TbFlg"];
        strflg = [[strflg stringByAppendingString:[resultSet stringForColumn:@"flg"]] stringByAppendingString:@"※"];
        strTaskID =[resultSet stringForColumn:@"TaskID"];
    }
    
    if ([strSortID isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerFileCheckWithTunnelID:strTunnelID FacilityType:strFacilityType SortID:strSortID Facility:strFacility CheckContent:strCheckContent RecordAll:strRecordAll CheckNotAll:strCheckNotAll RecordNo:strRecordNo Remark:strRemark Check:strCheck Record:strRecord CheckAgain:strCheckAagin Date:strDate AddUser:strAddUser AddDate:strAddDate TbFlg:strTbFlg flg:strflg TaskID:strTaskID];
        [database close];
    }

}

-(void)SendDataToServerFileCheckWithTunnelID:(NSString*)strTunnelID FacilityType:(NSString*)strFacilityType SortID:(NSString*)strSortID Facility:(NSString*)strFacility CheckContent:(NSString*)strCheckContent RecordAll:(NSString*)strRecordAll CheckNotAll:(NSString*)strCheckNotAll RecordNo:(NSString*)strRecordNo Remark:(NSString*)strRemark Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAgain:(NSString*)strCheckAgain Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg flg:(NSString *)strflg TaskID:(NSString *)strTaskID
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<AddFileCheck xmlns=\"http://tempuri.org/\">\n"
                             "<TunnelID>%@</TunnelID>\n"
                             "<FacilityType>%@</FacilityType>\n"
                             "<SortID>%@</SortID>\n"
                             "<Facility>%@</Facility>\n"
                             "<CheckContent>%@</CheckContent>\n"
                             "<RecordAll>%@</RecordAll>\n"
                             "<CheckNotAll>%@</CheckNotAll>\n"
                             "<RecordNo>%@</RecordNo>\n"
                             "<Remark>%@</Remark>\n"
                             "<Check>%@</Check>\n"
                             "<Record>%@</Record>\n"
                             "<CheckAgain>%@</CheckAgain>\n"
                             "<Date>%@</Date>\n"
                             "<AddUser>%@</AddUser>\n"
                             "<TbFlg>%@</TbFlg>\n"
                             "<flg>%@</flg>\n"
                             "<AddDate>%@</AddDate>\n"
                             "<TaskID>%@</TaskID>\n"
                             "</AddFileCheck>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strTunnelID
                             , strFacilityType
                             , strSortID
                             , strFacility
                             , strCheckContent
                             , strRecordAll
                             , strCheckNotAll
                             , strRecordNo
                             , strRemark
                             , strCheck
                             , strRecord
                             , strCheckAgain
                             , strDate
                             , strAddUser
                             , strTbFlg
                             , strflg
                             , strAddDate
                             , @"1"//strTaskID
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/AddFileCheck";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"AddFileCheck" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}


#pragma mark 上传第四格表Equipment
-(void)SendDataToEquipment
{
    NSString *TunnelID=@"";
    NSString *jianchaType=@"";
    NSString *SortID=@"";
    NSString *jianchaPro=@"";
    NSString *SizeParas=@"";
    NSString *Units=@"";
    NSString *TotalNum=@"";
    NSString *BadNum=@"";
    NSString *BadDate=@"";
    NSString *CompleteRate=@"";
    NSString *Remark=@"";
    NSString *Check=@"";
    NSString *Record=@"";
    NSString *CheckAgain=@"";
    NSString *Date=@"";
    NSString *AddUser=@"";
    NSString *TbFlg=@"";
    NSString *AddDate=@"";
    NSString *TaskID=@"";
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM Equipment where Uploadflg=0" ];
    while ([resultSet next]) {
        TunnelID = [resultSet stringForColumn:@"TunnelID"];
        jianchaType =  [[jianchaType stringByAppendingString:[resultSet stringForColumn:@"jianchaType"]] stringByAppendingString:@"※"];
        SortID = [[SortID stringByAppendingString:[resultSet stringForColumn:@"SortID"]] stringByAppendingString:@"※"];
        jianchaPro = [[jianchaPro stringByAppendingString:[resultSet stringForColumn:@"jianchaPro"]] stringByAppendingString:@"※"];
        SizeParas = [[SizeParas stringByAppendingString:[resultSet stringForColumn:@"SizeParas"]] stringByAppendingString:@"※"];
        Units = [[Units stringByAppendingString:[resultSet stringForColumn:@"Units"]] stringByAppendingString:@"※"];
        TotalNum = [[TotalNum stringByAppendingString:[resultSet stringForColumn:@"TotalNum"]] stringByAppendingString:@"※"];
        BadNum = [[BadNum stringByAppendingString:[resultSet stringForColumn:@"BadNum"]] stringByAppendingString:@"※"];
        BadDate = [[BadDate stringByAppendingString:[resultSet stringForColumn:@"BadDate"]] stringByAppendingString:@"※"];
        CompleteRate = [[CompleteRate stringByAppendingString:[resultSet stringForColumn:@"CompleteRate"]] stringByAppendingString:@"※"];
        Remark = [[Remark stringByAppendingString:[resultSet stringForColumn:@"Remark"]] stringByAppendingString:@"※"];
        Check = [resultSet stringForColumn:@"Checked"];
        Record = [resultSet stringForColumn:@"Record"];
        CheckAgain = [resultSet stringForColumn:@"CheckAgain"];
        Date = [resultSet stringForColumn:@"Date"];
        AddUser = [resultSet stringForColumn:@"AddUser"];
        AddDate = [resultSet stringForColumn:@"AddDate"];
        TbFlg = [resultSet stringForColumn:@"TbFlg"];
        TaskID =[resultSet stringForColumn:@"TaskID"];
    }
    
    if ([SortID isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerEquipmentWithTunnelID:TunnelID jianchaType:jianchaType SortID:SortID jianchaPro:jianchaPro SizeParas:SizeParas Units:Units TotalNum:TotalNum BadNum:BadNum BadDate:BadDate CompleteRate:CompleteRate Remark:Remark Check:Check Record:Record CheckAgain:CheckAgain Date:Date AddUser:AddUser AddDate:AddDate TbFlg:TbFlg TaskID:TaskID];
        [database close];
    }

}

-(void)SendDataToServerEquipmentWithTunnelID:(NSString*)strTunnelID jianchaType:(NSString*)strjianchaType SortID:(NSString*)strSortID jianchaPro:(NSString*)strjianchaPro SizeParas:(NSString*)strSizeParas Units:(NSString*)strUnits TotalNum:(NSString*)strTotalNum BadNum:(NSString*)strBadNum BadDate:(NSString*)strBadDate CompleteRate:(NSString*)strCompleteRate Remark:(NSString*)strRemark Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAgain:(NSString*)strCheckAgain Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg TaskID:(NSString *)strTaskID
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<AddEqueipment xmlns=\"http://tempuri.org/\">\n"
                             "<TunnelID>%@</TunnelID>\n"
                             "<jianchaType>%@</jianchaType>\n"
                             "<SortID>%@</SortID>\n"
                             "<jianchaPro>%@</jianchaPro>\n"
                             "<SizeParas>%@</SizeParas>\n"
                             "<Units>%@</Units>\n"
                             "<TotalNum>%@</TotalNum>\n"
                             "<BadNum>%@</BadNum>\n"
                             "<BadDate>%@</BadDate>\n"
                             "<CompleteRate>%@</CompleteRate>\n"
                             "<Remak>%@</Remak>\n"
                             "<Check>%@</Check>\n"
                             "<Record>%@</Record>\n"
                             "<CheckAgain>%@</CheckAgain>\n"
                             "<Date>%@</Date>\n"
                             "<AddUser>%@</AddUser>\n"
                             "<TbFlg>%@</TbFlg>\n"
                             "<AddDate>%@</AddDate>\n"
                             "<TaskID>%@</TaskID>\n"
                             "</AddEqueipment>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strTunnelID
                             , strjianchaType
                             , strSortID
                             , strjianchaPro
                             , strSizeParas
                             , strUnits
                             , strTotalNum
                             , strBadNum
                             , strBadDate
                             , strCompleteRate
                             , strRemark
                             , strCheck
                             , strRecord
                             , strCheckAgain
                             , strDate
                             , strAddUser
                             , strTbFlg
                             , strAddDate
                             , strTaskID
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/AddEqueipment";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"AddEqueipment" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}

#pragma mark 上传第五格表LightTest
-(void)SendDataToLightTest
{
    NSString *TunnelID=@"";
    NSString *TestData=@"";
    NSString *DuanMian=@"";
    NSString *CF1=@"";
    NSString *CF2=@"";
    NSString *CF3=@"";
    NSString *CF4=@"";
    NSString *CF5=@"";
    NSString *CF6=@"";
    NSString *CF7=@"";
    NSString *CF8=@"";
    NSString *CF9=@"";
    NSString *CF10=@"";
    NSString *Check=@"";
    NSString *Record=@"";
    NSString *CheckAgain=@"";
    NSString *Date=@"";
    NSString *AddUser=@"";
    NSString *TbFlg=@"";
    NSString *AddDate=@"";
    NSString *TaskID=@"";
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM LightTest where Uploadflg=0" ];
    while ([resultSet next]) {
        TunnelID = [resultSet stringForColumn:@"TunnelID"];
        TestData =  [[TestData stringByAppendingString:[resultSet stringForColumn:@"TestData"]] stringByAppendingString:@"※"];
        DuanMian = [[DuanMian stringByAppendingString:[resultSet stringForColumn:@"DuanMian"]] stringByAppendingString:@"※"];
        CF1 = [[CF1 stringByAppendingString:[resultSet stringForColumn:@"CF1"]] stringByAppendingString:@"※"];
        CF2 = [[CF2 stringByAppendingString:[resultSet stringForColumn:@"CF2"]] stringByAppendingString:@"※"];
        CF3 = [[CF3 stringByAppendingString:[resultSet stringForColumn:@"CF3"]] stringByAppendingString:@"※"];
        CF4 = [[CF4 stringByAppendingString:[resultSet stringForColumn:@"CF4"]] stringByAppendingString:@"※"];
        CF5 = [[CF5 stringByAppendingString:[resultSet stringForColumn:@"CF5"]] stringByAppendingString:@"※"];
        CF6 = [[CF6 stringByAppendingString:[resultSet stringForColumn:@"CF6"]] stringByAppendingString:@"※"];
        CF7 = [[CF7 stringByAppendingString:[resultSet stringForColumn:@"CF7"]] stringByAppendingString:@"※"];
        CF8 = [[CF8 stringByAppendingString:[resultSet stringForColumn:@"CF8"]] stringByAppendingString:@"※"];
        CF9 = [[CF9 stringByAppendingString:[resultSet stringForColumn:@"CF9"]] stringByAppendingString:@"※"];
        CF10 = [[CF10 stringByAppendingString:[resultSet stringForColumn:@"CF10"]] stringByAppendingString:@"※"];
        Check = [resultSet stringForColumn:@"Checked"];
        Record = [resultSet stringForColumn:@"Record"];
        CheckAgain = [resultSet stringForColumn:@"CheckAgain"];
        Date = [resultSet stringForColumn:@"Date"];
        AddUser = [resultSet stringForColumn:@"AddUser"];
        AddDate = [resultSet stringForColumn:@"AddDate"];
        TbFlg = [resultSet stringForColumn:@"TbFlg"];
        TaskID =[resultSet stringForColumn:@"TaskID"];
    }
    
    if ([CF1 isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerLightTestWithTunnelID:TunnelID TestData:TestData DuanMian:DuanMian CF1:CF1 CF2:CF2 CF3:CF3 CF4:CF4 CF5:CF5 CF6:CF6 CF7:CF7 CF8:CF8 CF9:CF9 CF10:CF10 Check:Check Record:Record CheckAgain:CheckAgain Date:Date AddUser:AddUser AddDate:AddDate TbFlg:TbFlg TaskID:TaskID];
        [database close];
    }
    
}

-(void)SendDataToServerLightTestWithTunnelID:(NSString*)strTunnelID TestData:(NSString*)strTestData DuanMian:(NSString*)strDuanMian CF1:(NSString*)strCF1 CF2:(NSString*)strCF2 CF3:(NSString*)strCF3 CF4:(NSString*)strCF4 CF5:(NSString*)strCF5 CF6:(NSString*)strCF6 CF7:(NSString*)strCF7 CF8:(NSString*)strCF8 CF9:(NSString*)strCF9 CF10:(NSString*)strCF10 Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAgain:(NSString*)strCheckAgain Date:(NSString*)strDate AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate TbFlg:(NSString*)strTbFlg TaskID:(NSString *)strTaskID
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<AddLightTest xmlns=\"http://tempuri.org/\">\n"
                             "<TunnelID>%@</TunnelID>\n"
                             "<TestData>%@</TestData>\n"
                             "<DuanMian>%@</DuanMian>\n"
                             "<CF1>%@</CF1>\n"
                             "<CF2>%@</CF2>\n"
                             "<CF3>%@</CF3>\n"
                             "<CF4>%@</CF4>\n"
                             "<CF5>%@</CF5>\n"
                             "<CF6>%@</CF6>\n"
                             "<CF7>%@</CF7>\n"
                             "<CF8>%@</CF8>\n"
                             "<CF9>%@</CF9>\n"
                             "<CF10>%@</CF10>\n"
                             "<Check>%@</Check>\n"
                             "<Record>%@</Record>\n"
                             "<CheckAgain>%@</CheckAgain>\n"
                             "<Date>%@</Date>\n"
                             "<AddUser>%@</AddUser>\n"
                             "<TbFlg>%@</TbFlg>\n"
                             "<AddDate>%@</AddDate>\n"
                             "<TaskID>%@</TaskID>\n"
                             "</AddLightTest>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strTunnelID
                             , strTestData
                             , strDuanMian
                             , strCF1
                             , strCF2
                             , strCF3
                             , strCF4
                             , strCF5
                             , strCF6
                             , strCF7
                             , strCF8
                             , strCF9
                             , strCF10
                             , strCheck
                             , strRecord
                             , strCheckAgain
                             , strDate
                             , strAddUser
                             , strTbFlg
                             , strAddDate
                             , strTaskID
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/AddLightTest";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"AddLightTest" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}

#pragma mark 上传第六格表LightTestTitle
-(void)SendDataToLightTestTitle
{
    NSString *TunnelID=@"";
    NSString *TXQK=@"";
    NSString *RoadWidth=@"";
    NSString *CarRWidth=@"";
    NSString *DesignSpeed=@"";
    NSString *LightType=@"";
    NSString *LightHeight=@"";
    NSString *BDFS=@"";
    NSString *TestRoad=@"";
    NSString *TestLength=@"";
    NSString *LMCL=@"";
    NSString *TaskID=@"";
    NSString *JieLun=@"";
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM LightTestTitle where Uploadflg=0" ];
    while ([resultSet next]) {
        TunnelID = [resultSet stringForColumn:@"TunnelID"];
        TXQK = [resultSet stringForColumn:@"TXQK"];
        RoadWidth = [resultSet stringForColumn:@"RoadWidth"];
        CarRWidth = [resultSet stringForColumn:@"CarRWidth"];
        DesignSpeed = [resultSet stringForColumn:@"DesignSpeed"];
        LightType = [resultSet stringForColumn:@"LightType"];
        LightHeight = [resultSet stringForColumn:@"LightHeight"];
        BDFS = [resultSet stringForColumn:@"BDFS"];
        TestRoad = [resultSet stringForColumn:@"TestRoad"];
        TestLength = [resultSet stringForColumn:@"TestLength"];
        LMCL = [resultSet stringForColumn:@"LMCL"];
        TaskID = [resultSet stringForColumn:@"TaskID"];
        JieLun = [resultSet stringForColumn:@"JieLun"];;
    }
    
    if ([TXQK isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerLightTestTitleWithTunnelID:TunnelID TXQK:TXQK RoadWidth:RoadWidth CarRWidth:CarRWidth DesignSpeed:DesignSpeed LightType:LightType LightHeight:LightHeight BDFS:BDFS TestRoad:TestRoad TestLength:TestLength LMCL:LMCL TaskID:TaskID JieLun:JieLun ];
        [database close];
    }
}

-(void)SendDataToServerLightTestTitleWithTunnelID:(NSString*)strTunnelID TXQK:(NSString*)strTXQK RoadWidth:(NSString*)strRoadWidth CarRWidth:(NSString*)strCarRWidth DesignSpeed:(NSString*)strDesignSpeed LightType:(NSString*)strLightType LightHeight:(NSString*)strLightHeight BDFS:(NSString*)strBDFS TestRoad:(NSString*)strTestRoad TestLength:(NSString*)strTestLength LMCL:(NSString*)strLMCL TaskID:(NSString*)strTaskID JieLun:(NSString*)strJieLun
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<AddLightTestTitle xmlns=\"http://tempuri.org/\">\n"
                             "<TunnelID>%@</TunnelID>\n"
                             "<TXQK>%@</TXQK>\n"
                             "<RoadWidth>%@</RoadWidth>\n"
                             "<CarRWidth>%@</CarRWidth>\n"
                             "<DesignSpeed>%@</DesignSpeed>\n"
                             "<LightType>%@</LightType>\n"
                             "<LightHeight>%@</LightHeight>\n"
                             "<BDFS>%@</BDFS>\n"
                             "<TestRoad>%@</TestRoad>\n"
                             "<TestLength>%@</TestLength>\n"
                             "<LMCL>%@</LMCL>\n"
                             "<TaskID>%@</TaskID>\n"
                             "<JieLun>%@</JieLun>\n"
                             "</AddLightTestTitle>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strTunnelID
                             , strTXQK
                             , strRoadWidth
                             , strCarRWidth
                             , strDesignSpeed
                             , strLightType
                             , strLightHeight
                             , strBDFS
                             , strTestRoad
                             , strTestLength
                             , strLMCL
                             , strTaskID
                             , strJieLun
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/AddLightTestTitle";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"AddLightTestTitle" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}

#pragma mark 上传第7格表OtherTest
-(void)SendDataToOtherTest
{
    NSString *TunnelID=@"";
    NSString *AddUser=@"";
    NSString *AddDate=@"";
    NSString *type=@"";
    NSString *Check=@"";
    NSString *Record=@"";
    NSString *CheckAgain=@"";
    NSString *Date=@"";
    NSString *TbFlg=@"";
    NSString *TaskID=@"";
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM OtherTest where Uploadflg=0" ];
    while ([resultSet next]) {
        TunnelID = [resultSet stringForColumn:@"TunnelID"];
        AddUser = [resultSet stringForColumn:@"AddUser"];
        AddDate = [resultSet stringForColumn:@"AddDate"];
        type = [resultSet stringForColumn:@"type"];
        Check = [resultSet stringForColumn:@"Check"];
        Record = [resultSet stringForColumn:@"Record"];
        CheckAgain = [resultSet stringForColumn:@"CheckAgain"];
        Date = [resultSet stringForColumn:@"Date"];
        TbFlg = [resultSet stringForColumn:@"TbFlg"];
        TaskID = [resultSet stringForColumn:@"TaskID"];
    }
    
    if ([TunnelID isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerOtherTestWithTunnelID:TunnelID AddUser:AddUser AddDate:AddDate type:type Check:Check Record:Record CheckAgain:CheckAgain Date:Date TbFlg:TbFlg TaskID:TaskID];
        [database close];
    }

}

-(void)SendDataToServerOtherTestWithTunnelID:(NSString*)strTunnelID AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate type:(NSString*)strtype Check:(NSString*)strCheck Record:(NSString*)strRecord CheckAgain:(NSString*)strCheckAgain Date:(NSString*)strDate TbFlg:(NSString*)strTbFlg TaskID:(NSString*)strTaskID
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<AddOtherTest xmlns=\"http://tempuri.org/\">\n"
                             "<TunnelID>%@</TunnelID>\n"
                             "<AddUser>%@</AddUser>\n"
                             "<Check>%@</Check>\n"
                             "<Record>%@</Record>\n"
                             "<CheckAgain>%@</CheckAgain>\n"
                             "<Date>%@</Date>\n"
                             "<AddDate>%@</AddDate>\n"
                             "<TaskID>%@</TaskID>\n"
                             "</AddOtherTest>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strTunnelID
                             , strAddUser
                             , strCheck
                             , strRecord
                             , strCheckAgain
                             , strDate
                             , strAddDate
                             , strTaskID
                            ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/AddOtherTest";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"AddOtherTest" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}

#pragma mark 上传第8格表COYanWu
-(void)SendDataToCOYanWu
{
    NSString *OtherTestID=@"";
    NSString *Station=@"";
    NSString *CO1=@"";
    NSString *CO2=@"";
    NSString *CO3=@"";
    NSString *CO4=@"";
    NSString *CO5=@"";
    NSString *AddUser=@"";
    NSString *AddDate=@"";
    NSString *flg=@"";
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM COYanWu where Uploadflg=0" ];
    while ([resultSet next]) {
        OtherTestID = [resultSet stringForColumn:@"OtherTestID"];
        Station = [[Station stringByAppendingString:[resultSet stringForColumn:@"Station"]] stringByAppendingString:@"※"];
        CO1 = [[CO1 stringByAppendingString:[resultSet stringForColumn:@"CO1"]] stringByAppendingString:@"※"];
        CO2 = [[CO2 stringByAppendingString:[resultSet stringForColumn:@"CO2"]] stringByAppendingString:@"※"];
        CO3 = [[CO3 stringByAppendingString:[resultSet stringForColumn:@"CO3"]] stringByAppendingString:@"※"];
        CO4 = [[CO4 stringByAppendingString:[resultSet stringForColumn:@"CO4"]] stringByAppendingString:@"※"];
        CO5 = [[CO5 stringByAppendingString:[resultSet stringForColumn:@"CO5"]] stringByAppendingString:@"※"];
        AddUser =  [resultSet stringForColumn:@"AddUser"];
        AddDate = [resultSet stringForColumn:@"AddDate"];
        flg =[[flg stringByAppendingString:[resultSet stringForColumn:@"flg"]] stringByAppendingString:@"※"];
    }
    
    if ([Station isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerCOYanWuWithOtherTestID:OtherTestID Station:Station CO1:CO1 CO2:CO2 CO3:CO3 CO4:CO4 CO5:CO5 AddUser:AddUser AddDate:AddDate flg:flg];
        [database close];
    }
    
}

-(void)SendDataToServerCOYanWuWithOtherTestID:(NSString*)strOtherTestID Station:(NSString*)strStation CO1:(NSString*)strCO1 CO2:(NSString*)strCO2 CO3:(NSString*)strCO3 CO4:(NSString*)strCO4 CO5:(NSString*)strCO5 AddUser:(NSString*)strAddUser AddDate:(NSString*)strAddDate flg:(NSString*)strflg
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<AddCOYanWu xmlns=\"http://tempuri.org/\">\n"
                             "<OtherTestID>%@</OtherTestID>\n"
                             "<Station>%@</Station>\n"
                             "<CO1>%@</CO1>\n"
                             "<CO2>%@</CO2>\n"
                             "<CO3>%@</CO3>\n"
                             "<CO4>%@</CO4>\n"
                             "<CO5>%@</CO5>\n"
                             "<AddUser>%@</AddUser>\n"
                             "<flgList>%@</flgList>\n"
                             "<AddDate>%@</AddDate>\n"
                             "</AddCOYanWu>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strOtherTestID
                             , strStation
                             , strCO1
                             , strCO2
                             , strCO3
                             , strCO4
                             , strCO5
                             , strAddUser
                             , strflg
                             , strAddDate
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/AddCOYanWu";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"AddCOYanWu" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}


#pragma mark 上传第9格表Jiedi
-(void)SendDataToJDTestTB
{
    NSString *OtherTestID=@"";
    NSString *TestStation=@"";
    NSString *JDXZ=@"";
    NSString *DesignValue=@"";
    NSString *TrueValue=@"";
    NSString *Remark=@"";
    NSString *AddUser=@"";
    NSString *AddDate=@"";
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM JDTestTB where Uploadflg=0" ];
    while ([resultSet next]) {
        OtherTestID = [resultSet stringForColumn:@"OtherTestID"];
        TestStation = [[TestStation stringByAppendingString:[resultSet stringForColumn:@"TestStation"]] stringByAppendingString:@"※"];
        JDXZ = [[JDXZ stringByAppendingString:[resultSet stringForColumn:@"JDXZ"]] stringByAppendingString:@"※"];
        DesignValue = [[DesignValue stringByAppendingString:[resultSet stringForColumn:@"DesignValue"]] stringByAppendingString:@"※"];
        TrueValue = [[TrueValue stringByAppendingString:[resultSet stringForColumn:@"TrueValue"]] stringByAppendingString:@"※"];
        Remark = [[Remark stringByAppendingString:[resultSet stringForColumn:@"Remark"]] stringByAppendingString:@"※"];
        AddUser =  [resultSet stringForColumn:@"AddUser"];
        AddDate = [resultSet stringForColumn:@"AddDate"];
    }
    
    if ([TestStation isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerJDTestTBWithOtherTestID:OtherTestID TestStation:TestStation JDXZ:JDXZ DesignValue:DesignValue TrueValue:TrueValue Remark:Remark AddUser:AddUser AddDate:AddDate];
        [database close];
    }
}


-(void)SendDataToServerJDTestTBWithOtherTestID:(NSString*)strOtherTestID TestStation:(NSString*)strTestStation JDXZ:(NSString*)strJDXZ DesignValue:(NSString*)strDesignValue TrueValue:(NSString*)strTrueValue Remark:(NSString*)strRemark AddUser:(NSString*)strAddUser
                                       AddDate:(NSString*)strAddDate
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<JDTestAdd xmlns=\"http://tempuri.org/\">\n"
                             "<OtherTestID>%@</OtherTestID>\n"
                             "<TestStation>%@</TestStation>\n"
                             "<JDXZ>%@</JDXZ>\n"
                             "<DesignValue>%@</DesignValue>\n"
                             "<TrueValue>%@</TrueValue>\n"
                             "<Remark>%@</Remark>\n"
                             "<AddUser>%@</AddUser>\n"
                             "<AddDate>%@</AddDate>\n"
                             "</JDTestAdd>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strOtherTestID
                             , strTestStation
                             , strJDXZ
                             , strDesignValue
                             , strTrueValue
                             , strRemark
                             , strAddUser
                             , strAddDate
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/JDTestAdd";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"JDTestAdd" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;

}


#pragma mark 上传第10格表三大系统资料检查
-(void)SendDataToSYS_FileCheck
{
    NSString *RoadID=@"";
    NSString *TaskID=@"";
    NSString *SortIDList=@"";
    NSString *CheckProList=@"";
    NSString *MainContentList=@"";
    NSString *CheckZQList=@"";
    NSString *TrueZQList=@"";
    NSString *RemarkList=@"";
    NSString *Check=@"";
    NSString *Record=@"";
    NSString *CheckAagin=@"";
    NSString *CheckDate=@"";
    NSString *AddUser=@"";
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM SYS_FileCheck where Uploadflg=0" ];
    while ([resultSet next]) {
        RoadID = [resultSet stringForColumn:@"RoadID"];
        TaskID = [resultSet stringForColumn:@"TaskID"];
        SortIDList = [[SortIDList stringByAppendingString:[resultSet stringForColumn:@"SortID"]] stringByAppendingString:@"※"];
        CheckProList = [[CheckProList stringByAppendingString:[resultSet stringForColumn:@"CheckPro"]] stringByAppendingString:@"※"];
        MainContentList = [[MainContentList stringByAppendingString:[resultSet stringForColumn:@"MainContent"]] stringByAppendingString:@"※"];
        CheckZQList = [[CheckZQList stringByAppendingString:[resultSet stringForColumn:@"CheckZQ"]] stringByAppendingString:@"※"];
        TrueZQList = [[TrueZQList stringByAppendingString:[resultSet stringForColumn:@"TrueZQ"]] stringByAppendingString:@"※"];
        RemarkList = [[RemarkList stringByAppendingString:[resultSet stringForColumn:@"Remark"]] stringByAppendingString:@"※"];
        Check = [resultSet stringForColumn:@"Checked"];
        Record = [resultSet stringForColumn:@"Record"];
        CheckAagin = [resultSet stringForColumn:@"CheckAagin"];
        CheckDate = [resultSet stringForColumn:@"CheckDate"];
        AddUser =  [resultSet stringForColumn:@"AddUser"];
        
    }
    
    if ([RoadID isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerSYS_FileCheckWithRoadID:RoadID TaskID:TaskID SortID:SortIDList CheckPro:CheckProList MainContent:MainContentList CheckZQ:CheckZQList TrueZQ:TrueZQList Remark:RemarkList Checked:Check Record:Record CheckAagin:CheckAagin CheckDate:CheckDate AddUser:AddUser];
        [database close];
    }

}

-(void)SendDataToServerSYS_FileCheckWithRoadID:(NSString*)strRoadID TaskID:(NSString*)strTaskID SortID:(NSString*)strSortID CheckPro:(NSString*)strCheckPro MainContent:(NSString*)strMainContent CheckZQ:(NSString*)strCheckZQ TrueZQ:(NSString*)strTrueZQ
                                        Remark:(NSString*)strRemark Checked:(NSString*)strChecked  Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin CheckDate:(NSString*)strCheckDate AddUser:(NSString*)strAddUser
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<SYS_FileCheck_ADD xmlns=\"http://tempuri.org/\">\n"
                             "<RoadID>%@</RoadID>\n"
                             "<TaskID>%@</TaskID>\n"
                             "<SortIDList>%@</SortIDList>\n"
                             "<CheckProList>%@</CheckProList>\n"
                             "<MainContentList>%@</MainContentList>\n"
                             "<CheckZQList>%@</CheckZQList>\n"
                             "<TrueZQList>%@</TrueZQList>\n"
                             "<RemarkList>%@</RemarkList>\n"
                             "<Check>%@</Check>\n"
                             "<Record>%@</Record>\n"
                             "<CheckAagin>%@</CheckAagin>\n"
                             "<CheckDate>%@</CheckDate>\n"
                             "<AddUser>%@</AddUser>\n"
                             "</SYS_FileCheck_ADD>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strRoadID
                             , strTaskID
                             , strSortID
                             , strCheckPro
                             , strMainContent
                             , strCheckZQ
                             , strTrueZQ
                             , strRemark
                             , strChecked
                             , strRecord
                             , strCheckAagin
                             , strCheckDate
                             , strAddUser
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/SYS_FileCheck_ADD";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"SYS_FileCheck_ADD" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}

#pragma mark 上传第11格汽车出入口检查
-(void)SendDataToSYS_CarCheck
{
    NSString *RoadID=@"";
    NSString *TaskID=@"";
    NSString *SortIDList=@"";
    NSString *CheckProList=@"";
    NSString *UnitList=@"";
    NSString *Num1List=@"";
    NSString *Num2List=@"";
    NSString *Num3List=@"";
    NSString *Num4List=@"";
    NSString *Num5List=@"";
    NSString *Num6List=@"";
    NSString *RemarkList=@"";
    NSString *Check=@"";
    NSString *Record=@"";
    NSString *CheckAagin=@"";
    NSString *CheckDate=@"";
    NSString *AddUser=@"";
    NSString *flgList=@"";
    
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM SYS_CarCheck where Uploadflg=0" ];
    while ([resultSet next]) {
        RoadID = [resultSet stringForColumn:@"RoadID"];
        TaskID = [resultSet stringForColumn:@"TaskID"];
        SortIDList = [[SortIDList stringByAppendingString:[resultSet stringForColumn:@"SortID"]] stringByAppendingString:@"※"];
        CheckProList = [[CheckProList stringByAppendingString:[resultSet stringForColumn:@"CheckPro"]] stringByAppendingString:@"※"];
        UnitList = [[UnitList stringByAppendingString:[resultSet stringForColumn:@"Unit"]] stringByAppendingString:@"※"];
        Num1List = [[Num1List stringByAppendingString:[resultSet stringForColumn:@"Num1"]] stringByAppendingString:@"※"];
        Num2List = [[Num2List stringByAppendingString:[resultSet stringForColumn:@"Num2"]] stringByAppendingString:@"※"];
        Num3List = [[Num3List stringByAppendingString:[resultSet stringForColumn:@"Num3"]] stringByAppendingString:@"※"];
        Num4List = [[Num4List stringByAppendingString:[resultSet stringForColumn:@"Num4"]] stringByAppendingString:@"※"];
        Num5List = [[Num5List stringByAppendingString:[resultSet stringForColumn:@"Num5"]] stringByAppendingString:@"※"];
        Num6List = [[Num6List stringByAppendingString:[resultSet stringForColumn:@"Num6"]] stringByAppendingString:@"※"];
        RemarkList = [[RemarkList stringByAppendingString:[resultSet stringForColumn:@"Remark"]] stringByAppendingString:@"※"];
        Check = [resultSet stringForColumn:@"Checked"];
        Record = [resultSet stringForColumn:@"Record"];
        CheckAagin = [resultSet stringForColumn:@"CheckAagin"];
        CheckDate = [resultSet stringForColumn:@"CheckDate"];
        AddUser =  [resultSet stringForColumn:@"AddUser"];
        flgList = [[flgList stringByAppendingString:[resultSet stringForColumn:@"flg"]] stringByAppendingString:@"※"];
    }
    
    if ([RoadID isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerSYS_CarCheckCheckWithRoadID:RoadID TaskID:TaskID SortID:SortIDList CheckPro:CheckProList Unit:UnitList Num1:Num1List Num2:Num2List Num3:Num3List Num4:Num4List Num5:Num5List Num6:Num6List Remark:RemarkList Checked:Check Record:Record CheckAagin:CheckAagin CheckDate:CheckDate AddUser:AddUser flg:flgList ];
        [database close];
    }
    
}

-(void)SendDataToServerSYS_CarCheckCheckWithRoadID:(NSString*)strRoadID TaskID:(NSString*)strTaskID SortID:(NSString*)strSortID CheckPro:(NSString*)strCheckPro Unit:(NSString*)strUnit Num1:(NSString*)strNum1 Num2:(NSString*)strNum2
                                              Num3:(NSString*)strNum3 Num4:(NSString*)strNum4  Num5:(NSString*)strNum5 Num6:(NSString*)strNum6 Remark:(NSString*)strRemark Checked:(NSString*)strChecked Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin CheckDate:(NSString*)strCheckDate AddUser:(NSString*)strAddUser flg:(NSString*)strflg
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<SYS_CarCheck_ADD xmlns=\"http://tempuri.org/\">\n"
                             "<TaskID>%@</TaskID>\n"
                             "<RoadID>%@</RoadID>\n"
                             "<SortIDList>%@</SortIDList>\n"
                             "<CheckProList>%@</CheckProList>\n"
                             "<UnitList>%@</UnitList>\n"
                             "<Num1List>%@</Num1List>\n"
                             "<Num2List>%@</Num2List>\n"
                             "<Num3List>%@</Num3List>\n"
                             "<Num4List>%@</Num4List>\n"
                             "<Num5List>%@</Num5List>\n"
                             "<Num6List>%@</Num6List>\n"
                             "<RemarkList>%@</RemarkList>\n"
                             "<Check>%@</Check>\n"
                             "<Record>%@</Record>\n"
                             "<CheckAgain>%@</CheckAgain>\n"
                             "<CheckDate>%@</CheckDate>\n"
                             "<AddUser>%@</AddUser>\n"
                             "<flgList>%@</flgList>\n"
                             "</SYS_CarCheck_ADD>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strTaskID
                             , strRoadID
                             , strSortID
                             , strCheckPro
                             , strUnit
                             , strNum1
                             , strNum2
                             , strNum3
                             , strNum4
                             , strNum5
                             , strNum6
                             , strRemark
                             , strChecked
                             , strRecord
                             , strCheckAagin
                             , strCheckDate
                             , strAddUser
                             , strflg
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/SYS_CarCheck_ADD";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"SYS_CarCheck_ADD" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}


#pragma mark 上传第12格表三大系统接地测试资料检查
-(void)SendDataToSYS_JidiTest
{
    NSString *RoadID=@"";
    NSString *TaskID=@"";
    NSString *SortIDList=@"";
    NSString *TestStationList=@"";
    NSString *TestValueList=@"";
    NSString *RemarkList=@"";
    NSString *Check=@"";
    NSString *Record=@"";
    NSString *CheckAagin=@"";
    NSString *CheckDate=@"";
    NSString *AddUser=@"";
    
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM SYS_JDTest where Uploadflg=0" ];
    while ([resultSet next]) {
        RoadID = [resultSet stringForColumn:@"RoadID"];
        TaskID = [resultSet stringForColumn:@"TaskID"];
        SortIDList = [[SortIDList stringByAppendingString:[resultSet stringForColumn:@"SortID"]] stringByAppendingString:@"※"];
        TestStationList = [[TestStationList stringByAppendingString:[resultSet stringForColumn:@"TestStation"]] stringByAppendingString:@"※"];
        TestValueList = [[TestValueList stringByAppendingString:[resultSet stringForColumn:@"TestValue"]] stringByAppendingString:@"※"];
        RemarkList = [[RemarkList stringByAppendingString:[resultSet stringForColumn:@"Remark"]] stringByAppendingString:@"※"];
        Check = [resultSet stringForColumn:@"Checked"];
        Record = [resultSet stringForColumn:@"Record"];
        CheckAagin = [resultSet stringForColumn:@"CheckAagin"];
        CheckDate = [resultSet stringForColumn:@"CheckDate"];
        AddUser =  [resultSet stringForColumn:@"AddUser"];
    }
    
    if ([RoadID isEqualToString:@""]) {
        [database close];
        [self LoadDBMemberTableAndSendServer];
    }
    else
    {
        [self SendDataToServerSYS_JDTestWithRoadID:RoadID TaskID:TaskID SortID:SortIDList TestStation:TestStationList TestValue:TestValueList Remark:RemarkList Checked:Check Record:Record CheckAagin:CheckAagin CheckDate:CheckDate AddUser:AddUser];
        [database close];
    }
}


-(void)SendDataToServerSYS_JDTestWithRoadID:(NSString*)strRoadID TaskID:(NSString*)strTaskID SortID:(NSString*)strSortID TestStation:(NSString*)strTestStation TestValue:(NSString*)strTestValue  Remark:(NSString*)strRemark Checked:(NSString*)strChecked Record:(NSString*)strRecord CheckAagin:(NSString*)strCheckAagin CheckDate:(NSString*)strCheckDate AddUser:(NSString*)strAddUser
{
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<SYS_JDTest_ADD xmlns=\"http://tempuri.org/\">\n"
                             "<RoadID>%@</RoadID>\n"
                             "<TaskID>%@</TaskID>\n"
                             "<SortIDList>%@</SortIDList>\n"
                             "<TestStationList>%@</TestStationList>\n"
                             "<TestValueList>%@</TestValueList>\n"
                             "<RemarkList>%@</RemarkList>\n"
                             "<Check>%@</Check>\n"
                             "<Record>%@</Record>\n"
                             "<CheckAgain>%@</CheckAgain>\n"
                             "<CheckDate>%@</CheckDate>\n"
                             "<AddUser>%@</AddUser>\n"
                             "</SYS_JDTest_ADD>\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             , strRoadID
                             , strTaskID
                             , strSortID
                             , strTestStation
                             , strTestValue
                             , strRemark
                             , strChecked
                             , strRecord
                             , strCheckAagin
                             , strCheckDate
                             , strAddUser
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/SYS_JDTest_ADD";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"SYS_JDTest_ADD" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;

}


#pragma mark NetWebServiceRequestDelegate Methods
- (void)netRequestStarted:(NetWebServiceRequest *)request
{
    // 上传窗口
    CLog(@"Start");
}


- (void)netRequestFinished:(NetWebServiceRequest *)request
      finishedInfoToResult:(NSString *)result
              responseData:(NSData *)requestData{
    
    if (![database open]) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"数据库已经关闭，更新MenberCheckID主键时候无法打开数据库，更新失败" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [database close];
        [alert show];
        return;
    }
    
    // 判断是否是数字，如返回值是数字则表明是上传数据
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSNumber* resultingNumber = [numberFormatter numberFromString:result];
    
    // 上传本机数据到远程数据库，返回结果处理
    if(resultingNumber != nil)
    {
        [self UploadDataWithResult:result];
        return;
    }
    
    GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithXMLString:result options:0 error:nil];
    //获取根节点
    GDataXMLElement *rootElement = [doc rootElement];
    //获取根节点下的节点（Users）
    NSArray *Ele = [rootElement elementsForName:@"Users"];
    
    // 获取操作人员信息
    if(Ele.count>0 && [result length]>0)
    {
        [self insertOptionerDataWithResult:result];
        return;
    }
    
    // 获取任务信息
    NSArray *ETask = [rootElement elementsForName:@"Task"];
    if(ETask.count>0 && [result length]>0)
    {
        [self insertTaskDataWithResult:result];
        return;
    }
    
    // 获取养护单位信息
    NSArray *E1 = [rootElement elementsForName:@"ManagerUnit"];
    if(E1.count>0 && [result length]>0)
    {
        [self insertBusinessinfoDataWithResult:result];
        return;
    }
    
    // 获取养护单位信息
    NSArray *E2 = [rootElement elementsForName:@"RoadBelong"];
    if(E2.count>0 && [result length]>0)
    {
        [self insertRoadDataWithResult:result];
        return;
    }
    
    // 获取隧道信息
    NSArray *E3 = [rootElement elementsForName:@"Tunnel"];
    if(E3.count>0 && [result length]>0)
    {
        [self insertTunnelDataWithResult:result];
    }

}

// 上传本机数据到远程数据库，返回结果处理
-(void)UploadDataWithResult:(NSString*)result
{
    [database beginTransaction]; // 启动事物
    BOOL isRollBack = NO;
    BOOL insert;
    
    switch (cnt) {
        case 1:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"养护人员MemberCheck没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE MemberCheck SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"更新MemberCheck数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 2:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"养护工具ToolCheck没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE ToolCheck SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"更新ToolCheck数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 3:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查FileCheck没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE FileCheck SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查FileCheck数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 4:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查Equipment没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE Equipment SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查Equipment数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 5:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查LightTest没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE LightTest SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查LightTest数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 6:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查LightTestTitle没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE LightTestTitle SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查LightTestTitle数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 7:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查OtherTest没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE OtherTest SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查OtherTest数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 8:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查COYanWu没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE COYanWu SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查COYanWu数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 9:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查JDTestTB没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE JDTestTB SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查JDTestTB数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 10:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查SYS_FileCheck没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE SYS_FileCheck SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查SYS_FileCheck数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 11:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查SYS_CarCheck没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE SYS_CarCheck SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查SYS_CarCheck数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        case 12:
            @try {
                // 更新数据库
                if([result isEqualToString:@"0"])
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查SYS_JDTest没有可更新的数据" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }else{
                    insert =  [database executeUpdate:@"UPDATE SYS_JDTest SET Uploadflg=? " , @"1" ];
                }
            }
            @catch (NSException *exception) {
                isRollBack = YES;
                [database rollback];
                if(insert==false)
                {
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"资料检查SYS_JDTest数据失败，请从新启动应用程序再次更新" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                    [alert show];
                }
            }
            @finally {
                if (!isRollBack && insert) {
                    [database commit];
                }
            }
            [database close];
            [self LoadDBMemberTableAndSendServer];
            break;
            
        default:
            break;
    }
}

- (void)netRequestFailed:(NetWebServiceRequest *)request didRequestError:(NSError *)error{
    
    // 上床失败
    CLog(@"%@",error);
    [self LoadDBMemberTableAndSendServer];
}

//=================================================获取操作人员信息=============================================

- (IBAction)btnGetOptionData:(id)sender {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<UserGetAll xmlns=\"http://tempuri.org/\" />\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/UserGetAll";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"UserGetAll" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
    
}

-(BOOL)insertOptionerDataWithResult:(NSString *)strResult
{
    //使用NSData对象初始化
    NSError *error=nil;
    NSString *strUserID;
    NSString *strUserPWD;
    NSString *strUserName;
    NSString *strSFZ;
    NSString *strPhone;
    BOOL blrest = false;
    
    GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithXMLString:strResult options:0 error:&error];
    //获取根节点
    GDataXMLElement *rootElement = [doc rootElement];
    //获取根节点下的节点（Users）
    NSArray *users = [rootElement elementsForName:@"Users"];
    
    //插入数据库
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"更新人员数据表，数据库无法打开" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        blrest = false;
        return blrest;
    }
    
    if(users.count>0)
    {
        // 首先删除本机user表数据
        // 人员
        [database executeUpdate:@"delete from UserTb"];
    }
    
    for (GDataXMLElement *user in users) {
        //获取节点的值
        GDataXMLElement *UserIDElement = [[user elementsForName:@"UserID"] objectAtIndex:0];
        strUserID = [UserIDElement stringValue];

        GDataXMLElement *UserPWDElement = [[user elementsForName:@"UserPWD"] objectAtIndex:0];
        strUserPWD = [UserPWDElement stringValue];
        
        GDataXMLElement *UserNameElement = [[user elementsForName:@"UserName"] objectAtIndex:0];
        strUserName = [UserNameElement stringValue];
        
        GDataXMLElement *SFZElement = [[user elementsForName:@"SFZ"] objectAtIndex:0];
        strSFZ = [SFZElement stringValue];
        
        GDataXMLElement *PhoneElement = [[user elementsForName:@"Phone"] objectAtIndex:0];
        strPhone = [PhoneElement stringValue];
        
        //  插入数据
        [database beginTransaction]; // 启动事物
        BOOL isRollBack = NO;
        BOOL insert;
        @try {
            insert = [database executeUpdate:@"insert into UserTb (UserID,UserPWD,UserName ,SFZ,Phone,AddUser) values (?,?,?,?,?,?)" , strUserID , strUserPWD  , strUserName , strSFZ , strPhone,@"admin"];
        }
        @catch (NSException *exception) {
            isRollBack = YES;
            [database rollback];
            blrest = false;
            [ErrLog setOptResult:false];
            [ErrLog setexception:@"插入数据错误:UserTb"];
            [ErrLog setOptTitle:@"错误"];
            return false;
        }
        @finally {
            if (!isRollBack && insert) {
                [database commit];
                blrest = true;
            }
            else
            {
                blrest = false;
                [ErrLog setOptResult:false];
                [ErrLog setexception:@"插入数据错误:UserTb"];
                [ErrLog setOptTitle:@"错误"];
                return false;
            }
        }
    }
    [database close];
    return blrest;
}


//===========================================================获取所有任务==============================================================

- (IBAction)GetTaskData:(id)sender {
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<TaskGetAllToString xmlns=\"http://tempuri.org/\" />\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/TaskGetAllToString";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"TaskGetAllToString" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}


-(BOOL)insertTaskDataWithResult:(NSString *)strResult
{
    //使用NSData对象初始化
    NSError *error=nil;
    NSString *strTaskID;
    NSString *strTaskTitle;
    NSString *strRemark;
    NSString *strflg;
    BOOL blrest = false;
    
    GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithXMLString:strResult options:0 error:&error];
    //获取根节点
    GDataXMLElement *rootElement = [doc rootElement];
    //获取根节点下的节点（Users）
    NSArray *users = [rootElement elementsForName:@"Task"];
    
    //插入数据库
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"更新任务数据表，数据库无法打开" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        blrest = false;
        return blrest;
    }
    
    if(users.count>0)
    {
        // 首先删除本机user表数据
        // 人员
        [database executeUpdate:@"delete from Task"];
    }
    
    for (GDataXMLElement *user in users) {
        //获取节点的值
        GDataXMLElement *TaskIDElement = [[user elementsForName:@"TaskID"] objectAtIndex:0];
        strTaskID = [TaskIDElement stringValue];
        
        GDataXMLElement *TaskTitleElement = [[user elementsForName:@"TaskTitle"] objectAtIndex:0];
        strTaskTitle = [TaskTitleElement stringValue];
        
        GDataXMLElement *RemarkElement = [[user elementsForName:@"Remark"] objectAtIndex:0];
        strRemark = [RemarkElement stringValue];
        
        GDataXMLElement *flgElement = [[user elementsForName:@"flg"] objectAtIndex:0];
        strflg = [flgElement stringValue];
        //  插入数据
        [database beginTransaction]; // 启动事物
        BOOL isRollBack = NO;
        BOOL insert;
        @try {
            insert = [database executeUpdate:@"insert into Task (TaskID,TaskTitle,Remark ,flg) values (?,?,?,?)" , strTaskID , strTaskTitle  , strRemark , strflg];
        }
        @catch (NSException *exception) {
            isRollBack = YES;
            [database rollback];
            blrest = false;
            [ErrLog setOptResult:false];
            [ErrLog setexception:@"插入数据错误:Task"];
            [ErrLog setOptTitle:@"错误"];
            return false;
        }
        @finally {
            if (!isRollBack && insert) {
                [database commit];
                blrest = true;
            }
            else
            {
                blrest = false;
                [ErrLog setOptResult:false];
                [ErrLog setexception:@"插入数据错误:Task"];
                [ErrLog setOptTitle:@"错误"];
                return false;
            }
        }
    }
    [database close];
    return blrest;
}





//=======================================================获取道路信息===================================

- (IBAction)getRoadInfo:(UIButton *)sender {
    
    [self getBusinessinfo];
    
    [self getroadinfo];
    
    [self getTunnelinfo];

}

// 获取所有管理单位
-(void)getBusinessinfo
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<ManagerUnit_getAllManagerUnitToString xmlns=\"http://tempuri.org/\" />\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://183.224.76.199:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/ManagerUnit_getAllManagerUnitToString";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"ManagerUnit_getAllManagerUnitToString" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
}

-(BOOL)insertBusinessinfoDataWithResult:(NSString *)strResult
{
    //使用NSData对象初始化
    NSError *error=nil;
    NSString *strManagerUnitID;
    NSString *strManagerUnitName;
    BOOL blrest = false;
    
    GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithXMLString:strResult options:0 error:&error];
    //获取根节点
    GDataXMLElement *rootElement = [doc rootElement];
    //获取根节点下的节点（ManagerUnit）
    NSArray *users = [rootElement elementsForName:@"ManagerUnit"];
    
    //插入数据库
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"更新人员数据表，数据库无法打开" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        blrest = false;
        return blrest;
    }
    
    if(users.count>0)
    {
        // 首先删除本机ManagerUnit表数据
        [database executeUpdate:@"delete from ManagerUnit"];
    }
    
    for (GDataXMLElement *user in users) {
        //获取节点的值
        GDataXMLElement *ManagerUnitIDElement = [[user elementsForName:@"ManagerUnitID"] objectAtIndex:0];
        strManagerUnitID = [ManagerUnitIDElement stringValue];
        
        GDataXMLElement *ManagerUnitNameElement = [[user elementsForName:@"ManagerUnitName"] objectAtIndex:0];
        strManagerUnitName = [ManagerUnitNameElement stringValue];
        
        //  插入数据
        [database beginTransaction]; // 启动事物
        BOOL isRollBack = NO;
        BOOL insert;
        @try {
            insert = [database executeUpdate:@"insert into ManagerUnit (ManagerUnitID,ManagerUnitName) values (?,?)" , strManagerUnitID , strManagerUnitName ];
        }
        @catch (NSException *exception) {
            isRollBack = YES;
            [database rollback];
            blrest = false;
            [ErrLog setOptResult:false];
            [ErrLog setexception:@"插入数据错误:ManagerUnit"];
            [ErrLog setOptTitle:@"错误"];
            return false;
        }
        @finally {
            if (!isRollBack && insert) {
                [database commit];
                blrest = true;
            }
            else
            {
                blrest = false;
                [ErrLog setOptResult:false];
                [ErrLog setexception:@"插入数据错误:ManagerUnit"];
                [ErrLog setOptTitle:@"错误"];
                return false;
            }
        }
    }
    [database close];
    return blrest;
}

// 获取道路信息
-(void)getroadinfo
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<RoadBelongGetAllToString xmlns=\"http://tempuri.org/\" />\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/RoadBelongGetAllToString";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"RoadBelongGetAllToString" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;

}

-(BOOL)insertRoadDataWithResult:(NSString *)strResult
{
    //使用NSData对象初始化
    NSError *error=nil;
    NSString *strRoadID;
    NSString *strManagerUnitID;
    NSString *strRoadName;
    BOOL blrest = false;
    
    GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithXMLString:strResult options:0 error:&error];
    //获取根节点
    GDataXMLElement *rootElement = [doc rootElement];
    //获取根节点下的节点（ManagerUnit）
    NSArray *users = [rootElement elementsForName:@"RoadBelong"];
    
    //插入数据库
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"更新人员数据表，数据库无法打开" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        blrest = false;
        return blrest;
    }
    
    if(users.count>0)
    {
        // 首先删除本机ManagerUnit表数据
        [database executeUpdate:@"delete from RoadBelong"];
    }
    
    for (GDataXMLElement *user in users) {
        //获取节点的值
        GDataXMLElement *RoadIDElement = [[user elementsForName:@"RoadID"] objectAtIndex:0];
        strRoadID = [RoadIDElement stringValue];
        
        GDataXMLElement *ManagerUnitIDElement = [[user elementsForName:@"ManagerUnitID"] objectAtIndex:0];
        strManagerUnitID = [ManagerUnitIDElement stringValue];
        
        GDataXMLElement *RoadNameElement = [[user elementsForName:@"RoadName"] objectAtIndex:0];
        strRoadName = [RoadNameElement stringValue];
        
        //  插入数据
        [database beginTransaction]; // 启动事物
        BOOL isRollBack = NO;
        BOOL insert;
        @try {
            insert = [database executeUpdate:@"insert into RoadBelong (RoadID,ManagerUnitID,RoadName) values (?,?,?)" , strRoadID , strManagerUnitID,  strRoadName];
        }
        @catch (NSException *exception) {
            isRollBack = YES;
            [database rollback];
            blrest = false;
            [ErrLog setOptResult:false];
            [ErrLog setexception:@"插入数据错误:RoadBelong"];
            [ErrLog setOptTitle:@"错误"];
            return false;
        }
        @finally {
            if (!isRollBack && insert) {
                [database commit];
                blrest = true;
            }
            else
            {
                blrest = false;
                [ErrLog setOptResult:false];
                [ErrLog setexception:@"插入数据错误:RoadBelong"];
                [ErrLog setOptTitle:@"错误"];
                return false;
            }
        }
    }
    [database close];
    return blrest;
}

// 获取隧道
-(void)getTunnelinfo
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return;
    }
    
    NSString *soapMessage = [NSString stringWithFormat:
                             @"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n"
                             "<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">\n"
                             "<soap:Body>\n"
                             "<getAllTunnelToString xmlns=\"http://tempuri.org/\" />\n"
                             "</soap:Body>\n"
                             "</soap:Envelope>\n"
                             ];
    
    CLog(@"%@",soapMessage);
    
    //请求发送到的路径
    NSString *url = @"http://211.149.150.98:8011/YHWebService.asmx";
    NSString *soapActionURL = @"http://tempuri.org/getAllTunnelToString";
    NetWebServiceRequest *request = [NetWebServiceRequest serviceRequestUrl:url SOAPActionURL:soapActionURL ServiceMethodName:@"getAllTunnelToString" SoapMessage:soapMessage];
    
    [request startAsynchronous];
    [request setDelegate:self];
    self.runningRequest = request;
    
}

-(BOOL)insertTunnelDataWithResult:(NSString *)strResult
{
    //使用NSData对象初始化
    NSError *error=nil;
    NSString *strTunnelID;
    NSString *strRoadID;
    NSString *strTunnelName;
    NSString *strCheckStation;
    NSString *strProtectUnit;
    NSString *strRoadLevel;
    
    BOOL blrest = false;
    
    GDataXMLDocument *doc = [[GDataXMLDocument alloc] initWithXMLString:strResult options:0 error:&error];
    //获取根节点
    GDataXMLElement *rootElement = [doc rootElement];
    //获取根节点下的节点（ManagerUnit）
    NSArray *users = [rootElement elementsForName:@"Tunnel"];
    
    //插入数据库
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误" message:@"更新人员数据表，数据库无法打开" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        blrest = false;
        return blrest;
    }
    
    if(users.count>0)
    {
        // 首先删除本机ManagerUnit表数据
        [database executeUpdate:@"delete from Tunnel"];
    }
    
    for (GDataXMLElement *user in users) {
        //获取节点的值
        GDataXMLElement *RoadIDElement = [[user elementsForName:@"RoadID"] objectAtIndex:0];
        strRoadID = [RoadIDElement stringValue];
        
        GDataXMLElement *TunnelIDElement = [[user elementsForName:@"TunnelID"] objectAtIndex:0];
        strTunnelID = [TunnelIDElement stringValue];
        
        GDataXMLElement *TunnelNameElement = [[user elementsForName:@"TunnelName"] objectAtIndex:0];
        strTunnelName = [TunnelNameElement stringValue];
        
        GDataXMLElement *CheckStationElement = [[user elementsForName:@"CheckStation"] objectAtIndex:0];
        strCheckStation = [CheckStationElement stringValue];
        
        GDataXMLElement *ProtectUnitElement = [[user elementsForName:@"ProtectUnit"] objectAtIndex:0];
        strProtectUnit = [ProtectUnitElement stringValue];
        
        GDataXMLElement *RoadLevelElement = [[user elementsForName:@"RoadLevel"] objectAtIndex:0];
        strRoadLevel = [RoadLevelElement stringValue];
        
        //  插入数据
        [database beginTransaction]; // 启动事物
        BOOL isRollBack = NO;
        BOOL insert;
        @try {
            insert = [database executeUpdate:@"insert into Tunnel (TunnelID,RoadID,TunnelName,CheckStation,ProtectUnit,RoadLevel) values (?,?,?,?,?,?)" , strTunnelID , strRoadID,  strTunnelName , strCheckStation , strProtectUnit , strRoadLevel];
        }
        @catch (NSException *exception) {
            isRollBack = YES;
            [database rollback];
            blrest = false;
            [ErrLog setOptResult:false];
            [ErrLog setexception:@"插入数据错误:Tunnel"];
            [ErrLog setOptTitle:@"错误"];
            return false;
        }
        @finally {
            if (!isRollBack && insert) {
                [database commit];
                blrest = true;
            }
            else
            {
                blrest = false;
                [ErrLog setOptResult:false];
                [ErrLog setexception:@"插入数据错误:Tunnel"];
                [ErrLog setOptTitle:@"错误"];
                return false;
            }
        }
    }
    [database close];
    return blrest;

}












@end
