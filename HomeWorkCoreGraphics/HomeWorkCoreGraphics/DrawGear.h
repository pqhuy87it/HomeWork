//
//  DrawGear.h
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/21/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawGear : UIView
-(void)start:(CGPoint)point;
-(void)addPoint:(CGPoint)point;
-(void)addPointGear1:(CGPoint)point;
-(void)addPointGear2:(CGPoint)point;
-(void)addPointGear3:(CGPoint)point;
-(void)addPointGear4:(CGPoint)point;
-(void)end:(CGPoint)point;
-(id)initWIthStartPoint:(CGPoint)startPoint;
-(void)clear;
@property (nonatomic) CGPoint GearPoint1;
@property (nonatomic,assign) CGContextRef context;
@property (nonatomic,strong) NSMutableArray *points;
@property (nonatomic,strong) NSMutableArray *pointsGear1;
@property (nonatomic,strong) NSMutableArray *pointsGear2;
@property (nonatomic,strong) NSMutableArray *pointsGear3;
@property (nonatomic,strong) NSMutableArray *pointsGear4;
@end
