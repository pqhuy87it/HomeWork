//
//  Cavoi.m
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "Whale.h"

@implementation Whale
-(id)initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"guuu",@"guuu", nil];
    return self;
}

-(void)sound
{
    NSLog(@"%@",self->_voices);
}
@end
