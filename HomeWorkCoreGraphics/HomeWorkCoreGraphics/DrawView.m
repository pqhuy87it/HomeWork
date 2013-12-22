//
//  DrawView.m
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/19/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//

#import "DrawView.h"
#import "DrawLine.h"
@interface DrawView()

@property (nonatomic,weak)DrawLine *currentLine;
@property (nonatomic,strong)NSMutableArray *line;
@end
@implementation DrawView
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}

-(id)initWithCoder:(NSCoder*)aDecoder
{
    if (self= [super initWithCoder:aDecoder]) {
        [self initialize];
    }
    return self;
}

-(void)initialize{
    _line = [NSMutableArray new];
}

-(void)start:(CGPoint)point{
    DrawLine *newline = [[DrawLine alloc]initWIthStartPoint:point];
    [self.line addObject:newline];
    self.currentLine = newline;
    [self setNeedsDisplay];
    
}
-(void)addPoint:(CGPoint)point{
    [self.currentLine addPoint:point];
    [self setNeedsDisplay];
}
-(void)end:(CGPoint)point{
    [self.currentLine addPoint:point];
    self.currentLine  = nil;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(ctx, 5.0);
    CGContextSetLineCap(ctx, kCGLineCapRound);
    CGContextSetLineJoin(ctx, kCGLineJoinRound);
    for (DrawLine *line in self.line) {
        [line renderInContext:ctx];
    }
}

@end
