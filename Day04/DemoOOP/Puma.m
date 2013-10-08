//
//  Puma.m
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "Puma.h"

@implementation Puma

-(id) initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"Growww",@"Gruuu" ,nil];
    return self;
}

-(void) sound
{
    NSLog(@"%@",self->_voices);
}

@end
