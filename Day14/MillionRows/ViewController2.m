//
//  ViewController2.m
//  MillionRows
//
//  Created by Pham Quang Huy on 11/20/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController2.h"
#import "Randomizer.h"
#import "Staff.h"
#import "Manager.h"
#import "SeniorManager.h"
#import "NewHire.h"
#import "Internship.h"
#import "detailPerson.h"
@interface ViewController2 ()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *_data;
    NSMutableArray *superData;
    Staff *staff;
    Manager *manager;
    SeniorManager *seniorManager;
    NewHire *newhire;
    Internship *internship;
    detailPerson *detailperson;
}
@end

@implementation ViewController2

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _data = [NSMutableArray array];
    superData = [NSMutableArray array];
    [self setData];
}
-(void)setData
{
    for (int i = 0; i< 1000000; i++)
    {
        [_data removeAllObjects];
        staff = [[Staff alloc]initWithName:[Randomizer randomFullName]
                                  andTitle:@"Staff"];
        manager = [[Manager alloc]initWithName:[Randomizer randomFullName ]
                                      andLevel:arc4random()%10
                                      andTitle:@"Manager"];
        seniorManager = [[SeniorManager alloc]initWithName:[Randomizer randomFullName]
                                                  andLevel:arc4random()%10
                                                andCompany:[Randomizer randomCompany]
                                                  andTitle:@"SeniorManager"];
        newhire = [[NewHire alloc]initWithName:[Randomizer randomFullName]
                                      andTitle:@"NewHire"];
        internship = [[Internship alloc]initWithName:[Randomizer randomFullName]
                                          withSchool:[Randomizer randomSchool]
                                            andTitle:@"InternShip"];
        [_data addObject:staff];
        [_data addObject:manager];
        [_data addObject:seniorManager];
        [_data addObject:internship];
        [_data addObject:newhire];
        
        int index  = arc4random()%[_data count];
        [superData addObject:_data[index]];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [superData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cellID = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    Staff *staff1 =(Staff*)superData[indexPath.row];
    cell.textLabel.text = staff1.name;
    cell.detailTextLabel.text = staff1.title;
    //cell.imageView.image = sport.logo;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (!detailperson) {
        detailperson = [[detailPerson alloc] initWithNibName:@"detailPerson" bundle:nil];
    }
    [detailperson.person removeAllObjects];
    Staff *staff1                 = (Staff*)superData[indexPath.row];
    Manager *manager1             = (Manager*)superData[indexPath.row];
    SeniorManager *seniormanager1 = (SeniorManager*)superData[indexPath.row];
    Internship *internship1       = (Internship*)superData[indexPath.row];
    if ([staff1.title isEqualToString:@"Staff"]) {
        detailperson.person = [NSMutableArray array];
//        [detailperson.person addObject:@[staff1.name,
//                                         staff1.title]];
        [detailperson.person addObject:staff1.name];
        [detailperson.person addObject:staff1.title];
    }
    else if([staff1.title isEqualToString:@"Manager"])
    {
        detailperson.person = [NSMutableArray array];
        [detailperson.person addObject:staff1.name];
        [detailperson.person addObject:staff1.title ];
        [detailperson.person addObject:[NSString stringWithFormat:@"%d",manager1.level]];
    }
    else if([staff1.title isEqualToString:@"SeniorManager"])
    {
        detailperson.person = [NSMutableArray array];
        [detailperson.person addObject:staff1.name];
        [detailperson.person addObject:staff1.title];
        [detailperson.person addObject:[NSString stringWithFormat:@"%d",seniormanager1.level]],
        [detailperson.person addObject:seniormanager1.company];
    }
    else if([staff1.title isEqualToString:@"NewHire"])
    {
        detailperson.person = [NSMutableArray array];
        [detailperson.person addObject:staff1.name];
        [detailperson.person addObject:staff1.title];
    }
    else if([staff1.title isEqualToString:@"InternShip"])
    {
        detailperson.person = [NSMutableArray array];
        [detailperson.person addObject:staff1.name];
        [detailperson.person addObject:staff1.title];
        [detailperson.person addObject:internship1.school];
    }
    [self.navigationController pushViewController:detailperson animated:YES];
}

@end
