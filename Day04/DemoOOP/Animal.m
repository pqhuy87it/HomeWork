//
//  Animal.m
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "Animal.h"
@interface Animal()
{
    NSString *_SecretDent;
}
@end
@implementation Animal

-(id) initWithName: (NSString*) name
{
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}

-(id) initWithName:(NSString *)name andOrigin:(NSString*) origin
{
    if(self = [super init])
    {
        self.name = name;
        self.origin = origin;
    }
    return  self;
}

-(void) sound
{
    
}
@end
