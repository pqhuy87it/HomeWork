//
//  Staff.m
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Staff.h"
#import "Randomizer.h"
@implementation Staff
- (id) initWithName: (NSString *)name
{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}
@end
