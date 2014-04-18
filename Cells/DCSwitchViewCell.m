////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCSwitchViewCell.m
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCSwitchViewCell.h"
#import "DCSwitchItem.h"

@interface DCSwitchViewCell ()

@property(nonatomic, weak)DCSwitchItem *switchItem;

@end

@implementation DCSwitchViewCell

////////////////////////////////////////////////////////////////////////////////////////////////////
+ (CGFloat)tableView:(UITableView*)tableView rowHeightForObject:(id)object indexPath:(NSIndexPath*)indexPath
{
    return 44;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
        self.textLabel.numberOfLines = 0;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.switchView = [[UISwitch alloc] init];
        [self.switchView addTarget:self action:@selector(onChange) forControlEvents:UIControlEventValueChanged];
        [self.contentView addSubview:self.switchView];
    }
    return self;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    float pad = 8;
    self.switchView.frame = CGRectMake(self.contentView.frame.size.width-(pad*2+44), pad, 0, 0);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setObject:(id)object
{
    self.switchItem = object;
    self.textLabel.text = self.switchItem.title;
    self.switchView.on = self.switchItem.on;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)onChange
{
    self.switchItem.on = !self.switchItem.on;
}
////////////////////////////////////////////////////////////////////////////////////////////////////

@end
