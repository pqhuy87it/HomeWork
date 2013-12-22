//
//  DrawGear.m
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/21/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//


#import "DrawGear.h"
@interface DrawGear()
{
    CGPoint currentPoint1;
    CGPoint CurrentPoint2;
    CGPoint CurrentPoint3;
    CGPoint CurrentPoint4;
    CGPoint CurrentPoint5;
}

@property (nonatomic,strong)NSMutableArray *line;
@end
@implementation DrawGear

-(id)initWithCoder:(NSCoder*)aDecoder
{
    if (self= [super initWithCoder:aDecoder]) {
        [self initialize];
    }
    return self;
}

-(id)initWIthStartPoint:(CGPoint)startPoint
{
    self = [super init];
    if (self) {
        _GearPoint1 = startPoint;
        _points = [NSMutableArray new];
    }
    return self;
}

-(void)initialize{
    _points = [NSMutableArray new];
}

-(void)start:(CGPoint)point{
    _GearPoint1 = point;
    [self setNeedsDisplay];
    
}
-(void)addPoint:(CGPoint)point{
    [self.points addObject:[NSValue valueWithCGPoint:point]];
}

-(void)addPointGear1:(CGPoint)point{
    [self.pointsGear1 addObject:[NSValue valueWithCGPoint:point]];
}
-(void)addPointGear2:(CGPoint)point{
    [self.pointsGear2 addObject:[NSValue valueWithCGPoint:point]];
}
-(void)addPointGear3:(CGPoint)point{
    [self.pointsGear3 addObject:[NSValue valueWithCGPoint:point]];
}
-(void)addPointGear4:(CGPoint)point{
    [self.pointsGear4 addObject:[NSValue valueWithCGPoint:point]];
}

-(void)end:(CGPoint)point{
    [self.points addObject:[NSValue valueWithCGPoint:point]];
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    CGMutablePathRef secondPath = CGPathCreateMutable();
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 2.0);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    CGContextMoveToPoint(ctx, self.GearPoint1.x, self.GearPoint1.y);
    currentPoint1 = self.GearPoint1;
    for (NSValue *pointValue in self.points) {
        
        CGPathMoveToPoint(secondPath, NULL, currentPoint1.x, currentPoint1.y);
        CGPoint point = [pointValue CGPointValue];
        CGPathAddLineToPoint(secondPath, NULL, point.x, point.y);
        currentPoint1 = point;
        CGPathAddLineToPoint(secondPath, NULL, point.x, point.y);
        CGContextTranslateCTM(ctx, self.GearPoint1.x, self.GearPoint1.y);
        CGContextRotateCTM(ctx, 2*M_PI/600);
        CGContextTranslateCTM(ctx, -self.GearPoint1.x, -self.GearPoint1.y);
//        CGContextTranslateCTM(ctx, 380, 400);
//        CGContextRotateCTM(ctx, -2*M_PI/600);
//        CGContextTranslateCTM(ctx, -380, -400);

    }
    
    [[UIColor blueColor]setStroke];
    CGContextAddPath(ctx, secondPath);
    CGContextStrokePath(ctx);
    CGContextSaveGState(ctx);
    
    if ([_points count]>= 2410) {
        [_points removeAllObjects];
    }
    
}

-(void)clear
{
    [self.points removeAllObjects];
    [self setNeedsDisplay];
}

@end
