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

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

@end
