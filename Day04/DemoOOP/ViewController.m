//
//  ViewController.m
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "ViewController.h"
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

@interface ViewController ()

//Cow
@property (weak, nonatomic) IBOutlet UILabel *lb_cow;
@property (weak, nonatomic) IBOutlet UITextField *txt_cow;
@property (weak, nonatomic) IBOutlet UIImageView *img_cow;
//pig
@property (weak, nonatomic) IBOutlet UILabel *lb_pig;
@property (weak, nonatomic) IBOutlet UITextField *txt_pig;
@property (weak, nonatomic) IBOutlet UIImageView *img_pig;
//Sheep
@property (weak, nonatomic) IBOutlet UILabel *lb_sheep;
@property (weak, nonatomic) IBOutlet UITextField *txt_sheep;
@property (weak, nonatomic) IBOutlet UIImageView *img_sheep;
//Whale
@property (weak, nonatomic) IBOutlet UILabel *lb_whale;
@property (weak, nonatomic) IBOutlet UITextField *txt_whale;
@property (weak, nonatomic) IBOutlet UIImageView *img_whale;
//Delphi
@property (weak, nonatomic) IBOutlet UILabel *lb_delphi;
@property (weak, nonatomic) IBOutlet UITextField *txt_delphi;
@property (weak, nonatomic) IBOutlet UIImageView *img_delphi;
//Spernwhale
@property (weak, nonatomic) IBOutlet UILabel *lb_swhale;
@property (weak, nonatomic) IBOutlet UITextField *txt_swhale;
@property (weak, nonatomic) IBOutlet UIImageView *img_swhale;
//Tiger
@property (weak, nonatomic) IBOutlet UILabel *lb_tiger;
@property (weak, nonatomic) IBOutlet UITextField *txt_tiger;
@property (weak, nonatomic) IBOutlet UIImageView *img_tiger;
//Puma
@property (weak, nonatomic) IBOutlet UILabel *lb_puma;
@property (weak, nonatomic) IBOutlet UITextField *txt_puma;
@property (weak, nonatomic) IBOutlet UIImageView *img_puma;
//Lion
@property (weak, nonatomic) IBOutlet UILabel *lb_lion;
@property (weak, nonatomic) IBOutlet UITextField *txt_lion;
@property (weak, nonatomic) IBOutlet UIImageView *img_lion;
//coin
@property (weak, nonatomic) IBOutlet UITextField *txt_coin;
@property (weak, nonatomic) IBOutlet UIButton *buyCoin;
@property (weak, nonatomic) IBOutlet UITextField *txt_thongbao;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Khoi tao GameManager o day, bo sung cac scene, khi khoi tao
    _scene1 = [[Scene alloc]init];
    _scene2 = [[Scene alloc]init];
    [self initAnimal];
    [self initComponent];
    _gamemanager = [[GameManager alloc]initWithCoint:10000];
    self.txt_coin.text = [NSString stringWithFormat:@"%i", _gamemanager.coinStarting];
    _gamemanager.coinAmouns = _gamemanager.coinStarting;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) initAnimal
{
    tiger = [[Tiger alloc]initWithName:@"Tiger"];
    tiger.origin = @"Siberian, Russian";
    tiger->_appear = NO;
    tiger->_price = 15000;
    
    _puma = [[Puma alloc]initWithName:@"Puma"];
    _puma.origin = @"puma";
    _puma->_appear = NO;
    _puma->_price = 10000;
    
    _lion = [[Lion alloc]initWithName:@"Lion"];
    _lion.origin = @"lion";
    _lion->_appear = NO;
    _lion->_price = 20000;
    
    _cow = [[Cow alloc]initWithName:@"Cow"];
    _cow.origin = @"cow";
    _cow->_appear = NO;
    
    _pig = [[Pig alloc]initWithName:@"Pig"];
    _pig.origin = @"Pig";
    _pig->_appear = NO;
    
    _sheep = [[Sheep alloc]initWithName:@"Sheep"];
    _sheep.origin = @"Sheep";
    _sheep->_appear=NO;
    
    _whale = [[Whale alloc]initWithName:@"Whale"];
    _whale.origin = @"whale";
    _whale->_appear = NO;
    
    _del = [[Delphinapterus alloc]initWithName:@"Delphinapterus"];
    _del.origin = @"Delphinapterus";
    _del->_appear = NO;
    
    _swhale = [[spermwhale alloc]initWithName:@"sperwhale"];
    _swhale.origin = @"sperwhale";
    _whale->_appear = NO;
    
}

