//
//  Staff.h
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Staff : NSObject
@property (nonatomic, strong) NSString* name;
@property (nonatomic,strong) NSString* title;
- (id) initWithName: (NSString *)name andTitle:(NSString*)title;
@end
