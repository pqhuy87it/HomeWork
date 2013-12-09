//
//  Randomizer.m
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "Randomizer.h"

#import "Manager.h"
#import "SeniorManager.h"
#import "NewHire.h"
#import "Internship.h"

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
    NSArray *firstNames = @[@"Nguyễn",
                            @"Trần",
                            @"Lê",
                            @"Phạm",
                            @"Trịnh",
                            @"Vương",
                            @"Lý",
                            @"Nghiêm",
                            @"Định",
                            @"Mạc",
                            @"Bùi",
                            @"Phạm"];
    
    NSArray *middleNames = @[@"Thị",
                             @"Văn",
                             @"Hồng",
                             @"Hải",
                             @"Hữu",
                             @"Minh",
                             @"Long",
                             @"Dũng",
                             @"Lan",
                             @"Phong",
                             @"Mạnh"];
    NSArray *lastNames = @[@"Lan",
                           @"Cường",
                           @"Dũng",
                           @"Chung",
                           @"Toàn",
                           @"Đông",
                           @"Long",
                           @"Thanh",
                           @"Hương",
                           @"Trà",
                           @"Hạnh"];
    
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

+ (Staff*) randomStaff  {
    int staffType = arc4random() % 5;
    switch (staffType) {
        case 0:
            return [[Staff alloc] initWithName: [Randomizer randomFullName]];
            break;
        case 1:
            return [[Manager alloc] initWithName:[Randomizer randomFullName] andLevel:arc4random() % 5];
        case 2:
            return [[SeniorManager alloc] initWithName:[Randomizer randomFullName]
                                              andLevel:arc4random() % 5
                                            andCompany:[Randomizer randomCompany]];
        case 3:
            return [[NewHire alloc] initWithName:[Randomizer randomFullName]
                                 withInProbation:arc4random() % 2];
        case 4:
            return [[Internship alloc] initWithName:[Randomizer randomFullName]
                                         withSchool:[Randomizer randomSchool]];
        default:
            return nil;
            break;
    }
}
@end
