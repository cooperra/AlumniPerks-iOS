//
//  RHCategoryViewController.m
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 5/4/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "RHCategoryViewController.h"
#import "RHCategory.h"

@interface RHCategoryViewController ()

@end

@implementation RHCategoryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)HotelButton:(UIButton *)sender {
    RHCategory *Hotelobj = [RHCategory getInstance];
    Hotelobj.currentCategory = @"hotel";
    
}
@end
