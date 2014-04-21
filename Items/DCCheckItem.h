////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCCheckItem.h
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import <Foundation/Foundation.h>

@interface DCCheckItem : NSObject

/**
 The title/text of the switch
 */
@property(nonatomic, copy)NSString *title;

/**
 The state of the checkmark
 */
@property(nonatomic, assign)BOOL checked;

/**
 Create a new check item.
 @param title is the title/text of the check.
 @param checked is the state the checkmark should start in.
 @return a newly initialized check item
 */
- (instancetype)initWithTitle:(NSString*)title checked:(BOOL)checked;

/**
 Factory method to create a check item
 @param title is the title/text of the check.
 @param checked is the state the checkmark should start in.
 @return a newly initialized check item
 */
+(instancetype)itemWithTitle:(NSString*)title checked:(BOOL)checked;

@end
