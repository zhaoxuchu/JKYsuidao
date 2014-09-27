//
//  MianFromViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-2-20.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TopViewController.h"
#import "addMianFromComponent.h"
#import "MenuViewController.h"
#import "RenyuanViewController.h"
#import "TunnelViewController.h"
#import "GongjuViewController.h"
#import "RichangViewController.h"
#import "JingchangViewController.h"
#import "DingqiViewController.h"
#import "FengjieViewController.h"
#import "WanghaoViewController.h"
#import "CoViewController.h"
#import "ZhaoduViewController.h"
#import "RenyuanSANViewController.h"
#import "GongjuSANViewController.h"
#import "ZiliaoSANViewController.h"
#import "RukouViewController.h"
#import "ChukouViewController.h"
#import "JiediViewController.h"
#import "WanghaoSANViewController.h"


@interface MianFromViewController : UIViewController<MenuDelegate , TopBannerDeleaget>
{
    MenuViewController *lmvc;
    TopViewController *topvc;
    addMianFromComponent *mfCompnent;
    
    // 头部标题
    TunnelViewController *tun;
    
    // 人员制度检查界面
    RenyuanViewController *ry;
    
    // 工具设备检查
    GongjuViewController *gj;
    
    // 日常检修资料
    RichangViewController *rc;
    
    // 经常性检修
    JingchangViewController *jc;
    
    // 定期性检修
    DingqiViewController *dq;
    
    // 分解性检修
    FengjieViewController *fj;
    
    // 完好率
    WanghaoViewController *wh;
    
    // 照度
    ZhaoduViewController *zd;
    
    // co浓度
    CoViewController *co;
    
    // 人员制度检查界面三大系统
    RenyuanSANViewController *rySAN;
    
    // 工器具检查
    GongjuSANViewController *gjSan;
    
    // 资料检查
    ZiliaoSANViewController *ziliaoSan;
    
    // 入口车道检查
    RukouViewController *rukousan;
    
    // 出口车道检查
    ChukouViewController *chukousan;
    
    // 接地检测
    JiediViewController *jiedisan;
    
    // 完好率三大系统
    WanghaoSANViewController *wanhaosan;
    
    
}
@property (strong, nonatomic) IBOutlet UIScrollView *scView;

@end
