//
//  ViewController.h
//  Caculator
//
//  Created by Huy on 10/14/13.
//  Copyright (c) 2013 Huy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CaculatorObjC.h"
#include "CaculatorC.h"

@interface ViewController : UIViewController
{
    int num1_objc;
    int num2_objc;
    CaculatorObjC *cal_objc;
}

@end
