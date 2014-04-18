////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCCheckItem.m
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCCheckItem.h"

@implementation DCCheckItem

- (instancetype)initWithChecked:(BOOL)checked
{
    if(self = [super init])
    {
        self.checked = checked;
    }
    
    return self;
}

@end