-(void) initComponent
{
    //an cow
    if (!_cow->_appear)
    {
        self.lb_cow.hidden = YES;
        self.txt_cow.hidden = YES;
        self.img_cow.hidden = YES;
    }
    else
    {
        self.lb_cow.hidden = NO;
        self.txt_cow.hidden = NO;
        self.img_cow.hidden = NO;
    }
    //an pig
    if(!_pig->_appear)
    {
        self.lb_pig.hidden = YES;
        self.txt_pig.hidden = YES;
        self.img_pig.hidden = YES;
    }
    else
    {
        self.lb_pig.hidden = NO;
        self.txt_pig.hidden = NO;
        self.img_pig.hidden = NO;
    }
    //an sheep
    if(!_sheep->_appear)
    {
        self.lb_sheep.hidden = YES;
        self.txt_sheep.hidden = YES;
        self.img_sheep.hidden = YES;
    }
    else
    {
        self.lb_sheep.hidden = NO;
        self.txt_sheep.hidden = NO;
        self.img_sheep.hidden = NO;
    }
    //an whale
    if(!_whale->_appear)
    {
        self.lb_whale.hidden = YES;
        self.txt_whale.hidden = YES;
        self.img_whale.hidden = YES;
    }
    else
    {
        self.lb_whale.hidden = NO;
        self.txt_whale.hidden = NO;
        self.img_whale.hidden = NO;
    }
    //an delphi
    if(!_del->_appear)
    {
        self.lb_delphi.hidden = YES;
        self.txt_delphi.hidden = YES;
        self.img_delphi.hidden = YES;
    }
    else
    {
        self.lb_delphi.hidden = NO;
        self.txt_delphi.hidden = NO;
        self.img_delphi.hidden = NO;
    }
    //an swhale
    if(!_swhale->_appear)
    {
        self.lb_swhale.hidden = YES;
        self.txt_swhale.hidden = YES;
        self.img_swhale.hidden = YES;
    }
    else
    {
        self.lb_swhale.hidden = NO;
        self.txt_swhale.hidden = NO;
        self.img_swhale.hidden = NO;
    }
    //an tiger
    if(!tiger->_appear)
    {
        self.lb_tiger.hidden = YES;
        self.txt_tiger.hidden = YES;
        self.img_tiger.hidden = YES;
    }
    else
    {
        self.lb_tiger.hidden = NO;
        self.txt_tiger.hidden = NO;
        self.img_tiger.hidden = NO;
    }
    //an puma
    if(!_puma->_appear)
    {
        self.lb_puma.hidden = YES;
        self.txt_puma.hidden = YES;
        self.img_puma.hidden = YES;
    }
    else
    {
        self.lb_puma.hidden = NO;
        self.txt_puma.hidden = NO;
        self.img_puma.hidden = NO;
    }
    //an lion
    if(!_lion->_appear)
    {
        self.lb_lion.hidden = YES;
        self.txt_lion.hidden = YES;
        self.img_lion.hidden = YES;
    }
    else
    {
        self.lb_lion.hidden = NO;
        self.txt_lion.hidden = NO;
        self.img_lion.hidden = NO;
    }
}

-(void)sound
{
    for(Animal	* _animal in _scene1.animal)
    {
        if([_animal.name  isEqual: @"Cow"])
        {
            self.txt_cow.text = @"Um boo";
        }
        
        if([_animal.name  isEqual: @"Pig"])
        {
            self.txt_pig.text = @"Ut ut";
        }
        
        if([_animal.name  isEqual: @"Sheep"])
        {
            self.txt_sheep.text = @"Be be";
        }
        
        if([_animal.name  isEqual: @"Whale"])
        {
            self.txt_whale.text = @"Phiiii";
        }
        
        if([_animal.name  isEqual: @"Delphinapterus"])
        {
            self.txt_delphi.text = @"phoooo";
        }
        
        if([_animal.name  isEqual: @"sperwhale"])
        {
            self.txt_swhale.text = @"Phuuuuuu";
        }
        
        if([_animal.name  isEqual: @"Tiger"])
        {
            self.txt_tiger.text = @"Graow";
        }
        
        if([_animal.name  isEqual: @"Puma"])
        {
            self.txt_puma.text = @"Gruuu";
        }
        
        if([_animal.name  isEqual: @"Lion"])
        {
            self.txt_lion.text = @"Gram";
        }
    }
    
    
    for(Animal	* _animal in _scene2.animal)
    {
        if([_animal.name  isEqual: @"Cow"])
        {
            self.txt_cow.text = @"Um boo";
        }
        
        if([_animal.name  isEqual: @"Pig"])
        {
            self.txt_pig.text = @"Ut ut";
        }
        
        if([_animal.name  isEqual: @"Sheep"])
        {
            self.txt_sheep.text = @"Be be";
        }
        
        if([_animal.name  isEqual: @"Whale"])
        {
            self.txt_whale.text = @"Phiiii";
        }
        
        if([_animal.name  isEqual: @"Delphinapterus"])
        {
            self.txt_delphi.text = @"phoooo";
        }
        
        if([_animal.name  isEqual: @"sperwhale"])
        {
            self.txt_swhale.text = @"Phuuuuuu";
        }
        
        if([_animal.name  isEqual: @"Tiger"])
        {
            self.txt_tiger.text = @"Graow";
        }
        
        if([_animal.name  isEqual: @"Puma"])
        {
            self.txt_puma.text = @"Gruuu";
        }
        
        if([_animal.name  isEqual: @"Lion"])
        {
            self.txt_lion.text = @"Gram";
        }
    }
}

