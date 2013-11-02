//
//  ViewController2.m
//  SuperUIview
//
//  Created by Pham Quang Huy on 11/2/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
{
    NSTimer *_timer;
    NSTimer *mario_timer;
    float _alpha;
    int _vx;
    int _vy;
}

@property (weak, nonatomic) IBOutlet UIImageView *ball;
@property (weak, nonatomic) IBOutlet UIImageView *mario;

@end

@implementation ViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    if ((1>2)&&(2<3)) {
        NSLog(@"aaaaa");
    }
}

- (IBAction)tabOnKick:(id)sender
{
    if (![_timer isValid]) {
    _alpha = 0;
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.02f
                                              target:self
                                            selector:@selector(move_ball)
                                            userInfo:Nil
                                             repeats:YES];
    }
}
-(void)move_ball
{
    self.ball.transform = CGAffineTransformMakeRotation(_alpha);
    self.ball.center = CGPointMake(_ball.center.x + 1, _ball.center.y);
    _alpha = _alpha + M_PI/20;
    [self check];
}

-(void)moveball
{
    [self randomV];
    self.ball.transform = CGAffineTransformMakeRotation(_alpha);
    self.ball.center = CGPointMake(self.ball.center.x + _vx, self.ball.center.y + _vy);
    _alpha = _alpha + M_PI/20;
}

- (IBAction)tabOnJump:(id)sender {
    mario_timer = [NSTimer scheduledTimerWithTimeInterval:0.01f
                                              target:self
                                            selector:@selector(mario_move)
                                            userInfo:Nil
                                             repeats:YES];
    
}

-(void)mario_move
{
    self.mario.center = CGPointMake(self.mario.center.x, self.mario.center.y - 1);
    if (self.mario.center.y - self.mario.bounds.size.height/2 - 50 < 0) {
        [mario_timer invalidate];
        mario_timer = nil;
    }
}

-(void)check
{
    if ((self.ball.center.x +
         self.ball.bounds.size.width/2 >
         self.mario.center.x -
         self.mario.bounds.size.width/2+12)&&
        (self.ball.center.y -
         self.ball.bounds.size.height/2 <
         self.mario.center.y +
         self.mario.bounds.size.height/2))
    {
        [_timer invalidate];
        [mario_timer invalidate];
        //mario_timer = nil;
        _vx = -1;
        _vy = 1;
        //_timer = nil;
        NSTimer *timerr = [NSTimer scheduledTimerWithTimeInterval:0.01f
                                                           target:self
                                                         selector:@selector(moveball)
                                                         userInfo:Nil
                                                          repeats:YES];
        [timerr fire];
    }
}

-(void)randomV
{
    if   ((self.ball.center.x + self.ball.bounds.size.width/2)>self.view.bounds.size.width)
    {
        _vx = 0 - (arc4random()%3+1);
    }
    else if((self.ball.center.x - self.ball.bounds.size.width/2)<0)
    {
        _vx =  0 + (arc4random()%3+1);
    }
    else if((self.ball.center.y + self.ball.bounds.size.height/2)>self.view.bounds.size.height)
    {
        _vy =  0 - (arc4random()%3+1);
    }
    else if((self.ball.center.y - 60 - self.ball.bounds.size.height/2)<0)
    {
        _vy = 0 + (arc4random()%3+1);
    }
}

@end
