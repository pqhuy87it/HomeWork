//
//  ViewController2.m
//  PresentModelView
//
//  Created by Huy on 10/26/13.
//  Copyright (c) 2013 Huy. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

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
	// Do any additional setup after loading the view.
}

- (IBAction)tabOnViewControl:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
