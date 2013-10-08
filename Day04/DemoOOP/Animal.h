//
//  Animal.h
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject
{
    //Khai bao instance variable
    @public NSString *_id;//Ma so trong co so du lieu
    @protected BOOL _moveable;
    NSMutableArray *_voices;
    NSMutableArray *_posture;//anh cua tung dong tac
    @public BOOL _appear;
    @public int _price;
}
//Cach khai bao property - thuoc tinh. Anh xa vao vien thanh phan co cac property atttribute de thay doi tinh chat cua thuoc tinh
//THuoc tinh se sinh ra getter va setter function trong khi do bien thanh phan rat don gian
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *origin;

-(id) initWithName: (NSString*) name;
-(id) initWithName:(NSString *)name andOrigin:(NSString*) origin;
@end
