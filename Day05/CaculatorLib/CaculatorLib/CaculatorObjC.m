//
//  CaculatorLib.m
//  CaculatorLib
//
//  Created by Huy on 10/14/13.
//  Copyright (c) 2013 Huy. All rights reserved.
//

#import "CaculatorObjC.h"

@implementation CaculatorObjC


-(int) nhan2so:(int)a addb:(int) b
{
    return a*b;
}
-(float) chia2so:(float)a addb:(float) b
{
    return a/b;
}

-(int) cong2so:(int)a addb:(int) b
{
    return a+b;
}

-(int) tru2so:(int)a addb:(int) b
{
    return a-b;
}

-(int) binhphuong:(int) x
{
    return pow(x, 2);
}

-(float) khaican:(int) x
{
    return pow(x, 0.5);
}

@end
