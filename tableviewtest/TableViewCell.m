//
//  TableViewCell.m
//  tableviewtest
//
//  Created by yulingsong on 16/1/15.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize m_back;
@synthesize m_bItem,m_aItem,m_cItem,m_dItem,button;
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.userInteractionEnabled = YES;
        
        if (!m_back)
        {
            self.m_back = [[UIView alloc]init];
            [self addSubview:m_back];
        }
        [m_back setBackgroundColor:[UIColor clearColor]];
        
        if (!m_aItem)
        {
            self.m_aItem = [[UILabel alloc]init];
            [self addSubview:m_aItem];
        }
        [m_aItem setBackgroundColor:[UIColor clearColor]];
        
        if (!m_bItem)
        {
            self.m_bItem = [[UILabel alloc]init];
            [m_back addSubview:m_bItem];
        }
        [m_bItem setBackgroundColor:[UIColor clearColor]];
        
        if (!m_cItem)
        {
            self.m_cItem = [[UILabel alloc]init];
            [m_back addSubview:m_cItem];
        }
        [m_cItem setBackgroundColor:[UIColor clearColor]];
        
        if (!m_dItem)
        {
            self.m_dItem = [[UILabel alloc]init];
            [m_back addSubview:m_dItem];
        }
        [m_dItem setBackgroundColor:[UIColor clearColor]];
        
        if(!button)
        {
            self.button = [[UIButton alloc]init];
            [m_back addSubview:button];
        }
        [button setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}

-(void)hiddenMyControls
{
    [m_back setHidden:YES];
    [m_aItem setHidden:YES];
    [m_bItem setHidden:YES];
    [m_cItem setHidden:YES];
    [m_dItem setHidden:YES];
    [button setHidden:YES];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
