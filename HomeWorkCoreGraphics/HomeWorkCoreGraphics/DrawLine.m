//
//  DrawLine.m
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/19/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//

#import "DrawLine.h"

@implementation DrawLine

-(id)initWIthStartPoint:(CGPoint)startPoint
{
    self = [super init];
    if (self) {
        _startPoint = startPoint;
        _points = [NSMutableArray new];
    }
    return self;
}
-(void)addPoint:(CGPoint)point{
    [self.points addObject:[NSValue valueWithCGPoint:point]];
    
}
-(void)renderInContext:(CGContextRef)ctx{
    CGContextMoveToPoint(ctx, self.startPoint.x, self.startPoint.y);
    for (NSValue *pointValue in self.points) {
        CGPoint point = [pointValue CGPointValue];
        CGContextAddLineToPoint(ctx, point.x, point.y);
    }
    CGContextDrawPath(ctx, kCGPathStroke);
}

@end
