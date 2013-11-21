//
//  RightViewController.m
//  SuperManga
//
//  Created by Pham Quang Huy on 11/10/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import "RightViewController.h"
#import "Manga.h"
#import "Cheapter.h"
#import "ViewController3.h"
@implementation RightViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
     _cheapter = [NSMutableArray array];
    [self refreshUI];
    self.chapterMangas.dataSource = self;
    self.chapterMangas.delegate = self;
}

-(void)setManga:(Manga *)manga
{
    if (_manga != manga) {
        _manga = manga;
        [self refreshUI];
    }
}

-(void)addNarutoChapter
{
    [_cheapter removeAllObjects];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 637"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 638"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 639"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 640"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 641"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 642"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 643"]];
}

-(void)addHunterXChapter
{
    [_cheapter removeAllObjects];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 340"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 341"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 342"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 343"]];
}

-(void)addPhongvan
{
    [_cheapter removeAllObjects];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 1"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 2"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 3"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 4"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 5"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 6"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 7"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 8"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 9"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 10"]];

}

-(void)addOnepiece
{
    [_cheapter removeAllObjects];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 11"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 12"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 13"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 14"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 15"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 16"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 17"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 18"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 19"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 20"]];
}

-(void)addGintama
{
    [_cheapter removeAllObjects];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 21"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 22"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 23"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 24"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 25"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 26"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 27"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 28"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 29"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 30"]];
}

-(void)addNurarihyo
{
    [_cheapter removeAllObjects];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 31"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 32"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 33"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 34"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 35"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 36"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 37"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 38"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 39"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 40"]];
}

-(void)addKateikyoushi
{
    [_cheapter removeAllObjects];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 41"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 42"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 43"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 44"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 45"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 46"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 47"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 48"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 49"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 50"]];
}

-(void)addHiepkhach
{
    [_cheapter removeAllObjects];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 51"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 52"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 53"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 54"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 55"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 56"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 57"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 58"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 59"]];
    [_cheapter addObject:[Cheapter NewCheapWithName:@"Chapter 60"]];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_cheapter count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    Cheapter *chapter = _cheapter[indexPath.row];
    cell.textLabel.text = chapter.cheapName;
    return cell;
}

-(void)refreshUI
{
    self.namMangas.text = _manga.nameManga;
    self.authurMangas.text = _manga.authurManga;
    self.disMangas.text = [_manga MangaDescription];
    self.imageMangas.image = [_manga MangaImage];
    if ([_manga.nameManga isEqualToString:@"Naruto"]) {
        [self addNarutoChapter];
        [self.chapterMangas reloadData];
    }
    else if([_manga.nameManga isEqualToString:@"HunterX"])
    {
        [self addHunterXChapter];
        [self.chapterMangas reloadData];
    }
    else if([_manga.nameManga isEqualToString:@"Phong Vân"])
    {
        [self addPhongvan];
        [self.chapterMangas reloadData];
    }
    else if([_manga.nameManga isEqualToString:@"One Piece"])
    {
        [self addOnepiece];
        [self.chapterMangas reloadData];
    }
    else if([_manga.nameManga isEqualToString:@"Gintama"])
    {
        [self addGintama];
        [self.chapterMangas reloadData];
    }
    else if([_manga.nameManga isEqualToString:@"Nurarihyon no Mago"])
    {
        [self addNurarihyo];
        [self.chapterMangas reloadData];
    }
    else if([_manga.nameManga isEqualToString:@"Kateikyoushi Hitman Reborn"])
    {
        [self addKateikyoushi];
        [self.chapterMangas reloadData];
    }
    else if([_manga.nameManga isEqualToString:@"Hiệp Khách Giang Hồ"])
    {
        [self addHiepkhach];
        [self.chapterMangas reloadData];
    }
}

-(void)selectedManga:(Manga *)newManga
{
    [self setManga:newManga];
    if (_popover != nil) {
        [_popover dismissPopoverAnimated:YES];
    }
}

-(void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    self.popover = pc;
    barButtonItem.title = @"Manga";
    [_button setLeftBarButtonItem:barButtonItem animated:YES];
}

-(void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    [_button setLeftBarButtonItem:barButtonItem animated:YES];
    _popover = Nil;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    ViewController3 *viewcontroller3 = [[ViewController3 alloc] initWithNibName:@"ViewController3" bundle:nil];
    viewcontroller3.mangaName = _manga.nameManga;
    viewcontroller3.chapterName = cell.textLabel.text;
    [self presentViewController:viewcontroller3 animated:YES completion:^{
        
    }];
    
}
@end
