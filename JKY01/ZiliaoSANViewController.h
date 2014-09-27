//
//  ZiliaoSANViewController.h
//  JKY01
//
//  Created by 赵 旭初 on 14-3-31.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZiliaoSANViewController : UIViewController
{
    NSString *strRoadID;
    NSString *strTaskID;
    NSString *strSortID;
    NSString *strCheckPro;
    NSString *strMainContent;
    NSString *strCheckZQ;
    NSString *strTrueZQ;
    NSString *strRemark;
    NSString *strChecked;
    NSString *strRecord;
    NSString *strCheckAagin;
    NSString *strDate;
    NSString *strAddUser;
    NSString *strAddDate;
    NSString *strFlg;
    NSString *strUploadflg;
}

@property (strong, nonatomic) IBOutlet UILabel *lblSort1;
@property (strong, nonatomic) IBOutlet UILabel *lblSort2;
@property (strong, nonatomic) IBOutlet UILabel *lblSort3;
@property (strong, nonatomic) IBOutlet UILabel *lblSort4;
@property (strong, nonatomic) IBOutlet UILabel *lblSort5;
@property (strong, nonatomic) IBOutlet UILabel *lblSort6;
@property (strong, nonatomic) IBOutlet UILabel *lblSort7;
@property (strong, nonatomic) IBOutlet UILabel *lblSort8;
@property (strong, nonatomic) IBOutlet UILabel *lblSort9;
@property (strong, nonatomic) IBOutlet UILabel *lblSort10;
@property (strong, nonatomic) IBOutlet UILabel *lblSort11;
@property (strong, nonatomic) IBOutlet UILabel *lblSort12;
@property (strong, nonatomic) IBOutlet UILabel *lblSort13;
@property (strong, nonatomic) IBOutlet UILabel *lblSort14;
@property (strong, nonatomic) IBOutlet UILabel *lblSort15;
@property (strong, nonatomic) IBOutlet UILabel *lblSort16;
@property (strong, nonatomic) IBOutlet UILabel *lblSort17;
@property (strong, nonatomic) IBOutlet UILabel *lblSort18;
@property (strong, nonatomic) IBOutlet UILabel *lblSort19;
@property (strong, nonatomic) IBOutlet UILabel *lblSort20;

@property (strong, nonatomic) IBOutlet UILabel *lblJiankong;
@property (strong, nonatomic) IBOutlet UILabel *lblTongxing;
@property (strong, nonatomic) IBOutlet UILabel *lblShoufei;

//--------------------------jiankong----------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblchuCheng;
@property (strong, nonatomic) IBOutlet UILabel *lblDituping;
@property (strong, nonatomic) IBOutlet UILabel *lblBiludianshi;
@property (strong, nonatomic) IBOutlet UILabel *lblChezhongceliang;
@property (strong, nonatomic) IBOutlet UILabel *lblYiyanghuatang;
@property (strong, nonatomic) IBOutlet UILabel *lblCheliujiancha;
@property (strong, nonatomic) IBOutlet UILabel *lbllangyongbaohu;
@property (strong, nonatomic) IBOutlet UILabel *lbljisuanjixitong;
@property (strong, nonatomic) IBOutlet UILabel *lbltongxinggongneng;
@property (strong, nonatomic) IBOutlet UILabel *lblXianlangdianyuan;
@property (strong, nonatomic) IBOutlet UILabel *lblKebianxinxi;
@property (strong, nonatomic) IBOutlet UILabel *lblQuyukongzhiqi;
@property (strong, nonatomic) IBOutlet UILabel *lblShipingguangduanji;
@property (strong, nonatomic) IBOutlet UILabel *lblQixiangjiance;
@property (strong, nonatomic) IBOutlet UILabel *lblWaichangshebei;
@property (strong, nonatomic) IBOutlet UILabel *lblJueyuandianzu;
@property (strong, nonatomic) IBOutlet UILabel *lblJiedidianzu;

