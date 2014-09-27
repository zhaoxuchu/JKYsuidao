//
//  TopViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-18.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TopBannerDeleaget <NSObject>

-(void)OpenAndCloseBanner:(NSString *)bolFLg;

@end

@interface TopViewController : UIViewController
{
    id<TopBannerDeleaget>OpencloseDeleaget;
    
    NSString *bol;
}

@property(nonatomic , retain)id<TopBannerDeleaget> OpencloseDeleaget;

@property(nonatomic , retain)NSString *bol;





@end
