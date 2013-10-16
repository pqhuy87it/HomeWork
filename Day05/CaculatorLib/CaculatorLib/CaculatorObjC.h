//
//  CaculatorLib.h
//  CaculatorLib
//
//  Created by Huy on 10/14/13.
//  Copyright (c) 2013 Huy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CaculatorObjC : NSObject

@property (nonatomic,assign) NSInteger *variable1;
@property (nonatomic,assign) NSInteger *variable2;
@property (nonatomic,assign) NSInteger *result;

-(int) nhan2so:(int)a addb:(int) b;
-(float) chia2so:(float)a addb:(float) b;
-(int) cong2so:(int)a addb:(int) b;
-(int) tru2so:(int)a addb:(int) b;
-(int) binhphuong:(int) x;
-(float) khaican:(int) x;
@end
