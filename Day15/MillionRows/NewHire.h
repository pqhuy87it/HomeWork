//
//  NewHire.h
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Staff.h"

@interface NewHire : Staff
@property (nonatomic, assign) BOOL inProbation;
- (id) initWithName: (NSString *)name
    withInProbation: (BOOL) inProbation;
@end
