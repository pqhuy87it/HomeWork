//
//  ManagerCell.h
//  MillionRows
//
//  Created by TechMaster on 11/24/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LevelView.h"
@interface ManagerCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet LevelView *levelView;
@end
