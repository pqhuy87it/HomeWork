//
//  Internship.h
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Staff.h"

@interface Internship : Staff
@property (nonatomic, strong) NSString *school;
- (id) initWithName: (NSString *)name
         withSchool: (NSString *)school;
@end
