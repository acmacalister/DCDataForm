////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCTextViewCell.h
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCTableViewCell.h"

@class DCTextViewItem;

@protocol DCTextViewCellDelegate <NSObject>

@optional
-(void)didStartTextViewItemEditing:(DCTextViewItem*)textViewItem;
-(void)didEndTextViewItemEditing:(DCTextViewItem*)textViewItem;
-(void)didChangeTextViewItemText:(DCTextViewItem*)textViewItem;

@end

@interface DCTextViewCell : DCTableViewCell

@property(nonatomic, strong)UITextView *textView;
@property(nonatomic,weak)id<DCTextViewCellDelegate>delegate;

@end