@property (strong, nonatomic) IBOutlet UILabel *lbl1jifang;
@property (strong, nonatomic) IBOutlet UILabel *lbl1shexiangji;
@property (strong, nonatomic) IBOutlet UILabel *lbl1Waichang;
@property (strong, nonatomic) IBOutlet UILabel *lbl2gexiang;
@property (strong, nonatomic) IBOutlet UILabel *lbl3guangcha;
@property (strong, nonatomic) IBOutlet UILabel *lbl3bianma;
@property (strong, nonatomic) IBOutlet UILabel *lbl4xianchang;
@property (strong, nonatomic) IBOutlet UILabel *lbl4CZ;
@property (strong, nonatomic) IBOutlet UILabel *lbl5Guangcha;
@property (strong, nonatomic) IBOutlet UILabel *lbl6Gongneng;
@property (strong, nonatomic) IBOutlet UILabel *lbl6chesu;
@property (strong, nonatomic) IBOutlet UILabel *lbl7Xingneng;
@property (strong, nonatomic) IBOutlet UILabel *lbl8Gongneng;
@property (strong, nonatomic) IBOutlet UILabel *lbl9Ceshi;
@property (strong, nonatomic) IBOutlet UILabel *lbl10shinei;
@property (strong, nonatomic) IBOutlet UILabel *lbl10shiwai;
@property (strong, nonatomic) IBOutlet UILabel *lbl11Liangduji;
@property (strong, nonatomic) IBOutlet UILabel *lbl12shiyan;
@property (strong, nonatomic) IBOutlet UILabel *lbl13Guangonglv;
@property (strong, nonatomic) IBOutlet UILabel *lbl14Jiancha;
@property (strong, nonatomic) IBOutlet UILabel *lbl15jiancha;
@property (strong, nonatomic) IBOutlet UILabel *lbl16oubiao;
@property (strong, nonatomic) IBOutlet UILabel *lbl17Jiedidianzu;

@property (strong, nonatomic) IBOutlet UISegmentedControl *seg1jifang;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg1shexiangji;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg1Waichang;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg2gexiang;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg3guangcha;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg3bianma;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg4xianchang;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg4CZ;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg5Guangcha;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg6Gongneng;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg6chesu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg7Xingneng;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg8Gongneng;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg9Ceshi;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg10shinei;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg10shiwai;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg11Liangduji;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg12shiyan;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg13Guangonglv;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg14Jiancha;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg15jiancha;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg16oubiao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg17Jiedidianzu;

@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu1;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu2;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu3;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu4;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu5;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu6;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu7;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu8;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu9;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu10;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu11;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu12;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu13;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu14;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu15;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu16;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu17;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu18;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu19;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu20;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu21;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu22;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu23;

//------------------------------------通信设施---------------------------------------------------------
@property (strong, nonatomic) IBOutlet UILabel *lblshuzichuangshu;
@property (strong, nonatomic) IBOutlet UILabel *lbldianyuanheshebei;
@property (strong, nonatomic) IBOutlet UILabel *lblshuzichengkong;
@property (strong, nonatomic) IBOutlet UILabel *lbljifangyushebei;
@property (strong, nonatomic) IBOutlet UILabel *lbllangyongbaohuqi;
@property (strong, nonatomic) IBOutlet UILabel *lblshuzi;
@property (strong, nonatomic) IBOutlet UILabel *lbljingjidianhua;
@property (strong, nonatomic) IBOutlet UILabel *lblshuchuangshu;
@property (strong, nonatomic) IBOutlet UILabel *lblguangdianlangxianlu;
@property (strong, nonatomic) IBOutlet UILabel *lblshuzichengkongceshi;
@property (strong, nonatomic) IBOutlet UILabel *lblwuxiantongxinshebei;
@property (strong, nonatomic) IBOutlet UILabel *lblshuzidaohuan;
@property (strong, nonatomic) IBOutlet UILabel *lbldianlangjueyuan;
@property (strong, nonatomic) IBOutlet UILabel *lblguagnxiantongdaohou;
@property (strong, nonatomic) IBOutlet UILabel *lblshuziwuma;
@property (strong, nonatomic) IBOutlet UILabel *lblwuxiantieta;
@property (strong, nonatomic) IBOutlet UILabel *lblqiangdianduan;
@property (strong, nonatomic) IBOutlet UILabel *lblfangleihejiedi;

