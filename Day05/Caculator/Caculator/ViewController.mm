//
//  ViewController.m
//  Caculator
//
//  Created by Huy on 10/14/13.
//  Copyright (c) 2013 Huy. All rights reserved.
//

#import "ViewController.h"
#import "CaculatorObjC.h"
#include "CaculatorC.h"
#include <test.h>
#include "test.h"
#import "test.h"
#import <test.h>
#include <test.cpp>
#include "test.cpp"
#import "test.cpp"
#import <test.cpp>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txt_resultObjC;
@property (weak, nonatomic) IBOutlet UITextField *txt_num2ObjC;
@property (weak, nonatomic) IBOutlet UITextField *txt_num1ObjC;
@property (weak, nonatomic) IBOutlet UITextField *txt_resultC;
@property (weak, nonatomic) IBOutlet UITextField *txt_num1C;
@property (weak, nonatomic) IBOutlet UITextField *txt_num2C;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    num1_objc = [self.txt_num1ObjC.text intValue];
    num2_objc = [self.txt_num2ObjC.text intValue];
    cal_objc =  [[CaculatorObjC alloc]init];
    
}

-(BOOL) check_input{
    if(![self.txt_num1ObjC.text length] || ![self.txt_num2ObjC.text length]){
        return NO;
    }
    return YES;
}

-(BOOL) check_div{
    if([self.txt_num2ObjC.text intValue] ==0){
        return NO;
    }
    return YES;
}
-(BOOL) check_input1{
    if(![self.txt_num1ObjC.text length]){
        return NO;
    }
    return YES;
}



-(BOOL) check_inputC{
    if(![self.txt_num1C.text length] || ![self.txt_num2C.text length]){
        return NO;
    }
    return YES;
}

-(BOOL) check_divC{
    if([self.txt_num2C.text intValue] ==0){
        return NO;
    }
    return YES;
}
-(BOOL) check_input1C{
    if(![self.txt_num1C.text length]){
        return NO;
    }
    return YES;
}

- (IBAction)congTabOn:(id)sender {
    if ([self check_inputC]) {
        num1_objc = [self.txt_num1C.text intValue];
        num2_objc = [self.txt_num2C.text intValue];
        self.txt_resultC.text = [NSString stringWithFormat:@"%i", cong2so(num1_objc,num2_objc)];
    }
    else
    {
        self.txt_resultC.text = @"Ban chua nhap du so";
    }
}


- (IBAction)powObjCTabOn:(id)sender {
    if ([self check_input1]) {
        num1_objc = [self.txt_num1ObjC.text intValue];
       self.txt_resultObjC.text = [NSString stringWithFormat:@"%i", [cal_objc binhphuong:num1_objc]];
    }
    else
    {
        self.txt_resultObjC.text = @"Ban chua nhap so";
    }
}

- (IBAction)sqrtObjCTabOn:(id)sender {
    if ([self check_input1]) {
        num1_objc = [self.txt_num1ObjC.text intValue];
        self.txt_resultObjC.text = [NSString stringWithFormat:@"%f", [cal_objc khaican:num1_objc]];
    }
    else
    {
        self.txt_resultObjC.text = @"Ban chua nhap so";
    }
}

- (IBAction)addObjCTabOn:(id)sender {
    if ([self check_input]) {
        num1_objc = [self.txt_num1ObjC.text intValue];
        num2_objc = [self.txt_num2ObjC.text intValue];
        self.txt_resultObjC.text = [NSString stringWithFormat:@"%i", [cal_objc cong2so:num1_objc addb:num2_objc]];
    }
    else
    {
        self.txt_resultObjC.text = @"Ban chua nhap du so";
    }
}

- (IBAction)mulObjCTabOn:(id)sender {
    if ([self check_input]) {
        num1_objc = [self.txt_num1ObjC.text intValue];
        num2_objc = [self.txt_num2ObjC.text intValue];
        self.txt_resultObjC.text = [NSString stringWithFormat:@"%i", [cal_objc tru2so:num1_objc addb:num2_objc]];
    }
    else
    {
        self.txt_resultObjC.text = @"Ban chua nhap du so";
    }
}

- (IBAction)subObjCTabOn:(id)sender {
    if ([self check_input]) {
        num1_objc = [self.txt_num1ObjC.text intValue];
        num2_objc = [self.txt_num2ObjC.text intValue];
        self.txt_resultObjC.text = [NSString stringWithFormat:@"%i", [cal_objc nhan2so:num1_objc addb:num2_objc]];
    }
    else
    {
        self.txt_resultObjC.text = @"Ban chua nhap du so";
    }
}

- (IBAction)dibObjCTabOn:(id)sender {
    if ([self check_input]) {
        if ([self check_div]) {
            num1_objc = [self.txt_num1ObjC.text floatValue];
            num2_objc = [self.txt_num2ObjC.text floatValue];
            float x = [cal_objc chia2so:num1_objc addb:num2_objc];
            self.txt_resultObjC.text = [NSString stringWithFormat:@"%f",x ];
        }
        else
        {
            self.txt_resultObjC.text = @"Loi chia cho 0";
        }
    }
    else
    {
        self.txt_resultObjC.text = @"Ban chua nhap du so";
    }
}

- (IBAction)tabOnPowC:(id)sender {
    if ([self check_input1C]) {
        num1_objc = [self.txt_num1C.text intValue];
        self.txt_resultC.text = [NSString stringWithFormat:@"%i", binhphuong(num1_objc)];
    }
    else
    {
        self.txt_resultC.text = @"Ban chua nhap so";
    }
}

- (IBAction)tabOnDivC:(id)sender {
    if ([self check_inputC]) {
        if ([self check_divC]) {
            num1_objc = [self.txt_num1C.text floatValue];
            num2_objc = [self.txt_num2C.text floatValue];
            float x = chia2so(num1_objc,num2_objc);
            self.txt_resultC.text = [NSString stringWithFormat:@"%f",x ];
        }
        else
        {
            self.txt_resultC.text = @"Loi chia cho 0";
        }
    }
    else
    {
        self.txt_resultC.text = @"Ban chua nhap du so";
    }
}

- (IBAction)tabOnSubC:(id)sender {
    if ([self check_inputC]) {
        num1_objc = [self.txt_num1C.text intValue];
        num2_objc = [self.txt_num2C.text intValue];
        self.txt_resultC.text = [NSString stringWithFormat:@"%i", nhan2so(num1_objc ,num2_objc)];
    }
    else
    {
        self.txt_resultC.text = @"Ban chua nhap du so";
    }
}

- (IBAction)tabOnMulC:(id)sender {
    if ([self check_inputC]) {
        num1_objc = [self.txt_num1C.text intValue];
        num2_objc = [self.txt_num2C.text intValue];
        self.txt_resultC.text = [NSString stringWithFormat:@"%i", tru2so(num1_objc,num2_objc)];
    }
    else
    {
        self.txt_resultC.text = @"Ban chua nhap du so";
    }
}

- (IBAction)tabOnSqrt:(id)sender {
    if ([self check_input1C]) {
        num1_objc = [self.txt_num1C.text floatValue];
        self.txt_resultC.text = [NSString stringWithFormat:@"%f", khaican(num1_objc)];
    }
    else
    {
        self.txt_resultObjC.text = @"Ban chua nhap so";
    }
}

@end
