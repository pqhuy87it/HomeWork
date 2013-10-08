//
//  Pig.m
//  DemoOOP
//
//  Created by Huy on 10/6/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "Pig.h"

@implementation Pig
-(id)initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"Utt",@"Itt", nil];
    return self;
}

-(void)sound
{
    NSLog(@"%@",self->_voices);
}
@end
