//
//  Randomizer.m
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Randomizer.h"

@implementation Randomizer
+ (id)sharedManager {
    static Randomizer *randomizer = nil;
    static dispatch_once_t dispatchOnce;
    dispatch_once(&dispatchOnce, ^{
        randomizer = [self new];
    });
    return randomizer;
}

+ (NSString*) randomFullName
{
    NSArray *firstNames = @[@"Nguyễn ",
                            @"Trần ",
                            @"Lê ",
                            @"Phạm ",
                            @"Trịnh ",
                            @"Vương ",
                            @"Lý ",
                            @"Nghiêm ",
                            @"Định "];
    
    NSArray *middleNames = @[@"Quang ",
                             @"Anh ",
                             @"Thị ",
                             @"Bá ",
                             @"Công ",
                             @"Văn ",
                             @"Đại ",
                             @"Trường "];
    NSArray *lastNames = @[@"Huy",
                           @"Hoàng",
                           @"Quân",
                           @"Liên",
                           @"Thuý",
                           @"Hùng",
                           @"Hiền",
                           @"Quang"];
    
    int indexFirstName = arc4random() % [firstNames count];
    int indexLastName = arc4random() % [lastNames  count];
    int indexMiddleName = arc4random() % [middleNames count];
    
    return [NSString stringWithFormat:@"%@ %@ %@",
            firstNames[indexFirstName],
            middleNames[indexMiddleName],
            lastNames[indexLastName]];
}
+ (NSString*) randomCompany
{
    NSArray *companies = @[@"FPT",
                               @"CMC",
                               @"Viettel",
                               @"Binh Anh Eletronics",
                               @"Tinh Van",
                               @"CNC",
                               @"Techmaster"];
    int index = arc4random() % [companies count];
    return companies[index];
}
+ (NSString*) randomSchool
{
    NSArray *schools = @[@"University of Technology",
                               @"National Univ of Economy",
                               @"Foreign Trade College",
                               @"Police Academy",
                               @"Firefigher Academy",
                               @"Post Telecommunication & Technologgy Institute",
                               @"Banking Academy"];
    int index = arc4random() % [schools count];
    return schools[index];
}
@end
