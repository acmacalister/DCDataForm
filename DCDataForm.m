////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCDataForm.m
//  iOS Tester
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import "DCDataForm.h"
#import "DCSwitchViewCell.h"
#import "DCTextFieldCell.h"
#import "DCTextViewCell.h"
#import "DCCheckViewCell.h"
#import "DCDateViewCell.h"
#import "DCDetailViewCell.h"
#import "DCSelectViewCell.h"

@implementation DCDataForm

////////////////////////////////////////////////////////////////////////////////////////////////////
+ (Class)classForObject:(id)object
{
    if([object isKindOfClass:[DCSwitchItem class]])
        return [DCSwitchViewCell class];
    else if([object isKindOfClass:[DCTextFieldItem class]])
        return [DCTextFieldCell class];
    else if([object isKindOfClass:[DCTextViewItem class]])
        return [DCTextViewCell class];
    else if([object isKindOfClass:[DCCheckItem class]])
        return [DCCheckViewCell class];
    else if([object isKindOfClass:[DCDateItem class]])
        return [DCDateViewCell class];
    else if([object isKindOfClass:[DCDetailItem class]])
        return [DCDetailViewCell class];
    else if([object isKindOfClass:[DCSelectItem class]])
        return [DCSelectViewCell class];
    return nil;
}
////////////////////////////////////////////////////////////////////////////////////////////////////

@end
