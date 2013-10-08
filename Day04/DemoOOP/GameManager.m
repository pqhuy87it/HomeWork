//
//  GameManager.m
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "GameManager.h"

@implementation GameManager
@synthesize coinStarting;
@synthesize coinAmouns;
-(id) initWithCoint:(int) startingCoins
{
    if(self = [super init])
    {
        coinStarting = startingCoins;
    }
    return self;
}

-(void) purchaseCoint:(int) numberOfCoins
{
    
}

-(void) startGame
{
    
}

-(void) endGame
{
    
}

-(void) pauseGame
{
    
}

-(void) resumeGame
{
    
}


@end
