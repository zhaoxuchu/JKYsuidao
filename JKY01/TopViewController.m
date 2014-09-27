//
//  TopViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-18.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "TopViewController.h"

@interface TopViewController ()


@end

@implementation TopViewController
@synthesize OpencloseDeleaget;
@synthesize bol;

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
    
    bol=@"0";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnOpenClose:(UIButton *)sender {
    if([bol isEqualToString:@"0"]==true)
    {
        [OpencloseDeleaget OpenAndCloseBanner:@"1"];
        bol=@"1";
    }
    else{
        [OpencloseDeleaget OpenAndCloseBanner:@"0"];
        bol = @"0";
    }
}





@end
