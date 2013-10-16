//
//  Line.cpp
//  Drawing
//
//  Created by Huy on 10/16/13.
//  Copyright (c) 2013 Huy. All rights reserved.
//

#include "Line.h"
#include <stdio.h>

void inramanhinh()
{
    int i,j,
    ctgc,dtgc,t;
    printf("\n");
    ctgc=7; dtgc=ctgc*2-1; t=ctgc-1;
    for(i=0;i<ctgc;i++)
    {
        for(j=0;j<dtgc;j++)
        {
            if(j==t||j==dtgc-t-1)
                printf("*");
            else
                printf(" ");
        }
        
        for(j=0;j<dtgc;j++)
        {
            if(j==t||j==dtgc-t-1)
                printf("*");
            else
                printf(" ");
        }
        
        for(j=0;j<dtgc;j++)
        {
            if(j==t||j==dtgc-t-1)
                printf("*");
            else
                printf(" ");
        }
        printf("\n");
        
        t--;
    }
    
}