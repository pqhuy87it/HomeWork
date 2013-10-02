//
//  ViewController.m
//  GiaiPTbac2
//
//  Created by Huy on 10/1/13.
//  Copyright (c) 2013 Huy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txt_numa;
@property (weak, nonatomic) IBOutlet UITextField *txt_numb;
@property (weak, nonatomic) IBOutlet UITextField *txt_numc;
@property (weak, nonatomic) IBOutlet UIButton *btn_giai;
@property (weak, nonatomic) IBOutlet UIButton *btn_xoa;
@property (weak, nonatomic) IBOutlet UITextField *txt_ketqua;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)editingEnded:(id)sender {
    [sender resignFirstResponder];
}

-(BOOL) check_input{
    if(![self.txt_numa.text length] || ![self.txt_numb.text length] ||![self.txt_numc.text length]){
        return NO;
    }
    return YES;
}

-(void)giai_phuong_trinh{
    float delta;
    float a = [self.txt_numa.text floatValue];
    float b = [self.txt_numb.text floatValue];
    float c = [self.txt_numc.text floatValue];
    float x,x1,x2;
    
    delta = b * b - 4 * a * c;
    
    if(delta < 0){
        @throw [[NSException alloc] initWithName:@"" reason:@"Phương trình vô nghiệm!" userInfo:nil];
    }
    
    else if (delta == 0)
    {
        x = -1 * b / ( 2 * a);
        self.txt_ketqua.text = [[NSString alloc]initWithFormat:@"x1 = x2 = %0.2f" ,x];
    }
    
    else
    {
        x1 = (b * -1 + pow(delta, 0.5)) / (2 * a);
        x2 = (b * -1 - pow(delta, 0.5)) / (2 * a);
        self.txt_ketqua.text = [[NSString alloc] initWithFormat:@"x1 =%0.2f; x2 = %0.2f",x1,x2];
    }
}

- (IBAction)giaiPTclick:(id)sender {
    if([self check_input])
    {
        @try {
            [self giai_phuong_trinh];
        }
        
        @catch (NSException *exception) {
            self.txt_ketqua.text = [[NSString alloc] initWithFormat:@"%@\n%@",exception.name,exception.reason];        }
        @finally {
            NSLog(@"Phuong trinh da giai xong!");
        }
    }
    else
    {
        self.txt_ketqua.text = @"Bạn nhập thiếu dữ liệu!";
    }
}

- (IBAction)xoaclick:(id)sender {
    self.txt_ketqua.text = nil;
    self.txt_numa.text = nil;
    self.txt_numb.text = nil;
    self.txt_numc.text = nil;
}


@end
