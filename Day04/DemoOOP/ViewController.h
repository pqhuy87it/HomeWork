//
//  ViewController.h
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameManager.h"
#import "Scene.h"
#import "Tiger.h"
#import "Cow.h"
#import "Pig.h"
#import "Sheep.h"
#import "Whale.h"
#import "Delphinapterus.h"
#import "spermwhale.h"
#import "Puma.h"
#import "Lion.h"
#import "Animal.h"
#import "GameManager.h"
@interface ViewController : UIViewController
//@property (nonatomic,strong)
{
    GameManager *_gamemanager;
    Scene *_scene1;
    Scene *_scene2;
    Cow *_cow;
    Pig *_pig;
    Sheep *_sheep;
    Whale *_whale;
    Delphinapterus *_del;
    spermwhale *_swhale;
    Tiger *tiger;
    Puma *_puma;
    Lion *_lion;
}
@end
