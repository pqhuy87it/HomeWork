//
//  SeniorManager.m
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "SeniorManager.h"
#import "Randomizer.h"
@implementation SeniorManager
- (id) initWithName: (NSString *)name
           andLevel: (int)level
         andCompany: (NSString*)company
{
    if (self = [super init]) {
        self.name = name;
        self.level = level;
        self.company = company;
    }
    return self;
}
@end
