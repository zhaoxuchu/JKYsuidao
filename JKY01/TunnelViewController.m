//
//  TunnelViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-24.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "TunnelViewController.h"

@interface TunnelViewController ()

@end

@implementation TunnelViewController
@synthesize labTitle;
@synthesize labTitle2;
@synthesize bgview;
@synthesize labGuanlidanwei;
@synthesize labJianchadidian;
@synthesize labLuduandengji;
@synthesize labSuidaoName;
@synthesize labSuoshuluduan;
@synthesize labWeihudanwei;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        bgview.layer.masksToBounds = YES;
        bgview.layer.cornerRadius = 6.0;
        
        
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

@end
