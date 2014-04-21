////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCDateViewCell.h
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCTableViewCell.h"

@class DCDateItem;

@protocol DCDateViewCellDelegate <NSObject>

@optional
-(void)dateDidChange:(DCDateItem*)dateItem;

@end

@interface DCDateViewCell : DCTableViewCell

@property(nonatomic,weak)id<DCDateViewCellDelegate>delegate;

@end
