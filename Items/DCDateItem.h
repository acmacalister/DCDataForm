////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCDateItem.h
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import <Foundation/Foundation.h>

@interface DCDateItem : NSObject

/**
 The date of the current date picker.
 */
@property(nonatomic, strong)NSDate *date;

/**
 Create a new date item.
 @param date is the date of the picker.
 @return a newly initialized date item
 */
- (instancetype)initWithDate:(NSDate *)date;

/**
 Factory method to create a date item
 @param date is the date of the picker.
 @return a newly initialized check item
 */
+(instancetype)itemWithDate:(NSDate *)date;

@end
