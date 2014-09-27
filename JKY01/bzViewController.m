//
//  bzViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-18.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "bzViewController.h"
#import "UserTbDAC.h"
#import "UserInfo.h"
#import "TaskInfo.h"
#import "TLAlertView.h"
#import "ClearTableAllData.h"
#import "ErrLog.h"
#import "NetWebServiceRequest.h"
#import "GDataXMLNode.h"

@implementation bzViewController
@synthesize sc;
@synthesize btnOK;
@synthesize testview;
@synthesize txtName , txtPsd;
@synthesize pickviewTask;
@synthesize muAryTask;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// 获取任务
   self.muAryTask =  [self getTaskData];
    
    // 设置选择隧道
    [self addTunnelview];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnAddtoServer:(UIButton *)sender {
    
    
    SystemSetViewController *mfrom = [[SystemSetViewController alloc] initWithNibName:@"SystemSetViewController" bundle:nil];
    
    [mfrom setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
    [self presentModalViewController:(UIViewController *)mfrom animated:YES];

}


- (IBAction)btnOK:(UIButton *)sender {
    
    UserTbDAC *user = [UserTbDAC alloc];
    
    bool bl = [user UserLoginWithUserName:txtName.text Psd:txtPsd.text];
    
    if(bl == true)
    {
        [UserInfo setUserName:txtName.text];
        
        [TaskInfo setTaskID:[muAryTask objectAtIndex:[pickviewTask selectedRowInComponent:0]]];
        
        MianFromViewController *mfrom = [[MianFromViewController alloc] initWithNibName:@"MianFromViewController" bundle:nil];
        
        [mfrom setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
        [self presentModalViewController:(UIViewController *)mfrom animated:YES];
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"错误"  message:@"输入的用户名与密码错误，请从新输入" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    }
    
}

-(NSMutableArray *)getTaskData
{
    NSString *TaskID=@"";
    NSString *TaskTitle=@"";
    NSMutableArray *maryDatasource = [[NSMutableArray alloc] init];
    maryTaskDric = [[NSMutableArray alloc] init];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentPath = [paths objectAtIndex:0];
    NSString *dbPath = [documentPath stringByAppendingPathComponent:@"JKYDB.db"];
    
    database = [FMDatabase databaseWithPath:dbPath];
    if (![database open]) {
        return nil;
    }
    
    resultSet = [database executeQuery:@"SELECT * FROM Task " ];
    while ([resultSet next]) {
        TaskID = [resultSet stringForColumn:@"TaskID"];
        TaskTitle = [resultSet stringForColumn:@"TaskTitle"];
        
        [maryDatasource addObject:TaskTitle];
        
        NSArray *ary = [[NSArray alloc] initWithObjects:TaskTitle,TaskID, nil];
        [maryTaskDric addObject:ary];
    }
    
    return maryDatasource;
    
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [muAryTask count];
}

#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row             forComponent:(NSInteger)component {
    return [muAryTask objectAtIndex:row];
}

//===========================================================================================
//                        选择隧道 start                                                     =
//===========================================================================================
-(void)addTunnelview
{
    picker = [[PickerViewController alloc] initWithNibName:@"PickerViewController" bundle:nil];
    
    picker.view.frame = CGRectMake(0,0,800,250);
    [self addChildViewController:picker];
    self.view.clipsToBounds = true;
    
    [self.view addSubview:picker.view];
}

//===========================================================================================
//                        选择隧道 end                                                     =
//===========================================================================================




















































@end
