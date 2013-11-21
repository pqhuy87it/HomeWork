//
//  MangaSelected.h
//  SuperManga
//
//  Created by Pham Quang Huy on 11/10/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Manga;
@protocol MangaSelected <NSObject>

@required
-(void)selectedManga:(Manga*)newManga;
@end
