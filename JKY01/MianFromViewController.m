//
//  MianFromViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-20.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "MianFromViewController.h"

@interface MianFromViewController ()

@end

@implementation MianFromViewController
@synthesize scView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        [self AddTopBanner];
        
        [self addLeftMenu];
        
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


-(void)AddTopBanner
{
    mfCompnent = [addMianFromComponent alloc];
    
    topvc = [[TopViewController alloc] initWithNibName:@"TopViewController" bundle:nil];
    
    topvc.view.frame = CGRectMake(mfCompnent.getTopBannerX, mfCompnent.getTopBannerY, mfCompnent.getTopBannerWidth,mfCompnent.getTopBannerHeight);
    [self addChildViewController:topvc];
    self.view.clipsToBounds = true;
    topvc.OpencloseDeleaget = self;

    [self.view addSubview:topvc.view];
    
}

-(void)addLeftMenu
{
    mfCompnent = [addMianFromComponent alloc];
    lmvc =[[MenuViewController alloc] initWithNibName:@"MenuViewController" bundle:nil];
    
    lmvc.view.frame = CGRectMake(mfCompnent.getMenuBarX, mfCompnent.getMenuBarY, mfCompnent.getMenuBarWidth,mfCompnent.getMenuBarHeight);
    [self addChildViewController:lmvc];
    self.view.clipsToBounds = true;
    lmvc.selctedDelegate = self;
    [self.view addSubview:lmvc.view];

}

