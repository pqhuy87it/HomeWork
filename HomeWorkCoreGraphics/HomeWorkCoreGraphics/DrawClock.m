//
//  DrawClock.m
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/20/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//

#import "DrawClock.h"
@interface DrawClock()
{
    CGPoint center;
}

@property (nonatomic,strong) NSTimer *timer;
@end
@implementation DrawClock

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)start
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                                  target:self
                                                selector:@selector(drawRect:)
                                                userInfo:Nil
                                                 repeats:YES];
    [self setNeedsDisplay];
    
}

-(void)stop
{
    [self.timer invalidate];
    self.timer = Nil;
}


- (void)drawRect:(CGRect)rect
{
    center = CGPointMake(360, 490);
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:(NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit) fromDate:[NSDate date]];
	NSInteger seconds = [dateComponents second];
	NSInteger minutes = [dateComponents minute];
	NSInteger hours = [dateComponents hour];
    if (hours > 12) hours -=12; //PM
    
	//set angles for each of the hands
	CGFloat secAngle = 2*M_PI/60*seconds;
	CGFloat minAngle =2*M_PI/60*(minutes+seconds/60)-2*M_PI/60*seconds;
    CGFloat hourAngle;
    if (hours >12) {
      hourAngle  = 2*M_PI/12*(hours-12+minutes/60)-2*M_PI/60*(minutes+seconds/60);
    }
	else
    {
        hourAngle =  2*M_PI/12*(hours+minutes/60)-2*M_PI/60*(minutes+seconds/60);
    }
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGMutablePathRef secondPath = CGPathCreateMutable();
    CGMutablePathRef minuePath = CGPathCreateMutable();
    CGMutablePathRef hoursPath = CGPathCreateMutable();
    
    CGPathMoveToPoint(secondPath, NULL, center.x, center.y);
    CGPathAddLineToPoint(secondPath, NULL, center.x , center.y -300);
    CGContextTranslateCTM(ctx, center.x, center.y);
    CGContextRotateCTM(ctx, secAngle);
    CGContextTranslateCTM(ctx, -center.x, -center.y);
    CGContextSetLineWidth(ctx, 3.0f);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    [[UIColor redColor] setStroke];
    CGContextAddPath(ctx, secondPath);
    CGContextStrokePath(ctx);
    CGContextSaveGState(ctx);
    
    CGPathMoveToPoint(minuePath, NULL, center.x, center.y);
    CGPathAddLineToPoint(minuePath, NULL, center.x , center.y - 230);
    CGContextTranslateCTM(ctx, center.x, center.y);
    CGContextRotateCTM(ctx, minAngle);
    CGContextTranslateCTM(ctx, -center.x, -center.y);
    CGContextSetLineWidth(ctx, 4.0f);
    [[UIColor yellowColor]setStroke];
    CGContextAddPath(ctx, minuePath);
    CGContextStrokePath(ctx);
    CGContextSaveGState(ctx);
    
    CGPathMoveToPoint(hoursPath, NULL, center.x, center.y);
    CGPathAddLineToPoint(hoursPath, NULL, center.x, center.y - 180);
    CGContextTranslateCTM(ctx, center.x, center.y);
    CGContextRotateCTM(ctx, hourAngle);
    CGContextTranslateCTM(ctx, -center.x, -center.y);
    CGContextSetLineWidth(ctx, 5.0f);
    [[UIColor blueColor]setStroke];
    CGContextAddPath(ctx, hoursPath);
    CGContextStrokePath(ctx);
    CGContextSaveGState(ctx);
    
    
    CGContextAddArc(ctx, center.x, center.y, 350, 0, 2*M_PI, YES);
    [[UIColor blackColor]setStroke];
    
    //Fill/Stroke the path
	CGContextDrawPath(ctx, kCGPathStroke);
}

@end
