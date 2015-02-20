//
//  RHViewController.m
//  RosePerksTest
//
//  Created by HUANG ZIYANG on 3/20/14.
//  Copyright (c) 2014 Rose-Hulman. All rights reserved.
//

#import "RHViewController.h"

@interface RHViewController ()

@end

@implementation RHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)GoogleMapButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.google.com/maps/d/viewer?mid=zdyo3q75qKzI.kj-j0aR-b6nU"]];
    
}

- (IBAction)PerksListButton:(id)sender {
    RHCategory *obj = [RHCategory getInstance];
    obj.currentCategory = @"";
    
}
@end
