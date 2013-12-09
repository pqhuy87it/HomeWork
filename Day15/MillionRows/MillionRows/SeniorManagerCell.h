//
//  SeniorManagerCell.h
//  MillionRows
//
//  Created by pham quang huy on 12/9/13.
//  Copyright (c) 2013 Techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LevelView.h"
@interface SeniorManagerCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *companyLabel;
@property (weak, nonatomic) IBOutlet LevelView *level;

@end
