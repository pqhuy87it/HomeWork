//
//  Ex3.m
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/19/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//

#import "Ex3.h"
#import "DrawGear.h"

@interface Ex3 ()
{
    float dtheta,radius,pi,initialAngle,phi,alpha,startAngle,degrees;
}
@property (strong, nonatomic) IBOutlet DrawGear *drawView;

@end

@implementation Ex3

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
    [self setUpData];
    [self setUpGear];
    NSTimer *timer = [NSTimer timerWithTimeInterval:0.05 target:self selector:@selector(setUpGear) userInfo:Nil repeats:YES];
    [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSDefaultRunLoopMode];
}

-(void)quay
{
    NSLog(@"a");
    [self.view setNeedsDisplay];
}

-(void)setUpData
{
    pi = M_PI;
}

-(CGPoint)pointFromCircle:(double)radiusC addAngle:(double)angle addStartPoint:(CGPoint)startPoint
{
    double x =startPoint.x + radiusC * sin(angle);
    double y =startPoint.y - radiusC * cos(angle);
    CGPoint point = CGPointMake(x, y);
    return point;
}

-(void)Gear:(float)nteeth addInitAngle:(float)initAngle addToothWidth:(float)toothWidth addToothDepth:(float)toothDepth addChamfer:(float)chamfer addStartPoin:(CGPoint)startPoint
{
    radius = (toothWidth*nteeth)/(2*pi);
    dtheta = pi/nteeth;
    phi = dtheta *chamfer/toothWidth;
    alpha = dtheta *(toothWidth -2.0f*chamfer)/toothWidth;
    initialAngle = -dtheta /2 + initAngle;
    startAngle = initialAngle;
    degrees = startAngle - phi;
    CGPoint point0  = [self pointFromCircle:radius addAngle:(degrees+phi) addStartPoint:startPoint];
    [self.drawView start:point0];
    for (int i = 0; i < nteeth; i++) {
        CGPoint point1  = [self pointFromCircle:radius addAngle:(degrees+phi) addStartPoint:startPoint];
        [self.drawView addPoint:point1];
        CGPoint point2 = [self pointFromCircle:radius addAngle:(degrees + phi + alpha) addStartPoint:startPoint];
        [self.drawView addPoint:point2];
        CGPoint point3 = [self pointFromCircle:(radius - toothDepth) addAngle:(degrees + dtheta) addStartPoint:startPoint];
        [self.drawView addPoint:point3];
        CGPoint point4 = [self pointFromCircle:(radius - toothDepth) addAngle:(degrees + 2*dtheta)addStartPoint:startPoint];
        [self.drawView addPoint:point4];
        degrees += 2*dtheta;
    }
    [self.drawView end:point0];
}

-(void)setUpGear
{
    [self Gear:60 addInitAngle:0 addToothWidth:24 addToothDepth:18 addChamfer:5 addStartPoin:CGPointMake(380, 400)];

}

@end
