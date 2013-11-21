//
//  ViewController3.h
//  SuperManga
//
//  Created by Pham Quang Huy on 11/13/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController3 : UIViewController<UIScrollViewDelegate>
@property (strong,nonatomic) NSString *mangaName;
@property (strong,nonatomic) NSString *chapterName;
@property (strong,nonatomic) NSMutableArray *manga;
@end
