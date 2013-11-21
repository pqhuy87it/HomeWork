//
//  LeftViewController.m
//  SuperManga
//
//  Created by Pham Quang Huy on 11/10/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import "LeftViewController.h"
#import "Manga.h"
@interface LeftViewController ()

@end

@implementation LeftViewController

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder])
    {
        _manga = [NSMutableArray array];
        [_manga addObject:[Manga newMangawithName:@"Naruto" addAuthur:@"Masashi Kishimoto" addDescription:Naruto addImage:NarutorImage]];
        [_manga addObject:[Manga newMangawithName:@"HunterX" addAuthur:@"Yoshihiro Togashi" addDescription:HunterX addImage:HunterXImage]];
        [_manga addObject:[Manga newMangawithName:@"Phong Vân" addAuthur:@"Mã Vĩnh Thành" addDescription:Phong_Van addImage:Phong_VanI]];
        [_manga addObject:[Manga newMangawithName:@"One Piece" addAuthur:@"Oda Eiichiro" addDescription:onepiece addImage:onepieceI]];
        [_manga addObject:[Manga newMangawithName:@"Gintama" addAuthur:@"Hideaki Sorachi" addDescription:Gintama addImage:GintamaI]];
        [_manga addObject:[Manga newMangawithName:@"Nurarihyon no Mago" addAuthur:@"Shiibashi Hiroshi" addDescription:hoangtu addImage:hoangtuI]];
        [_manga addObject:[Manga newMangawithName:@"Kateikyoushi Hitman Reborn" addAuthur:@"Amano Akira" addDescription:Hitman addImage:HitmanI]];
        [_manga addObject:[Manga newMangawithName:@"Hiệp Khách Giang Hồ" addAuthur:@"JEON Geuk-jin, Yang Jae Hyun" addDescription:Hiep_khach_giang_ho addImage:Hiep_khach_giang_hoI]];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_manga count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    Manga *manga = _manga[indexPath.row];
    cell.textLabel.text = manga.nameManga;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Manga *selectedMonster = [_manga objectAtIndex:indexPath.row];
    if (_delegate) {
        [_delegate selectedManga:selectedMonster];
    }
}

@end