@property (strong, nonatomic) IBOutlet UILabel *lbl1baokuo;
@property (strong, nonatomic) IBOutlet UILabel *lbl2meitain;
@property (strong, nonatomic) IBOutlet UILabel *lbl2jingjidianhua;
@property (strong, nonatomic) IBOutlet UILabel *lbl3gaojing;
@property (strong, nonatomic) IBOutlet UILabel *lbl4shebei;
@property (strong, nonatomic) IBOutlet UILabel *lbl4jiding;
@property (strong, nonatomic) IBOutlet UILabel *lbl5langyong;
@property (strong, nonatomic) IBOutlet UILabel *lbl6baokuo;
@property (strong, nonatomic) IBOutlet UILabel *lbl7jiancha;
@property (strong, nonatomic) IBOutlet UILabel *lbl8shujuxiugai;
@property (strong, nonatomic) IBOutlet UILabel *lbl9weixian;
@property (strong, nonatomic) IBOutlet UILabel *lbl9jiancharen;
@property (strong, nonatomic) IBOutlet UILabel *lbl10gaojingxingneng;
@property (strong, nonatomic) IBOutlet UILabel *lbl10zhangaizidongzhengduan;
@property (strong, nonatomic) IBOutlet UILabel *lbl11zhuangfaqigonglv;
@property (strong, nonatomic) IBOutlet UILabel *lbl12baokuowaike;
@property (strong, nonatomic) IBOutlet UILabel *lbl13jueyuandianzu;
@property (strong, nonatomic) IBOutlet UILabel *lbl14odtr;
@property (strong, nonatomic) IBOutlet UILabel *lbl15meigezuchou;
@property (strong, nonatomic) IBOutlet UILabel *lbl16tianxian;
@property (strong, nonatomic) IBOutlet UILabel *lbl17ouzhao;
@property (strong, nonatomic) IBOutlet UILabel *lbl18fangleiceshi;

@property (strong, nonatomic) IBOutlet UISegmentedControl *seg1baokuo;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg2meitain;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg2jingjidianhua;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg3gaojing;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg4shebei;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg4jiding;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg5langyong;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg6baokuo;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg7jiancha;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg8shujuxiugai;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg9weixian;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg9jiancharen;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg10gaojingxingneng;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg10zhangaizidongzhengduan;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg11zhuangfaqigonglv;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg12baokuowaike;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg13jueyuandianzu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg14odtr;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg15meigezuchou;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg16tianxian;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg17ouzhao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg18fangleiceshi;

@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu24;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu25;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu26;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu27;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu28;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu29;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu30;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu31;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu32;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu33;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu34;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu35;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu36;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu37;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu38;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu39;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu40;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu41;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu42;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu43;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu44;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu45;

//---------------------------------收费设施-------------------------------------------------------------------

// 除尘
@property (strong, nonatomic) IBOutlet UILabel *lblfakaji;
@property (strong, nonatomic) IBOutlet UILabel *lblbaojingxitong;
@property (strong, nonatomic) IBOutlet UILabel *lbldukaji;
@property (strong, nonatomic) IBOutlet UILabel *lbldianyuanceshi;
@property (strong, nonatomic) IBOutlet UILabel *lbllangxian;
@property (strong, nonatomic) IBOutlet UILabel *lbllangyong;
@property (strong, nonatomic) IBOutlet UILabel *lblduixiangxitong;
@property (strong, nonatomic) IBOutlet UILabel *lblshujubeifeng;
@property (strong, nonatomic) IBOutlet UILabel *lblchedaoshebei;
@property (strong, nonatomic) IBOutlet UILabel *lblchedaokongzhi;
@property (strong, nonatomic) IBOutlet UILabel *lbldiandong;
@property (strong, nonatomic) IBOutlet UILabel *lblcheliangjiance;
@property (strong, nonatomic) IBOutlet UILabel *lblpiaojudaying;
@property (strong, nonatomic) IBOutlet UILabel *lblluceduxie;
@property (strong, nonatomic) IBOutlet UILabel *lbljisuanjixitongweihu;
@property (strong, nonatomic) IBOutlet UILabel *lblchuangshugongneng;
@property (strong, nonatomic) IBOutlet UILabel *lblchangwaifushu;
@property (strong, nonatomic) IBOutlet UILabel *lbljueyuandianzu;
@property (strong, nonatomic) IBOutlet UILabel *lbljiedidianzu;

