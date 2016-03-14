//
//  ViewController.m
//  tableviewtest
//
//  Created by yulingsong on 16/1/15.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
#import "ViewController2.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) UITableView *m_detailList;
@property (nonatomic,strong) NSString *string;
@end

@implementation ViewController
@synthesize m_detailList;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"票据详情";
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.userInteractionEnabled = YES;
    
    self.string = @"sdkflakjdhflkja";
    [self createDetailList];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"ChangeNameNotification" object:self userInfo:@{@"name":self.string}];
}
-(void)createDetailList
{
    if (!m_detailList)
    {
        self.m_detailList = [[UITableView alloc] init];
        [self.view addSubview:m_detailList];
    }
    [m_detailList setFrame:CGRectMake(0, 8, 375, 575)];
    [m_detailList setDataSource:self];
    [m_detailList setDelegate:self];
    [m_detailList setScrollEnabled:YES];
    [m_detailList setUserInteractionEnabled:YES];
    [m_detailList setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
    [m_detailList setBackgroundColor:[UIColor lightGrayColor]];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 202;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"identify";
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:identify];
    
    if (nil == cell)
    {
        cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    [cell setBackgroundColor:[UIColor clearColor]];
    [cell setUserInteractionEnabled:YES];
    [cell hiddenMyControls];
    
    [cell setFrame:CGRectMake(0, 0, 375, 202)];
    
    [cell.m_aItem setHidden:NO];
    [cell.m_aItem setFrame:CGRectMake(18, 0, 100, 25)];
    [cell.m_aItem setTextAlignment:NSTextAlignmentLeft];
    [cell.m_aItem setFont:[UIFont systemFontOfSize:12]];
    [cell.m_aItem setText:@"---------"];

    [cell.m_back setHidden:NO];
    [cell.m_back setFrame:CGRectMake(0, 30, 375, 156)];
    [cell.m_back setBackgroundColor:[UIColor whiteColor]];
    
    [cell.m_bItem setHidden:NO];
    [cell.m_bItem setFrame:CGRectMake(18, 0, 120, 35)];
    [cell.m_bItem setTextAlignment:NSTextAlignmentLeft];
    [cell.m_bItem setFont:[UIFont systemFontOfSize:13]];
    [cell.m_bItem setTextColor:[UIColor blackColor]];
    [cell.m_bItem setText:@"投资金额(元)"];
    
    [cell.m_cItem setHidden:NO];
    [cell.m_cItem setFrame:CGRectMake(18, 35, 120, 35)];
    [cell.m_cItem setTextAlignment:NSTextAlignmentLeft];
    [cell.m_cItem setFont:[UIFont systemFontOfSize:13]];
    [cell.m_cItem setTextColor:[UIColor blackColor]];
    [cell.m_cItem setText:@"预期收益(元)"];
    
    [cell.m_dItem setHidden:NO];
    [cell.m_dItem setFrame:CGRectMake(18, 65, 120, 35)];
    [cell.m_dItem setTextAlignment:NSTextAlignmentLeft];
    [cell.m_dItem setFont:[UIFont systemFontOfSize:13]];
    [cell.m_dItem setTextColor:[UIColor blackColor]];
    [cell.m_dItem setText:@"预期年化收益率"];

    
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ViewController2 *vc = [[ViewController2 alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}


-(void)nihao:(NSNotification *)notification
{
    self.string = @"sdkflakjdhflkja";
}














- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
