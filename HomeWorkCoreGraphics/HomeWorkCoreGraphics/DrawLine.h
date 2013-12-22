//
//  DrawLine.h
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/19/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawLine : NSObject
@property (nonatomic) CGPoint startPoint;
@property (nonatomic,strong)NSMutableArray *points;
-(id)initWIthStartPoint:(CGPoint)startPoint;
-(void)addPoint:(CGPoint)point;
-(void)renderInContext:(CGContextRef)ctx;

@end
