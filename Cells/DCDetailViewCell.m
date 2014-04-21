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
        self.textLabel.numberOfLines = 1;
        //self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.detailLabel = [[UILabel alloc] init];
        self.detailLabel.backgroundColor = [UIColor clearColor];
        self.detailLabel.textColor = self.textLabel.textColor;
        self.detailLabel.font = self.textLabel.font;
        self.detailLabel.textAlignment = NSTextAlignmentRight;
        [self.contentView addSubview:self.detailLabel];
    }
    return self;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat pad = 10;
    [self.textLabel sizeToFit];
    CGRect frame = self.textLabel.frame;
    frame.size.height = self.contentView.frame.size.height;
    self.textLabel.frame = frame;
    CGFloat left = self.textLabel.frame.size.width+self.textLabel.frame.origin.x+pad;
    self.detailLabel.frame = CGRectMake(left, 0,
                                      self.contentView.frame.size.width-(left+pad),
                                      self.contentView.frame.size.height);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setObject:(id)object
{
    self.detailItem = object;
    self.textLabel.text = self.detailItem.title;
    self.detailLabel.text = self.detailItem.detailText;
}
////////////////////////////////////////////////////////////////////////////////////////////////////

@end
