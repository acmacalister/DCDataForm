////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCSwitchItem.m
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCSwitchItem.h"

@implementation DCSwitchItem

- (instancetype)initWithTitle:(NSString *)title on:(BOOL)on
{
    if(self = [super init])
    {
        self.title = title;
        self.on = on;
    }
    
    return self;
}

@end
