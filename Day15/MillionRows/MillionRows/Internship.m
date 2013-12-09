//
//  Internship.m
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Internship.h"
#import "Randomizer.h"
@implementation Internship
- (id) initWithName: (NSString *)name
         withSchool: (NSString *)school
{
    if (self = [super init]) {
        self.name = name;
        self.school = school;
    }
    return self;
}
@end
