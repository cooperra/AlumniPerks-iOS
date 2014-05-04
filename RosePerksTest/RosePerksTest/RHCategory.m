//
//  RHCategory.m
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 5/4/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "RHCategory.h"
#import "RHCategoryViewController.h"

@implementation RHCategory
@synthesize currentCategory;

static RHCategory *instance = nil;
+(RHCategory *)getInstance
{
    @synchronized(self)
    {
        if(instance==nil)
        {
            instance=[RHCategory new];
            instance.currentCategory = @"";
        }
        
    }
    return instance;



}

@end
