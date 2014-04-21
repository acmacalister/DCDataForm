////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCDateViewCell.m
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCDateViewCell.h"
#import "DCDateItem.h"

@interface DCDateViewCell ()

@property(nonatomic, strong)UIDatePicker *datePicker;
@property(nonatomic, weak)DCDateItem *dateItem;

@end

@implementation DCDateViewCell

////////////////////////////////////////////////////////////////////////////////////////////////////
+ (CGFloat)tableView:(UITableView*)tableView rowHeightForObject:(id)object indexPath:(NSIndexPath*)indexPath
{
    return 200;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
        self.textLabel.numberOfLines = 0;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.datePicker = [[UIDatePicker alloc] init];
        [self.datePicker addTarget:self action:@selector(dateChanged:) forControlEvents:UIControlEventValueChanged];
        [self.contentView addSubview:self.datePicker];
    }
    return self;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.datePicker.frame = self.contentView.bounds;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setObject:(id)object
{
    self.dateItem = object;
    DCDateItem *item = object;
    [self.datePicker setDate:item.date animated:NO];
}
////////////////////////////////////////////////////////////////////////////////////////////////////
-(void)dateChanged:(UIDatePicker*)picker
{
    self.dateItem.date = picker.date;
    if([self.delegate respondsToSelector:@selector(dateDidChange:)])
        [self.delegate dateDidChange:self.dateItem];
}
////////////////////////////////////////////////////////////////////////////////////////////////////

@end
