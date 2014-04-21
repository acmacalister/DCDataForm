////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCTextFieldCell.h
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCTableViewCell.h"

@class DCTextFieldItem;

@protocol DCTextFieldCellDelegate <NSObject>

@optional
-(void)didStartTextFieldItemEditing:(DCTextFieldItem*)textFieldItem;
-(void)didEndTextFieldItemEditing:(DCTextFieldItem*)textFieldItem;

@end

@interface DCTextFieldCell : DCTableViewCell

@property(nonatomic, strong)UITextField *textField;
@property(nonatomic,weak)id<DCTextFieldCellDelegate>delegate;

@end
