////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCTextViewItem.m
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCTextViewItem.h"

@implementation DCTextViewItem

- (instancetype)initWithText:(NSString *)text
{
    if(self = [super init])
    {
        self.text = text;
    }
    
    return self;
}

@end
