//
//  LevelView.m
//  MillionRows
//
//  Created by TechMaster on 11/24/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "LevelView.h"
@interface LevelView()
{
    CGRect _originalBound;
}
@end
@implementation LevelView

- (void) setLevel:(int)level {
    //[self customInit];
    int w = 106;
    int h = 8;
    _originalBound = self.frame;
    self.frame = CGRectMake(_originalBound.origin.x,
                            _originalBound.origin.y,
                            w * level/6,
                            h);
    //NSLog(@"%d",level);
    //NSLog(@"%f - %f",_originalBound.origin.x,_originalBound.origin.y);
}

@end