-(void) update_coin
{
    self.txt_coin.text = [NSString stringWithFormat:@"%i", _gamemanager.coinAmouns];
}

- (IBAction)tabOnSence1:(id)sender
{
    //khoi tao lai
    _cow->_appear = YES;
    _pig->_appear = YES;
    _sheep->_appear = YES;
    _whale->_appear = NO;
    _del->_appear = NO;
    _swhale->_appear=NO;
    self.txt_thongbao.text = @"";
    [self initComponent];
    [_scene1.animal addObject:_cow];
    [_scene1.animal addObject:_pig];
    [_scene1.animal addObject:_sheep];
    [self sound];
}

- (IBAction)tabOnSence2:(id)sender
{
    _cow->_appear = NO;
    _pig->_appear = NO;
    _sheep->_appear = NO;
    _whale->_appear = YES;
    _del->_appear = YES;
    _swhale->_appear=YES;
    self.txt_thongbao.text = @"";
    [self initComponent];
    [_scene2.animal addObject:_whale];
    [_scene2.animal addObject:_del];
    [_scene2.animal addObject:_swhale];
    [self sound];
}

- (IBAction)tigerBuy:(id)sender
{
    
    if (_gamemanager.coinAmouns >= tiger->_price)
    {
        self.txt_thongbao.text = @"";
        _gamemanager.coinAmouns = _gamemanager.coinAmouns - tiger->_price;
        [self update_coin];
        tiger->_appear = YES;
        [_scene1.animal addObject:tiger];
        [_scene2.animal addObject:tiger];
        self.txt_tiger.hidden = NO;
        self.img_tiger.hidden = NO;
    }
    else
    {
        self.txt_thongbao.text  =@"Ban khong du coin de thu hien thao tat nay, vui long nap them coin";
    }
}

- (IBAction)pumaBuy:(id)sender
{
    if (_gamemanager.coinAmouns >= _puma->_price)
    {
        self.txt_thongbao.text = @"";
        _gamemanager.coinAmouns = _gamemanager.coinAmouns - _puma->_price;
        [self update_coin];
        _puma->_appear = YES;
        [_scene1.animal addObject:_puma];
        [_scene2.animal addObject:_puma];
        self.txt_puma.hidden = NO;
        self.img_puma.hidden = NO;
    }
    else
    {
        self.txt_thongbao.text  =@"Ban khong du coin de thu hien thao tat nay, vui long nap them coin";
    }
}

- (IBAction)lionBuy:(id)sender
{
    if (_gamemanager.coinAmouns >= _lion->_price)
    {
        self.txt_thongbao.text = @"";
        _gamemanager.coinAmouns = _gamemanager.coinAmouns - _lion->_price;
        [self update_coin];
        _lion->_appear = YES;
        [_scene1.animal addObject:_lion];
        [_scene2.animal addObject:_lion];
        self.txt_lion.hidden = NO;
        self.img_lion.hidden = NO;
    }
    else
    {
        self.txt_thongbao.text  =@"Ban khong du coin de thu hien thao tat nay, vui long nap them coin";
    }
}

- (IBAction)buyCoin:(id)sender {
    self.txt_thongbao.text = @"";
    _gamemanager.coinAmouns = _gamemanager.coinAmouns + 10000;
    [self update_coin];
}

@end
