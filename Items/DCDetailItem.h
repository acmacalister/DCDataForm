////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCDetailItem.h
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import <Foundation/Foundation.h>

@interface DCDetailItem : NSObject

@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *detailText;

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text;

+ (instancetype)itemWithTitle:(NSString *)title text:(NSString *)text;

@end
