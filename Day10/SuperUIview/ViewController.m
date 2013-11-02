//
//  ViewController.m
//  SuperUIview
//
//  Created by Pham Quang Huy on 11/2/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int _vx ;
    int _vy ;
}
@property (weak, nonatomic) IBOutlet UIImageView *ball;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _vx = 1;
    _vy = 1;
}

-(void)move_ball
{
    [self randomV];
    self.ball.center = CGPointMake(self.ball.center.x + _vx, self.ball.center.y + _vy);
}

- (IBAction)pushTabOn:(id)sender {
    
    NSTimer *_timer = [NSTimer scheduledTimerWithTimeInterval:0.005f
                                                       target:self
                                                     selector:@selector(move_ball)
                                                     userInfo:Nil
                                                      repeats:YES];
    [_timer fire];
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
    else if((self.ball.center.y - 65 - self.ball.bounds.size.height/2)<0)
    {
        _vy = 0 + (arc4random()%3+1);
    }
}
@end
