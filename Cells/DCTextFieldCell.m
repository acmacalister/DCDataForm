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
        self.textLabel.numberOfLines = 0;
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
    
    float pad = 8;
    self.textField.frame = CGRectMake(self.textLabel.frame.size.width+pad, 0,
                                      self.contentView.frame.size.width-self.textLabel.frame.size.width,
                                      self.contentView.frame.size.height);
}
////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)setObject:(id)object
{
    self.textFieldItem = object;
    self.textLabel.text = self.textFieldItem.title;
    self.textField.text = self.textFieldItem.text;
    self.textField.text = self.textField.placeholder = self.textFieldItem.placeholder;
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
-(void)updateField:(UITextField*)field
{
    self.textFieldItem.text = field.text;
}
////////////////////////////////////////////////////////////////////////////////////////////////////

@end
