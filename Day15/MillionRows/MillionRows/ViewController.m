//
//  ViewController.m
//  MillionRows
//
//  Created by techmaster on 11/17/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import "ViewController.h"
#import "Randomizer.h"
#import "Staff.h"
#import "Manager.h"
#import "SeniorManager.h"
#import "NewHire.h"
#import "Internship.h"


#import "NewHireCell.h"
#import "InternshipCell.h"
#import "ManagerCell.h"
#import "SeniorManagerCell.h"
@interface ViewController ()
{
    NSMutableArray *_data;
}
@end

@implementation ViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    [self generateData];
}

- (void) generateData
{
    int row_count = 100000;
    if (_data) return;
    _data = [[NSMutableArray alloc] initWithCapacity:row_count];
    for (int i=0; i < row_count; i++) {
        [_data addObject: [Randomizer randomStaff]];
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *StaffID = @"Staff";
    static NSString *ManagerID = @"Manager";
    static NSString *SeniorManagerID = @"SeniorManager";
    static NSString *NewHireID = @"NewHire";
    static NSString *InternshipID = @"Internship";

    UITableViewCell *cell;
    Staff* staff = _data[indexPath.row];
    
    if ([staff isMemberOfClass:[Manager class]]) {
        Manager *manager = (Manager*) staff;
        ManagerCell *managerCell = (ManagerCell *)[self.tableView dequeueReusableCellWithIdentifier:ManagerID forIndexPath:indexPath];
        managerCell.title.text = manager.name;
        managerCell.levelView.level = manager.level;
        return managerCell;
    }
    else if([staff isMemberOfClass:[SeniorManager class]])
    {
        SeniorManager *seniormanager  = (SeniorManager*)staff;
        SeniorManagerCell *seniormanagercell = (SeniorManagerCell*)[self.tableView dequeueReusableCellWithIdentifier:SeniorManagerID forIndexPath:indexPath];
        seniormanagercell.titleLabel.text = seniormanager.name;
        seniormanagercell.companyLabel.text = seniormanager.company;
        seniormanagercell.level.level = seniormanager.level;
        return seniormanagercell;
    }else if ([staff isMemberOfClass:[NewHire class]]) {
        NewHire *newHire = (NewHire*) staff;
        NewHireCell* newHireCell = (NewHireCell*)[self.tableView dequeueReusableCellWithIdentifier:NewHireID forIndexPath:indexPath];
        newHireCell.title.text = newHire.name;
        //newHireCell.inProbation.selected = newHire.inProbation;
        [newHireCell.inProbation setOn:newHire.inProbation];
        return newHireCell;
    }
    else if([staff isMemberOfClass:[Internship class]])
    {
        Internship *intership = (Internship*)staff;
        InternshipCell *intershipcell = (InternshipCell*)[self.tableView dequeueReusableCellWithIdentifier:InternshipID forIndexPath:indexPath];
        intershipcell.titleLabel.text = intership.name;
        intershipcell.schooleLabel.text = intership.school;
        return  intershipcell;
    }else {
        cell = [self.tableView dequeueReusableCellWithIdentifier:StaffID forIndexPath:indexPath];
        cell.textLabel.text = staff.name;
        cell.detailTextLabel.text = @"Staff";
    }
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
