//
//  DrawClock.h
//  HomeWorkCoreGraphics
//
//  Created by Phạm Quang Huy on 12/20/13.
//  Copyright (c) 2013 Phạm Quang Huy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawClock : UIView
@property (weak, nonatomic) IBOutlet UILabel *center;
-(void)start;
@end
