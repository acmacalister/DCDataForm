////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCTextFieldItem.h
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import <Foundation/Foundation.h>

@interface DCTextFieldItem : NSObject

@property(nonatomic, copy)NSString *text;
@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *placeholder;

- (instancetype)initWithTitle:(NSString *)title placeholder:(NSString *)placeholder text:(NSString *)text;

@end
