//
//  Ex2.m
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/19/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//

#import "Ex2.h"
#import "DrawClock.h"
@interface Ex2 ()
@property (strong, nonatomic) IBOutlet DrawClock *drawclock;
@property (weak, nonatomic) IBOutlet UILabel *center;

@end

@implementation Ex2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSTimer *timer= [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(displayTime) userInfo:nil repeats:YES];
    
    NSRunLoop *runLoop = [NSRunLoop mainRunLoop];
    
    [runLoop addTimer:timer forMode:NSDefaultRunLoopMode];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)displayTime

{
    [self.view setNeedsDisplay];
}

@end
