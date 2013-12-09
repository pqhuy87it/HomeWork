//
//  Randomizer.h
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Staff.h"
/*Chịu trách nhiệm sinh dữ liệu giả lập */
@interface Randomizer : NSObject
+ (id)sharedManager;
+ (NSString*) randomFullName;
+ (NSString*) randomCompany;
+ (NSString*) randomSchool;
+ (Staff*) randomStaff;
@end
