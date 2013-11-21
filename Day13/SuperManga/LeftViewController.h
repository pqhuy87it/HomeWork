//
//  LeftViewController.h
//  SuperManga
//
//  Created by Pham Quang Huy on 11/10/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Manga;
#import "MangaSelected.h"
@interface LeftViewController : UITableViewController
@property (nonatomic,strong) NSMutableArray *manga;
@property (nonatomic, assign) id<MangaSelected> delegate;

@end
