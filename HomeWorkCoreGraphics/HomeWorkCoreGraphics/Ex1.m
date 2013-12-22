//
//  Ex1.m
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/19/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//

#import "Ex1.h"
#import "DrawView.h"
@interface Ex1 ()
{
    int x1,x2,y1,y2,h;
    CGPoint startPoint,endPoint,p1,p2;

}
@property (strong, nonatomic) IBOutlet DrawView *drawView;
//@property (nonatomic,weak) DrawView *drawview;
@end

@implementation Ex1

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
}

- (IBAction)pan:(UIPanGestureRecognizer*)sender {
    CGPoint point = [sender locationInView:sender.view];
    if (sender.state == UIGestureRecognizerStateBegan) {
        [self.drawView start:point];
        startPoint = point;
    }
    else if(sender.state == UIGestureRecognizerStateEnded)
    {
        //end point line
        endPoint = point;
        float phi = atan2(endPoint.y -startPoint.y, endPoint.x - startPoint.x);
        h = sqrt(pow(endPoint.y -startPoint.y, 2)+ pow(endPoint.x - startPoint.x, 2))/8;
        float tip1angle = phi - M_PI / 8; // -30°
        float tip2angle = phi + M_PI / 8; // +30°
        
        float x3 = endPoint.x - h * cos(tip1angle);
        float x4 = endPoint.x - h * cos(tip2angle);
        float y3 = endPoint.y -  h * sin(tip1angle);
        float y4 = endPoint.y -  h * sin(tip2angle);
        p1 = CGPointMake(x3, y3);
        p2 = CGPointMake(x4, y4);
        [self.drawView addPoint:endPoint];
        [self.drawView addPoint:p1];
        [self.drawView addPoint:endPoint];
        [self.drawView addPoint:p2];
        [self.drawView end:endPoint];

    }
}


@end
