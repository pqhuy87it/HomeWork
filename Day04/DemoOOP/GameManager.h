//
//  GameManager.h
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameManager : NSObject
@property (nonatomic,assign) int currentLevel;
@property (nonatomic,assign) int coinAmouns;
@property (nonatomic,readonly) int coinStarting;
-(id) initWithCoint:(int)startingCoins;
-(void) purchaseCoint:(int) numberOfCoins;
-(void) startGame;
-(void) pauseGame;
-(void) resumeGame;
-(void) endGame;

@end
