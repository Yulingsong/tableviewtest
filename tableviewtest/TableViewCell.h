//
//  TableViewCell.h
//  tableviewtest
//
//  Created by yulingsong on 16/1/15.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (nonatomic,strong) UIView *m_back;

@property (nonatomic,strong) UILabel *m_aItem;
@property (nonatomic,strong) UILabel *m_bItem;
@property (nonatomic,strong) UILabel *m_cItem;
@property (nonatomic,strong) UILabel *m_dItem;

@property (nonatomic,strong) UIButton *button;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (void)hiddenMyControls;
@end
