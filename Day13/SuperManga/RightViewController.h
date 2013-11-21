//
//  RightViewController.h
//  SuperManga
//
//  Created by Pham Quang Huy on 11/10/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//
@class Manga;
#import <UIKit/UIKit.h>
#import "MangaSelected.h"
@interface RightViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UISplitViewControllerDelegate,MangaSelected>
@property (nonatomic,strong) Manga *manga;
@property (nonatomic,weak) IBOutlet UINavigationItem *button;
@property (nonatomic,strong) UIPopoverController *popover;
@property (weak, nonatomic) IBOutlet UIImageView *imageMangas;
@property (weak, nonatomic) IBOutlet UILabel *namMangas;
@property (weak, nonatomic) IBOutlet UILabel *authurMangas;
@property (weak, nonatomic) IBOutlet UITextView *disMangas;
@property (weak, nonatomic) IBOutlet UITableView *chapterMangas;
@property (nonatomic,strong) NSMutableArray *cheapter;
@property (strong,nonatomic) NSString *mangaName;
@property (strong,nonatomic) NSString *chapterName;

@end
