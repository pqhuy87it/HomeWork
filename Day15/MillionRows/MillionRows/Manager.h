//
//  Manager.h
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Staff.h"

@interface Manager : Staff
@property (nonatomic, assign) int level;

- (id) initWithName: (NSString *)name
           andLevel: (int) level;
@end
