//
//  ILSMLAlertView.h
//  MoreLikers
//
//  Created by xiekw on 13-9-9.
//  Copyright (c) 2013年 谢凯伟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMDatabase.h"
#import "FMDatabaseQueue.h"
#import "ErrLog.h"

@protocol SureDelegate<NSObject>
@optional
-(void)clickedOK:(NSString *)UserName;
-(void)jiluClick:(NSString *)UserName;
-(void)fuheClick:(NSString *)UserName;
@end


@interface DXAlertView : UIView<UIViewControllerTransitioningDelegate>
{
     id<SureDelegate>btnOKDelegate;
    NSString *strName;
}

- (id)initWithTitle:(NSString *)title
        contentText:(NSString *)content
    leftButtonTitle:(NSString *)leftTitle
   rightButtonTitle:(NSString *)rigthTitle;

- (void)show;

@property (nonatomic, copy) dispatch_block_t leftBlock;
@property (nonatomic, copy) dispatch_block_t rightBlock;
@property (nonatomic, copy) dispatch_block_t dismissBlock;
@property(nonatomic, retain)id<SureDelegate> btnOKDelegate;
@property(nonatomic, retain) NSString *strflg;

@end

@interface UIImage (colorful)

+ (UIImage *)imageWithColor:(UIColor *)color;

@end