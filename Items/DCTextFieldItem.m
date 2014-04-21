////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCTextFieldItem.m
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCTextFieldItem.h"

@implementation DCTextFieldItem

- (instancetype)initWithTitle:(NSString *)title placeholder:(NSString *)placeholder text:(NSString *)text
{
    if(self = [super init])
    {
        self.title = title;
        self.placeholder = placeholder;
        self.text = text;
    }
    
    return self;
}

+(instancetype)itemWithTitle:(NSString *)title placeholder:(NSString *)placeholder text:(NSString *)text
{
    return [[DCTextFieldItem alloc] initWithTitle:title placeholder:placeholder text:text];
}

@end
