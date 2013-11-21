//
//  Manga.h
//  SuperManga
//
//  Created by Pham Quang Huy on 11/10/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum{
    Naruto,
    HunterX,
    Phong_Van,
    Gintama,
    Hiep_khach_giang_ho,
    Hitman,
    onepiece,
    hoangtu,
}description;

typedef enum{
    NarutorImage,
    HunterXImage,
    Phong_VanI,
    GintamaI,
    Hiep_khach_giang_hoI,
    HitmanI,
    onepieceI,
    hoangtuI,
}ImageManga;

@interface Manga : NSObject
@property (nonatomic,strong)NSString *nameManga;
@property (nonatomic,strong)NSString *authurManga;
@property (nonatomic,assign)description descriptionManga;
@property (nonatomic,assign)ImageManga image;
+(Manga*)newMangawithName:(NSString*)name addAuthur:(NSString*)authurManga addDescription:(description)descriptionManga addImage:(ImageManga)image;
-(NSString*)MangaDescription;
-(UIImage*)MangaImage;
@end
