//
//  DrawView.h
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/19/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawView : UIView
-(void)start:(CGPoint)point;
-(void)addPoint:(CGPoint)point;
-(void)end:(CGPoint)point;

@property (nonatomic,assign) CGContextRef context;

@end
