//
//  Manager.m
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Manager.h"
#import "Randomizer.h"
@implementation Manager
- (id) initWithName: (NSString *)name
           andLevel: (int) level
{
    if (self = [super init]) {
        self.name = name;
        self.level = level;
    }
    return self;
}
@end
