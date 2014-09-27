//
//  CheckerViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-6-9.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "CheckerViewController.h"


@interface CheckerViewController ()

@end

@implementation CheckerViewController
@synthesize btnjiance;
@synthesize btnFuhe;
@synthesize btnJilu;

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


- (IBAction)btnJiance:(UIButton *)sender {
    alert = [[DXAlertView alloc] initWithTitle:@"用户身份验证" contentText:@"" leftButtonTitle:nil rightButtonTitle:@"确定"];
    alert.strflg = @"jiance";
    alert.btnOKDelegate = self;
    [alert show];
}

- (IBAction)btnJilu:(UIButton *)sender {
    alert = [[DXAlertView alloc] initWithTitle:@"用户身份验证" contentText:@"" leftButtonTitle:nil rightButtonTitle:@"确定"];
    
    alert.strflg = @"jilu";
    alert.btnOKDelegate = self;
    [alert show];
}


- (IBAction)btnFuhe:(UIButton *)sender {
    alert = [[DXAlertView alloc] initWithTitle:@"用户身份验证" contentText:@"" leftButtonTitle:nil rightButtonTitle:@"确定"];
    alert.strflg = @"fuhe";
    alert.btnOKDelegate = self;
    [alert show];
}

-(void)clickedOK:(NSString *)UserName
{
    self.btnjiance.titleLabel.text = UserName;
}

-(void)jiluClick:(NSString *)UserName
{
    self.btnJilu.titleLabel.text = UserName;
}

-(void)fuheClick:(NSString *)UserName
{
    self.btnFuhe.titleLabel.text = UserName;
}

-(NSString *)getjianceName
{
    return self.btnjiance.titleLabel.text;
}
-(NSString *)getjiluName
{
    return self.btnJilu.titleLabel.text;
}
-(NSString *)getfuheName
{
    return self.btnFuhe.titleLabel.text;
}





@end
