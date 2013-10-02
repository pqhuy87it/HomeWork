//
//  ViewController.m
//  iamrich
//
//  Created by iOS18 on 9/23/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ruby;
@property (weak, nonatomic) IBOutlet UILabel *iamrich;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.ruby.alpha = 0;
    if(!_player.playing){
        [_player play];
    }
}

-(void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //self.ruby.alpha = 1;
    [UIView animateWithDuration:4 animations:^{
        self.ruby.alpha =1;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:3 animations:^{
            self.iamrich.center = CGPointMake(self.iamrich.center.x, 400);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:2 animations:^{
                NSString *_path = [[NSBundle mainBundle]pathForResource:@"background-music" ofType:@"caf"];
                NSURL *_url = [NSURL fileURLWithPath:_path];
                _player = [[AVAudioPlayer alloc]initWithContentsOfURL:_url error:NULL];
                _player.numberOfLoops = -1;
                [_player play];
            } completion:Nil];
        }];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tabOnHelloWorld:(UIButton *)sender {
    NSString *steve = @"Steve Job";
    NSLog(@"Hello WOrld of %@",steve);
}
- (IBAction)tabOnTestLog:(UIButton *)sender {
    int x = 10, y= 100;
    NSLog(@"ALL YOUR BASE ARE BELONG TO uS");
    NSLog(@"x = %d, y = %d",x,y);
    NSLog(@"%s\t%s\t0x%04x","hex","value",0x1243);
}
- (IBAction)tapOnCfoF:(UIButton *)sender {
    float tempC= 80.5;
    float tempF = (tempC*9)/5 + 32;
    NSLog(@"TemCelsius = 80.5 TemFahrenheit = %f",tempF);
}
- (IBAction)tapOnFforC:(UIButton *)sender {
    float tempF = 177.0;
    float tempC = ((tempF - 32)*5	)/9;
    NSLog(@"TemCelsius = 177 TemCelsius = %f",tempC);
}

@end
