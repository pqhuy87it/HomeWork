//
//  Car.cpp
//  Drawing
//
//  Created by Huy on 10/16/13.
//  Copyright (c) 2013 Huy. All rights reserved.
//

#include "Car.h"
#include <stdio.h>
void inhinhoto()
{
    for (int i=0; i <=8; i++) {
        printf(" ");
    }
    for (int i=0; i <=8; i++) {
        printf("_");
    }
    
    printf("\n");

    for (int i=0; i <=2; i++) {
        printf(" ");
    }

    for (int i=0; i <=4; i++) {
        printf("_");
    }
    printf("/");
    
    for (int i=0; i <=8; i++) {
        printf(" ");
    }
    printf("\\");
    for (int i=0; i <=5; i++) {
        printf("_");
    }
    printf("\n");
    
    for (int i=0; i <=2; i++) {
        printf(" ");
    }
    printf("||");
    
    for (int i=0; i <=18; i++) {
        printf(" ");
    }
    printf("||");
    printf("\n");
    
    for (int i=0; i <=2; i++) {
        printf(" ");
    }
    printf("||");
    
    for (int i=0; i <=4; i++) {
        printf("_");
    }
    printf("@");
    printf("@");
    
    for (int i=0; i <=6; i++) {
        printf("_");
    }
    printf("@");
    printf("@");
    for (int i=0; i <=2; i++) {
        printf("_");
    }
    printf("||");
}