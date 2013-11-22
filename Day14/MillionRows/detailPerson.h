//
//  detailPerson.h
//  MillionRows
//
//  Created by Pham Quang Huy on 11/22/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface detailPerson : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *person;
@end
