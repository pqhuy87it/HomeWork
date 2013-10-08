//
//  Scene.h
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Scene : NSObject
{
    NSMutableArray *animal;
}
@property (nonatomic,assign) int level;
@property (nonatomic,assign) float price;
@property (nonatomic,strong) NSMutableArray *animal;
@property (nonatomic,strong) NSMutableArray *background; //chua anh nen noi tiep nhau

-(void)addScene1;
@end
