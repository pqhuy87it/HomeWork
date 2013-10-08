//
//  Canivora.h
//  DemoOOP
//
//  Created by iOS18 on 10/4/13.
//  Copyright (c) 2013 iOS18. All rights reserved.
//

#import "Animal.h"
#import "Sounding.h"
@interface Canivora : Animal<Sounding>
{
    @private
    NSString *_secretNumber;
}
@end
