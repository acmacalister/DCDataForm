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

@property(nonatomic, assign)BOOL on;
@property(nonatomic, copy)NSString *title;

- (instancetype)initWithTitle:(NSString *)title on:(BOOL)on;

@end
