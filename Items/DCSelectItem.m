////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCSelectItem.m
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCSelectItem.h"

@implementation DCSelectItem

- (instancetype)initWithTitle:(NSString *)title text:(NSString *)text
{
    if(self = [super init])
    {
        self.title = title;
        self.detailText = text;
    }
    
    return self;
}

@end
