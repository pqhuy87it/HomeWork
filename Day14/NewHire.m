//
//  NewHire.m
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "NewHire.h"
#import "Randomizer.h"
@implementation NewHire
- (id) initWithName: (NSString *)name
    withInProbation: (BOOL) inProbation
           andTitle:(NSString*)title
{
    if (self = [super init]) {
        self.name = name;
        self.inProbation = inProbation;
        self.title = title;
    }
    return self;
}
@end
