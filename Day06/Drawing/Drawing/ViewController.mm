//
//  ViewController.m
//  Drawing
//
//  Created by Huy on 10/16/13.
//  Copyright (c) 2013 Huy. All rights reserved.
//

#import "ViewController.h"
#include "Line.h"
#include "Car.h"

@interface ViewController ()

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

- (IBAction)tabOnPrintLine:(id)sender {
    inramanhinh();
}

- (IBAction)tabOnPrintCar:(id)sender {
    inhinhoto();
}

@end