-(void)selectedCell:(NSString *)cellTitle
{
    [self HiddenItems];
    
    if(mfCompnent == nil)
    {
        mfCompnent = [addMianFromComponent alloc];
    }



    // 界面切换
    if([cellTitle isEqualToString:@"人员制度检查(隧道)"] == true)
    {
        [self AddTunnel];
        
        if(ry==nil)
        {
            ry = [[RenyuanViewController alloc] initWithNibName:@"RenyuanViewController" bundle:Nil];
            [self addChildViewController:ry];
            self.view.clipsToBounds = true;
            ry.view.frame = CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, mfCompnent.getOptionFromHeight);
            
            scView.frame = CGRectMake(0, 588, 2048, 768);
            scView.contentSize = CGSizeMake(1024, 580);
            [self.scView addSubview:ry.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 580);
            ry.view.alpha = 1;
        }

    }
    
    if([cellTitle isEqualToString:@"工具设备检查(隧道)"] == true)
    {
        [self AddTunnel];
        
        if(gj == nil)
        {
            gj = [[GongjuViewController alloc] initWithNibName:@"GongjuViewController" bundle:nil];
            gj.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 1200);
            [self addChildViewController:gj];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 1400);
            [self.scView addSubview:gj.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 1400);
            gj.view.alpha = 1;
        }


    }
    
    if([cellTitle isEqualToString:@"资料日常检查(隧道)"] == true)
    {
        [self AddTunnel];
        
        if(rc == nil)
        {
            rc = [[RichangViewController alloc] initWithNibName:@"RichangViewController" bundle:nil];
            rc.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 2700);
            [self addChildViewController:rc];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 2900);
            [self.scView addSubview:rc.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 2900);
            rc.view.alpha = 1;
        }

    }
    
    if([cellTitle isEqualToString:@"资料经常性检修(隧道)"] == true)
    {
        [self AddTunnel];
        
        if(jc == nil)
        {
            jc = [[JingchangViewController alloc] initWithNibName:@"JingchangViewController" bundle:nil];
            jc.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 3000);
            [self addChildViewController:jc];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 3200);
            [self.scView addSubview:jc.view];
        }else
        {
            scView.contentSize = CGSizeMake(1024, 3200);
            jc.view.alpha = 1;
        }
        
    }
    
    if([cellTitle isEqualToString:@"资料定期检修(隧道)"] == true)
    {
        [self AddTunnel];
        
        if(dq == nil)
        {
            dq = [[DingqiViewController alloc] initWithNibName:@"DingqiViewController" bundle:nil];
            dq.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 2450);
            [self addChildViewController:dq];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 2650);
            [self.scView addSubview:dq.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 2650);
            dq.view.alpha = 1;
        }
    }
    
  
    if([cellTitle isEqualToString:@"资料分解性检修(隧道)"] == true)
    {
        [self AddTunnel];
        
        if(fj == nil)
        {
            fj = [[FengjieViewController alloc] initWithNibName:@"FengjieViewController" bundle:nil];
            fj.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 550);
            [self addChildViewController:fj];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 550);
            [self.scView addSubview:fj.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 550);
            fj.view.alpha = 1;
        }

    }
    
    
    if([cellTitle isEqualToString:@"设施完好率检查记录(隧道)"] == true)
    {
        [self AddTunnel];
        
        if(wh == nil)
        {
            wh = [[WanghaoViewController alloc] initWithNibName:@"WanghaoViewController" bundle:nil];
            wh.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4150);
            [self addChildViewController:wh];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 4350);
            [self.scView addSubview:wh.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 4350);
            wh.view.alpha = 1;
        }

    }
    
    
    if([cellTitle isEqualToString:@"关键指标实测-照度(隧道)"] == true)
    {
        [self AddTunnel];
        
        if(zd == nil)
        {
            zd = [[ZhaoduViewController alloc] initWithNibName:@"ZhaoduViewController" bundle:nil];
            zd.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 980);
            [self addChildViewController:zd];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 1180);
            [self.scView addSubview:zd.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 1180);
            zd.view.alpha = 1;
        }
    }
    
    if([cellTitle isEqualToString:@"关键指标实测-CO浓度等(隧道)"] == true)
    {
        [self AddTunnel];
        
        if(co == nil)
        {
            co = [[CoViewController alloc] initWithNibName:@"CoViewController" bundle:nil];
            co.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 1100);
            [self addChildViewController:co];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 1300);
            [self.scView addSubview:co.view];
        }else{
             scView.contentSize = CGSizeMake(1024, 1300);
            co.view.alpha = 1;
        }

    }
    
    if([cellTitle isEqualToString:@"人员制度检查(三大系统)"] == true)
    {
        [self AddTunnel];
        
        if(rySAN==nil)
        {
            rySAN = [[RenyuanSANViewController alloc] initWithNibName:@"RenyuanSANViewController" bundle:Nil];
            [self addChildViewController:rySAN];
            self.view.clipsToBounds = true;
            rySAN.view.frame = CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, mfCompnent.getOptionFromHeight);
            
            scView.frame = CGRectMake(0, 588, 2048, 768);
            scView.contentSize = CGSizeMake(1024, 580);
            [self.scView addSubview:rySAN.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 580);
            rySAN.view.alpha = 1;
        }
        
    }
    
    if([cellTitle isEqualToString:@"工具设备检查(三大系统)"] == true)
    {
        [self AddTunnel];
        
        if(gjSan == nil)
        {
            gjSan = [[GongjuSANViewController alloc] initWithNibName:@"GongjuSANViewController" bundle:nil];
            gjSan.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 810);
            [self addChildViewController:gjSan];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 1010);
            [self.scView addSubview:gjSan.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 1010);
            gjSan.view.alpha = 1;
        }
    }
    
    if([cellTitle isEqualToString:@"资料检查(三大系统)"] == true)
    {
        [self AddTunnel];
        
        if(ziliaoSan == nil)
        {
            ziliaoSan = [[ZiliaoSANViewController alloc] initWithNibName:@"ZiliaoSANViewController" bundle:nil];
            ziliaoSan.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4934);
            [self addChildViewController:ziliaoSan];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 5134);
            [self.scView addSubview:ziliaoSan.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 5134);
            ziliaoSan.view.alpha = 1;
        }
    }
    
    if([cellTitle isEqualToString:@"入口车道设备(三大系统)"] == true)
    {
        [self AddTunnel];
        
        if(rukousan == nil)
        {
            rukousan = [[RukouViewController alloc] initWithNibName:@"RukouViewController" bundle:nil];
            rukousan.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4000);
            [self addChildViewController:rukousan];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 4200);
            [self.scView addSubview:rukousan.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 4200);
            rukousan.view.alpha = 1;
        }
    }
    
    if([cellTitle isEqualToString:@"出口车道设备(三大系统)"] == true)
    {
        [self AddTunnel];
        
        if(chukousan == nil)
        {
            chukousan = [[ChukouViewController alloc] initWithNibName:@"ChukouViewController" bundle:nil];
            chukousan.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4450);
            [self addChildViewController:chukousan];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 4650);
            [self.scView addSubview:chukousan.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 4650);
            chukousan.view.alpha = 1;
        }
    }
    
    if([cellTitle isEqualToString:@"接地测试(三大系统)"] == true)
    {
        [self AddTunnel];
        
        if(jiedisan == nil)
        {
            jiedisan = [[JiediViewController alloc] initWithNibName:@"JiediViewController" bundle:nil];
            jiedisan.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 560);
            [self addChildViewController:jiedisan];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 760);
            [self.scView addSubview:jiedisan.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 760);
            jiedisan.view.alpha = 1;
        }
    }
    
    if([cellTitle isEqualToString:@"设备完好率表(三大系统)"] == true)
    {
        [self AddTunnel];
        
        if(wanhaosan == nil)
        {
            wanhaosan = [[WanghaoSANViewController alloc] initWithNibName:@"WanghaoSANViewController" bundle:nil];
            wanhaosan.view.frame =CGRectMake(mfCompnent.getOptionFromX, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4200);
            [self addChildViewController:wanhaosan];
            self.view.clipsToBounds = true;
            scView.contentSize = CGSizeMake(1024, 4400);
            [self.scView addSubview:wanhaosan.view];
        }else{
            scView.contentSize = CGSizeMake(1024, 4400);
            wanhaosan.view.alpha = 1;
        }
    }

    
}

