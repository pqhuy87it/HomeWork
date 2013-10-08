//
//  Cow.m
//  DemoOOP
//
//  Created by Huy on 10/6/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "Cow.h"

@implementation Cow

-(id)initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"um",@"Boo", nil];
    return self;
}

-(void)sound
{
    NSLog(@"%@",self->_voices);
}
@end
