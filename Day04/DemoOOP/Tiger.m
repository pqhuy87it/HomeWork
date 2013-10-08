//
//  Tiger.m
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "Tiger.h"

@implementation Tiger
-(id) initWithName:(NSString *)name
{
    self = [super initWithName:name];
    self->_voices = [NSMutableArray arrayWithObjects:@"Oar",@"Grrr", nil];
    return self;
}

-(void) sound
{
    NSLog(@"%@",self->_voices);
}

-(void) doSomethingWithId
{
    self->_moveable = YES; //truy xuat bien thanh phan
    NSLog(@"%d",_moveable); //neu ham truy xuat bien trong cung 1 doi tuong
}
@end