@property (strong, nonatomic) IBOutlet UILabel *lbl1chedaoting;
@property (strong, nonatomic) IBOutlet UILabel *lbl2ICka;
@property (strong, nonatomic) IBOutlet UILabel *lbl2cika;
@property (strong, nonatomic) IBOutlet UILabel *lbl2cikashangyou;
@property (strong, nonatomic) IBOutlet UILabel *lbl3jiancha;
@property (strong, nonatomic) IBOutlet UILabel *lbl4oumobiaoge;
@property (strong, nonatomic) IBOutlet UILabel *lbl4cika;
@property (strong, nonatomic) IBOutlet UILabel *lbl4chuansongdai;
@property (strong, nonatomic) IBOutlet UILabel *lbl5wangyongbiao;
@property (strong, nonatomic) IBOutlet UILabel *lbl6guangcha;
@property (strong, nonatomic) IBOutlet UILabel *lbl7xingnengceshi;
@property (strong, nonatomic) IBOutlet UILabel *lbl8shiyan;
@property (strong, nonatomic) IBOutlet UILabel *lbl9shujucidai;
@property (strong, nonatomic) IBOutlet UILabel *lbl10baokuofeier;
@property (strong, nonatomic) IBOutlet UILabel *lbl11xiangnei;
@property (strong, nonatomic) IBOutlet UILabel *lbl11kongqi;
@property (strong, nonatomic) IBOutlet UILabel *lbl11genghuang;
@property (strong, nonatomic) IBOutlet UILabel *lbl12jiangu;
@property (strong, nonatomic) IBOutlet UILabel *lbl13xianquan;
@property (strong, nonatomic) IBOutlet UILabel *lbl14qingjie;
@property (strong, nonatomic) IBOutlet UILabel *lbl15maoyu;
@property (strong, nonatomic) IBOutlet UILabel *lbl16jisuanjixitong;
@property (strong, nonatomic) IBOutlet UILabel *lbl17chuanshugongneng;
@property (strong, nonatomic) IBOutlet UILabel *lbl18waichangfushu;
@property (strong, nonatomic) IBOutlet UILabel *lbl19jueyuandianzu;
@property (strong, nonatomic) IBOutlet UILabel *lbl20jiedidianzu;

@property (strong, nonatomic) IBOutlet UISegmentedControl *seg1chedaoting;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg2ICka;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg2cika;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg2cikashangyou;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg3jiancha;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg4oumobiaoge;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg4cika;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg4chuansongdai;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg5wangyongbiao;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg6guangcha;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg7xingnengceshi;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg8shiyan;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg9shujucidai;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg10baokuofeier;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg11xiangnei;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg11kongqi;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg11genghuang;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg12jiangu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg13xianquan;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg14qingjie;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg15maoyu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg16jisuanjixitong;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg17chuanshugongneng;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg18waichangfushu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg19jueyuandianzu;
@property (strong, nonatomic) IBOutlet UISegmentedControl *seg20jiedidianzu;

@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu46;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu47;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu48;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu49;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu50;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu51;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu52;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu53;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu54;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu55;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu56;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu57;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu58;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu59;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu60;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu61;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu62;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu63;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu64;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu65;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu66;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu67;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu68;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu69;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu70;
@property (strong, nonatomic) IBOutlet UITextField *txtBeizhu71;


@end
