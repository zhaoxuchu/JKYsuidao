//
//  MenuViewController.m
//  JKY01
//
//  Created by 赵 旭初 on 14-2-20.
//  Copyright (c) 2014年 赵 旭初. All rights reserved.
//

#import "MenuViewController.h"
#import "MenuCell.h"

@interface MenuViewController ()
{
    NSMutableArray *tabledata;
}

@end

@implementation MenuViewController
@synthesize dataList=_dataList;
@synthesize imageList = _imageList;
@synthesize selctedDelegate;

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
    
    tabledata = [[NSMutableArray alloc] init];
    [tabledata addObject:[NSString stringWithFormat:@"人员制度检查(隧道)"]];
    [tabledata addObject:[NSString stringWithFormat:@"工具设备检查(隧道)"]];
    [tabledata addObject:[NSString stringWithFormat:@"资料日常检查(隧道)"]];
    [tabledata addObject:[NSString stringWithFormat:@"资料经常性检修(隧道)"]];
    [tabledata addObject:[NSString stringWithFormat:@"资料定期检修(隧道)"]];
    [tabledata addObject:[NSString stringWithFormat:@"资料分解性检修(隧道)"]];
    [tabledata addObject:[NSString stringWithFormat:@"设施完好率检查记录(隧道)"]];
    [tabledata addObject:[NSString stringWithFormat:@"关键指标实测-照度(隧道)"]];
    [tabledata addObject:[NSString stringWithFormat:@"关键指标实测-CO浓度等(隧道)"]];
    [tabledata addObject:[NSString stringWithFormat:@"人员制度检查(三大系统)"]];
    [tabledata addObject:[NSString stringWithFormat:@"工具设备检查(三大系统)"]];
    [tabledata addObject:[NSString stringWithFormat:@"资料检查(三大系统)"]];
    [tabledata addObject:[NSString stringWithFormat:@"入口车道设备(三大系统)"]];
    [tabledata addObject:[NSString stringWithFormat:@"出口车道设备(三大系统)"]];
    [tabledata addObject:[NSString stringWithFormat:@"设备完好率表(三大系统)"]];
    [tabledata addObject:[NSString stringWithFormat:@"接地测试(三大系统)"]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*************************************************
 tableview
 ************************************************/

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    // Return the number of sections.
//    return 10;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tabledata count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CustomCellIdentifier = @"CustomCellIdentifier";
    
    static BOOL nibsRegistered = NO;
    
    if(!nibsRegistered)
    {
        UINib *nib = [UINib nibWithNibName:@"MenuCell" bundle:nil];
        [tableView registerNib:nib forCellReuseIdentifier:CustomCellIdentifier];
        nibsRegistered = YES;
    }

    MenuCell *cell = [tableView dequeueReusableCellWithIdentifier:CustomCellIdentifier];
    
    if(cell ==nil)
    {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"CustomCellIdentifier" owner:self options:nil] lastObject];
    }
    
    
    cell.backgroundColor = [[UIColor alloc] initWithRed:2/255 green:18/255 blue:29/255 alpha:0.9f];
    [cell setTitle:[tabledata objectAtIndex:indexPath.row]];
    
    UIView *aView = [[UIView alloc] initWithFrame:cell.contentView.frame];
//    aView.backgroundColor = [[UIColor alloc] initWithRed:122/255 green:18/255 blue:29/255 alpha:0.9f];
    aView.backgroundColor = [UIColor redColor];
    cell.selectedBackgroundView = aView;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *titileString = [tabledata objectAtIndex:[indexPath row]];  //这个表示选中的那个cell上的数据
    
    [self cellselected:titileString];
}

-(void)cellselected:(NSString *)strTitle
{
    [selctedDelegate selectedCell:strTitle];
}


/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    // Navigation logic may go here. Create and push another view controller.
//    /*
//     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
//     // ...
//     // Pass the selected object to the new view controller.
//     [self.navigationController pushViewController:detailViewController animated:YES];
//     */
//}




@end
