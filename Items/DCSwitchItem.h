////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCSwitchItem.h
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import <Foundation/Foundation.h>

@interface DCSwitchItem : NSObject

/**
 The state of the switch
 */
@property(nonatomic, assign)BOOL on;

/**
 The title/text of the switch
 */
@property(nonatomic, copy)NSString *title;

/**
 Create a new switch item.
 @param title is the title/text of the switch.
 @param on is the state the switch should start in.
 @return a newly initialized switch item
 */
- (instancetype)initWithTitle:(NSString *)title on:(BOOL)on;

/**
 Factory method to create a switch item
 @param title is the title/text of the switch.
 @param on is the state the switch should start in.
 @return a newly initialized switch item
 */
+(instancetype)itemWithTitle:(NSString*)title on:(BOOL)on;

@end
