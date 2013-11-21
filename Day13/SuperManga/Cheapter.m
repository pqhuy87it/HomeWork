//
//  Cheapter.m
//  SuperManga
//
//  Created by Pham Quang Huy on 11/10/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import "Cheapter.h"
@implementation Cheapter
+NewCheapWithName:(NSString*)name
{
    Cheapter *cheapter = [[Cheapter alloc]init];
    cheapter.cheapName = name;
    return cheapter;
}
@end
