//
//  CheckerViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-6-9.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DXAlertView.h"


@interface CheckerViewController : UIViewController<SureDelegate>
{
    DXAlertView *alert;
}


@property (strong, nonatomic) IBOutlet UIButton *btnjiance;
@property (strong, nonatomic) IBOutlet UIButton *btnJilu;
@property (strong, nonatomic) IBOutlet UIButton *btnFuhe;

-(NSString *)getjianceName;
-(NSString *)getjiluName;
-(NSString *)getfuheName;

@end
