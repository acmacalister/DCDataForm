////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  DCDataForm.h
//
//  Created by Austin Cherry on 4/18/14.
//  Copyright (c) 2014 Vluxe. All rights reserved.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#import <Foundation/Foundation.h>
#import "DCSwitchItem.h"
#import "DCTextFieldItem.h"
#import "DCTextViewItem.h"
#import "DCCheckItem.h"
#import "DCDateItem.h"
#import "DCDetailItem.h"
#import "DCSelectItem.h"

@interface DCDataForm : NSObject

+ (Class)classForObject:(id)object;

@end
