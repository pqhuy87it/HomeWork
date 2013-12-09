//
//  SeniorManager.h
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Manager.h"

@interface SeniorManager : Manager
@property (nonatomic, strong) NSString* company;

- (id) initWithName: (NSString *)name
           andLevel: (int)level
         andCompany: (NSString*)company;
@end
