//
//  Sheep.m
//  DemoOOP
//
//  Created by Huy on 10/6/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "Sheep.h"

@implementation Sheep
-(id)initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"Bee",@"Bee", nil];
    return self;
}

-(void)sound
{
    NSLog(@"%@",self->_voices);
}
@end
