//
//  ViewController3.m
//  SuperManga
//
//  Created by Pham Quang Huy on 11/13/13.
//  Copyright (c) 2013 Pham Quang Huy. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()
@property (strong, nonatomic) IBOutlet UIView *viewManga;
@property (nonatomic, strong) UIScrollView *myScrollView;
@end

@implementation ViewController3

- (void)viewDidLoad
{
    [super viewDidLoad];
    _manga = [NSMutableArray array];
    [self loadUiscrollView];
    //NSLog(@"Manga is %@ chapter is %@",self.mangaName,self.chapterName);
}

-(void)loadUiscrollView
{
    //NSLog(@"Manga is %@ chapter is %@",self.mangaName,self.chapterName);
    if ([self.mangaName isEqualToString:@"Naruto"]) {
        if ([self.chapterName isEqualToString:@"Chapter 637"]) {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];
        }
        else if ([self.chapterName isEqualToString:@"Chapter 638"]) {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];        }
        else if ([self.chapterName isEqualToString:@"Chapter 639"]) {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];
        }
        else if ([self.chapterName isEqualToString:@"Chapter 640"]) {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];
        }
        else if ([self.chapterName isEqualToString:@"Chapter 641"]) {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];
        }
        else if ([self.chapterName isEqualToString:@"Chapter 642"]) {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];
        }
        else if ([self.chapterName isEqualToString:@"Chapter 643"]) {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];
        }
    }
    else if([self.mangaName isEqualToString:@"HunterX"])
    {
        if ([self.chapterName isEqualToString:@"Chapter 340"])
        {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];
        }
        else if ([self.chapterName isEqualToString:@"Chapter 341"])
        {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];
        }
        else if ([self.chapterName isEqualToString:@"Chapter 342"])
        {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];
        }
        else if ([self.chapterName isEqualToString:@"Chapter 343"])
        {
            [_manga removeAllObjects];
            [_manga addObjectsFromArray:@[@"N_637_1.png",@"N_637_2.png",@"N_637_3.png",@"N_637_4.png",
                                          @"N_637_5.png",@"N_637_6.png",@"N_637_7.png",@"N_637_8.png",
                                          @"N_637_9.png",@"N_637_10.png",@"N_637_11.png",@"N_637_12.png",
                                          @"N_637_13.png",@"N_637_14.png",@"N_637_15.png",@"N_637_16.png"]];
        }
    }
    CGRect scrollViewRect = self.viewManga.bounds;
    self.myScrollView = [[UIScrollView alloc] initWithFrame:scrollViewRect];
    CGRect imageViewRect = self.viewManga.bounds;
    self.myScrollView.pagingEnabled = YES;
    self.myScrollView.contentSize = CGSizeMake(scrollViewRect.size.width * [_manga count],
                                               scrollViewRect.size.height);
    [self.viewManga addSubview:self.myScrollView];
    
    for (int i = 0; i< [_manga count]; i++) {
        //NSLog(@"%@",[_manga objectAtIndex:i]);
        UIImage *iPhone = [UIImage imageNamed:[_manga objectAtIndex:i]];
        UIScrollView *ImageView = [self newScrollImageViewWithImage:iPhone
                                                                    frame:imageViewRect];
        [self.myScrollView addSubview:ImageView];
        
        /* Go to next page by moving the x position of the next image view */
        imageViewRect.origin.x += imageViewRect.size.width;
    }
}

-(UIScrollView *) newScrollImageViewWithImage:(UIImage *)paramImage
                                        frame:(CGRect)paramFrame{
    
    UIScrollView *subScrollView = [[UIScrollView alloc] initWithFrame:paramFrame];
    
    subScrollView.minimumZoomScale = 0.25f;
    subScrollView.maximumZoomScale = 4.0f;
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.viewManga.bounds];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = paramImage;
    [subScrollView addSubview:imageView];
    subScrollView.delegate = self;
    return subScrollView;
    
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    UIImageView* zoomImage = [scrollView.subviews objectAtIndex:0];
    return zoomImage;
}

- (IBAction)back:(id)sender
{
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
