//
//  ViewController.m
//  AutoLayoutHomeWork
//
//  Created by Huy on 10/26/13.
//  Copyright (c) 2013 Huy. All rights reserved.
//

#import "ViewController.h"
#define DEVICE_SIZE [[[[UIApplication sharedApplication] keyWindow] rootViewController].view convertRect:[[UIScreen mainScreen] bounds] fromView:nil].size

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *pic1;
@property (weak, nonatomic) IBOutlet UIImageView *pic2;
@property (weak, nonatomic) IBOutlet UIImageView *pic3;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews
{
    float h = DEVICE_SIZE.height;
    float w = DEVICE_SIZE.width;
    if (h > w) {
        self.pic1.center = CGPointMake(w/2, h/4);
        self.pic2.center = CGPointMake(w/2, (2*h)/4);
        self.pic3.center = CGPointMake(w/2, (3*h)/4);
    }
    else
    {
        self.pic1.center = CGPointMake(w/4,h/2);
        self.pic2.center = CGPointMake((2*w)/4,h/2);
        self.pic3.center = CGPointMake((3*w)/4,h/2);
    }
}

@end
