////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCTextViewCell.m
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCTextViewCell.h"
#import "DCTextViewItem.h"

@interface DCTextViewCell ()<UITextViewDelegate>

@property(nonatomic, weak)DCTextViewItem *textViewItem;

@end

@implementation DCTextViewCell

////////////////////////////////////////////////////////////////////////////////////////////////////
+ (CGFloat)tableView:(UITableView*)tableView rowHeightForObject:(id)object indexPath:(NSIndexPath*)indexPath
{
    return 120;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.textView = [[UITextView alloc] init];
        self.textView.delegate = self;
        [self.contentView addSubview:self.textView];
    }
    return self;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)layoutSubviews
{
    [super layoutSubviews];
    self.textView.frame = self.contentView.bounds;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setObject:(id)object
{
    self.textViewItem = object;
    self.textView.text = self.textViewItem.text;
}
////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark - UITextView

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)textViewDidChange:(UITextView *)textView
{
    self.textViewItem.text = self.textView.text;
    if([self.delegate respondsToSelector:@selector(didChangeTextViewItemText:)])
        [self.delegate didChangeTextViewItemText:self.textViewItem];
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)textViewDidBeginEditing:(UITextView *)textView
{
    if([self.delegate respondsToSelector:@selector(didStartTextViewItemEditing:)])
        [self.delegate didStartTextViewItemEditing:self.textViewItem];
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)textViewDidEndEditing:(UITextView *)textView
{
    self.textViewItem.text = self.textView.text;
    if([self.delegate respondsToSelector:@selector(didEndTextViewItemEditing:)])
        [self.delegate didEndTextViewItemEditing:self.textViewItem];
}
////////////////////////////////////////////////////////////////////////////////////////////////////

@end
