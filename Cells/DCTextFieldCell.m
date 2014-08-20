////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCTextFieldCell.m
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCTextFieldCell.h"
#import "DCTextFieldItem.h"

@interface DCTextFieldCell ()<UITextFieldDelegate>

@property(nonatomic, weak)DCTextFieldItem *textFieldItem;

@end

@implementation DCTextFieldCell

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
        self.textLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
        self.textLabel.numberOfLines = 1;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.textField = [[UITextField alloc] init];
        self.textField.delegate = self;
        [self.contentView addSubview:self.textField];
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
    CGFloat left = self.textLabel.frame.size.width+self.textLabel.frame.origin.x+pad+5;
    self.textField.frame = CGRectMake(left, 0,
                                      self.contentView.frame.size.width-left,
                                      self.contentView.frame.size.height);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setObject:(id)object
{
    self.textFieldItem = object;
    self.textLabel.text = self.textFieldItem.title;
    self.textField.text = self.textFieldItem.text;
    self.textField.placeholder = self.textFieldItem.placeholder;
    self.textField.clearButtonMode = self.textFieldItem.clearButtonMode;
}
////////////////////////////////////////////////////////////////////////////////////////////////////

#pragma mark = UITextField

////////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    [self performSelector:@selector(updateField:) withObject:textField afterDelay:0.01];
    return YES;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    if([self.delegate respondsToSelector:@selector(didEndTextFieldItemEditing:)])
        [self.delegate didEndTextFieldItemEditing:self.textFieldItem];
    return YES;
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)textFieldDidEndEditing:(UITextField *)textField;
{
    if([self.delegate respondsToSelector:@selector(didEndTextFieldItemEditing:)])
        [self.delegate didEndTextFieldItemEditing:self.textFieldItem];
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if([self.delegate respondsToSelector:@selector(didStartTextFieldItemEditing:)])
        [self.delegate didStartTextFieldItemEditing:self.textFieldItem];
}
////////////////////////////////////////////////////////////////////////////////////////////////////
-(void)updateField:(UITextField*)field
{
    self.textFieldItem.text = field.text;
    if([self.delegate respondsToSelector:@selector(didChangeTextFieldItemText:)])
        [self.delegate didChangeTextFieldItemText:self.textFieldItem];
}
////////////////////////////////////////////////////////////////////////////////////////////////////

@end
