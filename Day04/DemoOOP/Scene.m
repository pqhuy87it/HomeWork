//
//  Scene.m
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "Scene.h"
#import "Tiger.h"
#import "Cow.h"
#import "Pig.h"
#import "Sheep.h"
#import "Whale.h"
#import "Delphinapterus.h"
#import "spermwhale.h"
#import "Puma.h"
#import "Lion.h"
#import "Animal.h"
@implementation Scene

@synthesize animal;
-(id)init
{
    if(self = [super init])
    {
        animal = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addScene1
{

}
@end