// 打开或者关闭导航条
-(void)OpenAndCloseBanner:(NSString *)bolFLg
{
    if([bolFLg isEqualToString:@"1"]==true)
    {
        // 打开
        [lmvc.view setFrame:CGRectMake(0, mfCompnent.getMenuBarY, mfCompnent.getMenuBarWidth, mfCompnent.getMenuBarHeight)];
        
        //移动侧面布局
        [scView setFrame:CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, mfCompnent.getOptionFromHeight)];
        
        [self setItemsFrame:@"Open"];
        
        
        tun.view.frame = CGRectMake(200, mfCompnent.getTunnelY, mfCompnent.getTunnelWidth, mfCompnent.getTunnelHeight);
        
    }
    else
    {
        // 关闭
        [lmvc.view setFrame:CGRectMake(-200, mfCompnent.getMenuBarY, mfCompnent.getMenuBarWidth, mfCompnent.getMenuBarHeight)];
        
        //移动侧面布局
        scView.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, mfCompnent.getOptionFromHeight);
        
        [self setItemsFrame:@"Close"];
        
        tun.view.frame = CGRectMake(0, mfCompnent.getTunnelY, mfCompnent.getTunnelWidth, mfCompnent.getTunnelHeight);
        
    }
}

// 关闭所有界面元素
-(void)HiddenItems
{
    // 隐藏导航条
    [lmvc.view setFrame:CGRectMake(-200, mfCompnent.getMenuBarY, mfCompnent.getMenuBarWidth, mfCompnent.getMenuBarHeight)];
    
    //移动侧面布局
    scView.frame = CGRectMake(0, 588, 2048, 768);
    
    [self setItemsFrame:@"Close"];
    
    tun.view.frame = CGRectMake(0, mfCompnent.getTunnelY, mfCompnent.getTunnelWidth, mfCompnent.getTunnelHeight);

    
    ry.view.alpha = 0;
    gj.view.alpha = 0;
    rc.view.alpha = 0;
    jc.view.alpha = 0;
    dq.view.alpha = 0;
    fj.view.alpha = 0;
    wh.view.alpha = 0;
    zd.view.alpha = 0;
    co.view.alpha = 0;
    rySAN.view.alpha = 0;
    gjSan.view.alpha = 0;
    ziliaoSan.view.alpha = 0;
    rukousan.view.alpha = 0;
    chukousan.view.alpha = 0;
    jiedisan.view.alpha = 0;
    
}


// 添加或者显示导航条
-(void)AddTunnel
{
    if(tun == nil)
    {
        tun = [[TunnelViewController alloc]initWithNibName:@"TunnelViewController" bundle:nil];
        tun.view.frame =CGRectMake(mfCompnent.getTunnelX, mfCompnent.getTunnelY, mfCompnent.getTunnelWidth, mfCompnent.getTunnelHeight);
        
        [self addChildViewController:tun];
        [self.view addSubview:tun.view];
    }
    else{
        tun.view.hidden = false;
    }
}

-(void)setItemsFrame:(NSString *)strValue
{
    if([strValue isEqualToString:@"Open"] == true)
    {
        ry.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, mfCompnent.getOptionFromHeight);

        gj.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 1200);
        
        rc.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 2700);

        jc.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 3000);

        dq.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 2450);
        
        fj.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 550);
        
        wh.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4150);
        
        zd.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 980);
        
        co.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 1100);
        
        rySAN.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, mfCompnent.getOptionFromHeight);
        
        gjSan.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 1010);
        
        ziliaoSan.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 5134);
        
        rukousan.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4200);
        
        chukousan.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4650);
        
        jiedisan.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 760);
        
        jiedisan.view.frame = CGRectMake(200, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4400);
        
        
    }else{
        
        ry.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, mfCompnent.getOptionFromHeight);
        
        gj.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 1200);
        
        rc.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 2700);
        
        jc.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 3000);
        
        dq.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 2450);
        
        fj.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 550);
        
        wh.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4150);
        
        zd.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 980);
        
        co.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 1100);
        
        rySAN.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, mfCompnent.getOptionFromHeight);
        
        gjSan.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 1010);
        
        ziliaoSan.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 5134);
        
        rukousan.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4200);
        
        chukousan.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4650);
        
        jiedisan.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 760);
        
        jiedisan.view.frame = CGRectMake(0, mfCompnent.getOptionFromY, mfCompnent.getOptionFromWidth, 4400);
        
    }
}
























@end
