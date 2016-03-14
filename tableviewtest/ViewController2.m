//
//  ViewController2.m
//  tableviewtest
//
//  Created by yulingsong on 16/1/18.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (nonatomic,strong) NSString *string;
@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"ViewController2";
    self.view.backgroundColor = [UIColor whiteColor];
    self.view.userInteractionEnabled = YES;
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(ChangeNameNotification:) name:@"ChangeNameNotification" object:nil];
    [self createLabel];
    
}

-(void)createLabel
{
    UILabel *lb = [[UILabel alloc]init];
    [lb setFrame:CGRectMake(0, 0, 375, 667)];
    [lb setCenter:self.view.center];
    [lb setBackgroundColor:[UIColor lightGrayColor]];
    [lb setText:self.string];
    [self.view addSubview:lb];
}

-(void)ChangeNameNotification:(NSNotification*)notification{
    
    NSDictionary *nameDictionary = [notification userInfo];
    self.string = [nameDictionary objectForKey:@"name"];
    NSLog(@"%@",self.string);
    
}

@end
