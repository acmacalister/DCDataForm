////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCDetailViewCell.m
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCDetailViewCell.h"
#import "DCDetailItem.h"

@interface DCDetailViewCell ()

@property(nonatomic, weak)DCDetailItem *detailItem;

@end

@implementation DCDetailViewCell

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
        self.detailTextLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    }
    return self;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)layoutSubviews
{
    [super layoutSubviews];
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setObject:(id)object
{
    self.detailItem = object;
    self.textLabel.text = self.detailItem.title;
    self.detailTextLabel.text = self.detailItem.detailText;
}
////////////////////////////////////////////////////////////////////////////////////////////////////

@end
